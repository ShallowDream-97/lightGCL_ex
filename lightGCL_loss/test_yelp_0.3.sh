python main.py --cuda 0 --temp 0.3 --lambda1 1e-7 --lambda2 1e-5 --dropout 0 --alpha 9.2 > test_1 &
python main.py --cuda 0 --temp 0.3 --lambda1 1e-7 --lambda2 1e-5 --dropout 0 --alpha 9.4 > test_2 &
python main.py --cuda 1 --temp 0.3 --lambda1 1e-7 --lambda2 1e-5 --dropout 0 --alpha 8.5 > test_3 &
python main.py --cuda 1 --temp 0.3 --lambda1 1e-7 --lambda2 1e-5 --dropout 0 --alpha 8.6 > test_4 &
python main.py --cuda 4 --temp 0.3 --lambda1 1e-7 --lambda2 1e-5 --dropout 0 --alpha 8.8 > test_5 &
python main.py --cuda 4 --temp 0.3 --lambda1 1e-7 --lambda2 1e-5 --dropout 0 --alpha 8.9 > test_7 