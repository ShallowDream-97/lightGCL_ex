python main_per.py --cuda 0 --data tmall --gnn_layer 1 --eps 0.1 &
python main_per.py --cuda 1 --data tmall --gnn_layer 1 --eps -0.1 &
python main_per.py --cuda 2 --data tmall --gnn_layer 1 --eps 0.3 &
python main_per.py --cuda 3 --data tmall --gnn_layer 1 --eps -0.3 &
python main_per.py --cuda 4 --data tmall --gnn_layer 1 --eps 0.5 &
python main_per.py --cuda 5 --data tmall --gnn_layer 1 --eps -0.5 &
python main_per.py --cuda 6 --data tmall --gnn_layer 1 --eps 0.9 &
python main_per.py --cuda 7 --data tmall --gnn_layer 1 --eps -0.9 
python main.py --cuda 0 --data tmall --gnn_layer 1 

