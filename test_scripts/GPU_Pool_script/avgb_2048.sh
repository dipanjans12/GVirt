export LD_PRELOAD=/home/dipanjans/GPU_Pool/kidron_fs/interposer/libci.so
export TIMEFORMAT="%E"
rm -f mix4_2048 
x=1
d=0
while read y
do
d=$(( $(( $d + 1 )) % 2 ))
(time echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/BlackScholes_2048 $d >/dev/null 2>/dev/null) > /dev/null 2>> mix4_2048 &
t1=$(echo "l(32768)" | bc -l)
t2=$(echo "l(($y))" | bc -l)
t=$(echo "( $t1 - $t2 )" | bc -l)
t=$(echo "( 8 * $t )" | bc -l)
t=$(echo "($t)" | bc)
if [ $(echo "400 < $t"|bc) -eq 1 ]
 then
  t=400
fi
sleep $t
done < stream1_500
wait
