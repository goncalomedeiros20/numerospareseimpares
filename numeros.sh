#!/bin/bash

# read file content
content=$(cat numeros.txt)

# initialize lists
pares=()
impares=()

# iterate over each number
for num in $content; do
    # check if the number is even
    if [ $((num % 2)) -eq 0 ]; then
        # add number to the list of even numbers
        pares+=($num)
    else
        # add number to the list of odd numbers
        impares+=($num)
    fi
done

# print lists
echo "Números pares:"
for num in "${pares[@]}"; do
    echo $num
done

echo "Números ímpares:"
for num in "${impares[@]}"; do
    echo $num
done
