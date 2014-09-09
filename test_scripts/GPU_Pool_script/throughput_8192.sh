export LD_PRELOAD=/home/dipanjans/GPU_Pool/kidron_fs/interposer/libci.so
export TIMEFORMAT="%E"
rm -f mix4_8192
x=1
d=0
for i in 1 2 3 4 
do
d=$(( $(( $d + 1 )) % 4 ))
(time echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/BlackScholes_8192 $d >/dev/null 2>/dev/null) > /dev/null 2>> mix4_8192 &
done
wait
