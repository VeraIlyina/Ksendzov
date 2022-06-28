#!/bin/bash
cd userTest
mkdir user_1 user_2 user_3
cd user_1
touch txtFile_1.txt txtFile_2.txt txtFile_3.txt jsonFile_1.json jsonFile_2.json
mkdir folder_1 folder_2 folder_3
ls -la
mv txtFile_3.txt folder_1/txtFile_3.txt
mv jsonFile_1.json folder_1/jsonFile_1.json
