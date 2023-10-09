import numpy as np
import torch
import pickle
from model import LightGCL
from utils import metrics, scipy_sparse_mat_to_torch_sparse_tensor
import pandas as pd
from parser import args
from tqdm import tqdm
import time
from setproctitle import setproctitle
import os
import matplotlib.pyplot as plt
os.environ["TORCH_AUTOGRAD_SHUTDOWN_WAIT_LIMIT"] = "0"

setproctitle('EXP@Xuheng')

# hyperparameters
d = args.d
l = args.gnn_layer
temp = args.temp
batch_user = args.batch
epoch_no = args.epoch
max_samp = 40
lambda_1 = args.lambda1
lambda_2 = args.lambda2
dropout = args.dropout
lr = args.lr
svd_q = args.q

# load data
path = 'data/' + args.data + '/'
f = open(path+'trnMat.pkl','rb')
train = pickle.load(f)
#train_np = train.toarray()
train_csr = (train!=0).astype(np.float32)
f = open(path+'tstMat.pkl','rb')
test = pickle.load(f)
#test_np = test.toarray()
print('Data loaded.')


item_popularity = np.array(train.sum(axis=0)).squeeze()  # 计算每个item的出现次数

# 对items按照出现的频率进行排序，得到的索引列表
sorted_items = np.argsort(item_popularity)[::-1]
sorted_popularity = item_popularity[sorted_items]

# Plotting the distribution
plt.figure(figsize=(15, 5))
plt.bar(range(len(sorted_popularity)), sorted_popularity, color='blue')
plt.xlabel('Items (sorted by popularity)')
plt.ylabel('Popularity')
plt.title('Popularity distribution of items')
plt.tight_layout()
# Saving the image before showing it
plt.savefig("popularity_distribution.png", dpi=300)