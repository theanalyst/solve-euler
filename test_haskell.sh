#!/bin/bash
cp etc/p8.txt haskell/dist/build/Euler/
haskell/dist/build/Euler/Euler > /tmp/Euler.out

# hacky way of testing atm, hopefully this should be replaced soon
if [[ $(grep -f /tmp/Euler.out solutions.txt | wc -l) -eq $(cat /tmp/Euler.out| wc -l) ]]; then
    echo "Tests succeeded :)"
else
    echo "Tests failed !!!"
    exit 1
fi
