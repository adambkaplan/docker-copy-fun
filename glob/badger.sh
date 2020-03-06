#!/bin/sh

mkdir 4
cp -r 1/badger/* 4/
echo "Source tree:"
echo "---------------------------"
tree
echo "---------------------------"
echo "badger/badger/badger/badger"
cat 3/badger/badger/badger/badger.txt
