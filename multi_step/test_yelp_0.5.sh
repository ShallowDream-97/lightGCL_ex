for te in 0.3
do
    for la1 in 1e-6
    do
        for la2 in 1e-4 
        do
            python main.py --cuda 0 --temp 0.3 --lambda1 $la1 --lambda2 $la2 --dropout 0 &
        done
    done
done

echo "ok"


