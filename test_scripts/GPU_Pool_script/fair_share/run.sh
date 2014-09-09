#!/bin/bash

export LD_PRELOAD=/home/dipanjans/GPU_Pool_raghav/kidron_fs/interposer/libci.so
export TIMEFORMAT="%E"

echo "BS_8192, BS_1024"
(time echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/BlackScholes_8192 0 >/dev/null 2>/dev/null) > /dev/null &
(time echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/BlackScholes_1024 0 >/dev/null 2>/dev/null) > /dev/null &

read

echo "dxtc,montecarlo"
(time echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/dxtc 0 >/dev/null 2>/dev/null) > /dev/null &
(time echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/MonteCarlo 0 >/dev/null 2>/dev/null) > /dev/null &

read

echo "histogram, transpose"
(time echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/histogram 0 >/dev/null 2>/dev/null) > /dev/null &
(time echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/transpose 0 >/dev/null 2>/dev/null) > /dev/null &

read
echo "eigenvalues, bfs"
(time echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/eigenvalues 0 >/dev/null 2>/dev/null) > /dev/null &
(time echo '\n' | /home/dipanjans/rodinia_2.0/cuda/bfs/bfs /home/dipanjans/rodinia_2.0/data/bfs/graph1MW_6.txt 0 >/dev/null 2>/dev/null) > /dev/null &

read

echo "matrixmul, gaussian"
(time echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/matrixMul 0 >/dev/null 2>/dev/null) > /dev/null &
(time echo '\n' | /home/dipanjans/rodinia_2.0/cuda/gaussian/gaussian /home/dipanjans/rodinia_2.0/data/gaussian/matrix50.txt >/dev/null 2>/dev/null) > /dev/null &

read

echo "BS_8192, montecarlo"
(time echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/BlackScholes_8192 0 >/dev/null 2>/dev/null) > /dev/null &
(time echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/MonteCarlo 0 >/dev/null 2>/dev/null) > /dev/null &

read

echo "dxtc,transpose"
(time echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/dxtc 0 >/dev/null 2>/dev/null) > /dev/null &
(time echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/transpose 0 >/dev/null 2>/dev/null) > /dev/null &
read

echo "eigenvalues, gaussian"
(time echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/eigenvalues 0 >/dev/null 2>/dev/null) > /dev/null &
(time echo '\n' | /home/dipanjans/rodinia_2.0/cuda/gaussian/gaussian /home/dipanjans/rodinia_2.0/data/gaussian/matrix50.txt >/dev/null 2>/dev/null) > /dev/null &
read

echo "matrixmul, dxtc"
(time echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/matrixMul 0 >/dev/null 2>/dev/null) > /dev/null &
(time echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/dxtc 0 >/dev/null 2>/dev/null) > /dev/null &
read

echo "histogram, BS_8192"
(time echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/histogram 0 >/dev/null 2>/dev/null) > /dev/null &
(time echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/BlackScholes_8192 0 >/dev/null 2>/dev/null) > /dev/null &
read

echo "montecarlo, transpose"
(time echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/MonteCarlo 0 >/dev/null 2>/dev/null) > /dev/null &
(time echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/transpose 0 >/dev/null 2>/dev/null) > /dev/null &
read

echo "bfs, gaussian"
(time echo '\n' | /home/dipanjans/rodinia_2.0/cuda/bfs/bfs /home/dipanjans/rodinia_2.0/data/bfs/graph1MW_6.txt 0 >/dev/null 2>/dev/null) > /dev/null &
(time echo '\n' | /home/dipanjans/rodinia_2.0/cuda/gaussian/gaussian /home/dipanjans/rodinia_2.0/data/gaussian/matrix50.txt >/dev/null 2>/dev/null) > /dev/null &
read

echo "matrixmul,transpose"
(time echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/matrixMul 0 >/dev/null 2>/dev/null) > /dev/null &
(time echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/transpose 0 >/dev/null 2>/dev/null) > /dev/null &
read

echo "dxtc, gaussian"
(time echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/dxtc 0 >/dev/null 2>/dev/null) > /dev/null &
(time echo '\n' | /home/dipanjans/rodinia_2.0/cuda/gaussian/gaussian /home/dipanjans/rodinia_2.0/data/gaussian/matrix50.txt >/dev/null 2>/dev/null) > /dev/null &
read

echo "histogram, BS_1024"
(time echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/histogram 0 >/dev/null 2>/dev/null) > /dev/null &
(time echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/BlackScholes_1024 0 >/dev/null 2>/dev/null) > /dev/null &
read

echo "eigenvalues, montecarlo"
(time echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/eigenvalues 0 >/dev/null 2>/dev/null) > /dev/null &
(time echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/MonteCarlo 0 >/dev/null 2>/dev/null) > /dev/null &
read
