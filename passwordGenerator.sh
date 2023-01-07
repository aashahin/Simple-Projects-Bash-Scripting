#!/bin/bash
length=$1
random(){
    tr -dc "A-Za-z0-9$#@^#*^()!|][{}=+-/,." < /dev/urandom | head -c $length | xargs;
}
if [ -n "$length" ];then
    random;
else
    echo "Enter the length of the password, such as: $0 30";
    exit 0;
fi