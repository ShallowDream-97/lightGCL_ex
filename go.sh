#!/bin/bash

# Start all generated scripts in the background

./run_on_gpu_0_0.sh &
./run_on_gpu_0_1.sh &

./run_on_gpu_1_0.sh &
./run_on_gpu_1_1.sh &

./run_on_gpu_2_0.sh &
./run_on_gpu_2_1.sh &

# Wait for all background processes to finish
wait
