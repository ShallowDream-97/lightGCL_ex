#!/bin/bash
# generate_scripts.sh

eps_values=(0.05 -0.05 0.1 -0.1 0.2 -0.2)
counter=0
script_id=0

# Start with GPU 0
gpu_id=0

# Create the script file for the first GPU
filename="run_on_gpu_${gpu_id}_${script_id}.sh"
echo "#!/bin/bash" > $filename
chmod +x $filename

for eps_1 in "${eps_values[@]}"
do
    for eps_2 in "${eps_values[@]}"
    do
        for eps_3 in "${eps_values[@]}"
        do
            echo "python main.py --cuda $gpu_id --temp 0.3 --lambda1 1e-5 --lambda2 1e-4 --dropout 0 --eps_1 $eps_1 --eps_2 $eps_2 --eps_3 $eps_3 > output_${eps_1}_${eps_2}_${eps_3}" >> $filename
            let "counter++"
            
            # Check if we reach 18 combinations for the current script
            if [ $counter -eq 18 ]; then
                let "counter=0"
                let "script_id++"
                
                # If script_id is 2, reset it to 0 and move to the next GPU
                if [ $script_id -eq 2 ]; then
                    let "script_id=0"
                    let "gpu_id++"
                fi
                
                # Create the script file for the next GPU
                filename="run_on_gpu_${gpu_id}_${script_id}.sh"
                echo "#!/bin/bash" > $filename
                chmod +x $filename
            fi
        done
    done
done

