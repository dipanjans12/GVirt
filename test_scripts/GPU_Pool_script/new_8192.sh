#!/bin/bash
export LD_PRELOAD=/home/dipanjans/GPU_Pool/kidron_fs/interposer/libci.so  
export TIMEFORMAT="%E"
rm -rf new_8192

for i in {1..100}
do
(time echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/BlackScholes_8192_sync 1 >/dev/null 2>/dev/null) 2>> new_8192
echo $i
done
