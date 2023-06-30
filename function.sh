greeting () {
  echo Hello $1
}

greeting 'Peter'

# Functions refer to passed arguments according to their position.

greeting () {
  echo "Hello $1"
  echo "Hello $2"
}

greeting 'Peter' 'Paul'