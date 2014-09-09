export LD_PRELOAD=/root/kidron-utils-rce-release-0.0.1/interposer/libci.so
export TIMEFORMAT="%E"
rm -f out4_512
x=1
d=0
while read y
do
d=$(( $(( $d + 1 )) % 2 ))
(time echo '\n' | ./BlackScholes_512 $d >/dev/null 2>/dev/null) > /dev/null 2>> out4_512 &
t1=$(echo "l(32768)" | bc -l)
t2=$(echo "l(($y))" | bc -l)
t=$(echo "( $t1 - $t2 )" | bc -l)
t=$(echo "( 12 * $t )" | bc -l)
t=$(echo "($t)" | bc)
if [ $(echo "200 < $t"|bc) -eq 1 ]
 then
  t=200
fi
sleep $t
done < stream1_500
wait
