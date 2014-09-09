export LD_PRELOAD=/home/dipanjans/GPU_Pool/kidron_fs/interposer/libci.so
export TIMEFORMAT="%E"
rm -f mix4_9000
x=1
d=0
for i in 1 2 3 4 
do
(time echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/BlackScholes_9000 $d >/dev/null 2>/dev/null) > /dev/null 2>> mix4_9000 &
done
wait
