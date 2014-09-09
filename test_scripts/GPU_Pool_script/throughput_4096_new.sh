export LD_PRELOAD=/home/dipanjans/GPU_Pool/kidron_fs/interposer/libci.so
export TIMEFORMAT="%E"
rm -f mix4_4096
x=1
d=0
time ( echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/BlackScholes_4096 0 >/dev/null 2>/dev/null) > /dev/null & #2>> mix4_4096 &
time ( echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/BlackScholes_4096 1 >/dev/null 2>/dev/null) > /dev/null & #2>> mix4_4096 &
time ( echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/BlackScholes_4096 2 >/dev/null 2>/dev/null) > /dev/null & #2>> mix4_4096 &
time ( echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/BlackScholes_4096 3 >/dev/null 2>/dev/null) > /dev/null & #2>> mix4_4096 &
wait
