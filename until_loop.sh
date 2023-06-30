counter=0
max=10

until [[ $counter -gt $max ]]
do
  echo $counter
  ((counter++))
done

# An `until` loop is similar to a `while` loop except it executes the commands between `do` and `done` until the condition becomes true.