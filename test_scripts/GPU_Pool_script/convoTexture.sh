export LD_PRELOAD=/home/dipanjans/GPU_Pool_raghav/kidron_fs/interposer/libci.so
export TIMEFORMAT="%E"
rm -f results/mix_convoTexture_GRR
x=1
d=0
while read y
do
d=$(( $(( $d + 1 )) % 2 ))
(time echo '\n' | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/convolutionTexture --device=$d >/dev/null 2>/dev/null) > /dev/null 2>> results/mix_convoTexture_GRR &
t1=$(echo "l(32768)" | bc -l)
t2=$(echo "l(($y))" | bc -l)
t=$(echo "( $t1 - $t2 )" | bc -l)
t=$(echo "( 4 * $t )" | bc -l)
t=$(echo "($t)" | bc)
if [ $(echo "200 < $t"|bc) -eq 1 ]
 then
  t=200
fi
sleep $t
done < stream3_2000
wait
