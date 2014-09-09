#export LD_PRELOAD=/home/dipanjans/GPU_Pool_raghav/kidron_fs/interposer/libci.so
export TIMEFORMAT="%E"
rm -f results/mix_srad_cuda
x=1
d=0
while read y
do
d=$(( $(( $d + 1 )) % 2 ))
(time echo '\n' | /home/dipanjans/rodinia_2.0/cuda/srad/srad_v1/srad 200 0.5 502 458 >/dev/null 2>/dev/null) > /dev/null 2>> results/mix_srad_cuda &
t1=$(echo "l(32768)" | bc -l)
t2=$(echo "l(($y))" | bc -l)
t=$(echo "( $t1 - $t2 )" | bc -l)
t=$(echo "( 0.09 * $t )" | bc -l)
t=$(echo "($t)" | bc)
if [ $(echo "800 < $t"|bc) -eq 1 ]
 then
  t=800
fi
sleep $t
done < stream2
wait
