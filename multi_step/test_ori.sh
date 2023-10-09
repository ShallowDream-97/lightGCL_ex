python main.py --cuda 7 --temp 0.5 --lambda2 0.0001 --dropout 0 &
python main.py --cuda 6 --data yelp &
python main.py --cuda 5 --data gowalla --lambda2 0 &
python main.py --cuda 4 --data ml10m --temp 0.5 &
python main.py --data amazon --gnn_layer 1 --lambda2 0 --temp 0.1 --cuda 4 
python main.py --data tmall --gnn_layer 1 --cuda 7
