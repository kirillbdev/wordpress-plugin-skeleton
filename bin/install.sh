#!/usr/bin/env bash

cd $(dirname $0)

echo "/**
* Wordpress plugin skeleton installer
* Author: kirillbdev
*/
"

# Name
read -p "Enter plugin name: " name

if [[ "" == $name ]]
then
    echo "Invalid plugin name"
    exit 1
fi

# Url
read -p "Enter plugin url: " url

if [[ "" == $url ]]
then
    echo "Invalid plugin url"
    exit 1
fi

# Url
read -p "Enter plugin description: " description

# Author
read -p "Enter plugin author: " author

if [[ "" == $author ]]
then
    echo "Invalid plugin author"
    exit 1
fi

sed -i 's,%name%,'"$name"',' ./../test.php
sed -i 's,%url%,'"$url"',' ./../test.php
sed -i 's,%description%,'"$description"',' ./../test.php
sed -i 's,%author%,'"$author"',' ./../test.php

echo "Successful update plugin main file."
read "Now please enter plugin constant prefix (snake/upper case): " cprefix

sed -i 's,MY_PLUGIN,'"$name"',' ./../test.php