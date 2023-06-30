counter=0
max=10

while [[ $counter -le $max ]]
do
  echo $counter
  ((counter++))
done

# 0
# 1
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9
# 10