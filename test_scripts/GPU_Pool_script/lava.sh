export LD_PRELOAD=/home/dipanjans/GPU_Pool_raghav/kidron_fs/interposer/libci.so
export TIMEFORMAT="%E"
rm -f results/mix_lava_GwtMin
x=1
d=0
while read y
do
d=$(( $(( $d + 1 )) % 2 ))
(time echo '\n' | /home/dipanjans/rodinia_2.0/cuda/lavaMD/lavaMD -boxes1d 10 >/dev/null 2>/dev/null) > /dev/null 2>> results/mix_lava_GwtMin &
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
