#!/bin/sh

echo "argument0           : $0"
echo "argument1           : $1"
echo "argument2           : $2"
echo "Additional arguments: $3"

echo "=========================================="

echo "loop through args"
for var in "$@"
do
    echo "$var"
done
echo "=========================================="
