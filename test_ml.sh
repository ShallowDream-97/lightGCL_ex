# python main_per.py --cuda 0 --data gowalla --temp 0.3 --lambda2 0 --dropout 0 --eps 0.1 &
# python main_per.py --cuda 1 --data gowalla --temp 0.3 --lambda2 0 --dropout 0 --eps -0.1 &
# python main_per.py --cuda 1 --data gowalla --temp 0.3 --lambda2 0 --dropout 0 --eps 0.3 &
# python main_per.py --cuda 0 --data gowalla --temp 0.3 --lambda2 0 --dropout 0 --eps -0.3 

python main.py --cuda 1 --data gowalla --temp 0.3 --lambda2 0 --dropout 0 > out_gow & 
python main.py --cuda 2 --data gowalla --temp 0.3 --lambda1 1e-6 --lambda2 0 --dropout 0 > out_gow 