#while_loop.sh
#!/bin/bash
# Basic while loop
counter=1
while [ $counter -le 10 ]
do
echo $counter
((counter++))
done
echo All done

echo""


#until_loop.sh
#!/bin/bash
# Basic until loop
counter=1
until [ $counter -gt 10 ]
do
echo $counter
((counter++))
done
echo All done

echo""


#for_loop.sh
#!/bin/bash
# Basic for loop
names='Zayn Xavier Venom'
for name in $names
do
echo $name
done
echo All done

echo""


#for_loop_series.sh
#!/bin/bash
# Basic range in for loop
for value in {1..5}
do
echo $value
done
echo All done


echo""

#!/bin/bash
# Basic range with steps for loop
for value in {10..0..2}
do
echo $value
done
echo All done

