#!/bin/bash

# Instructions: 
# Please run the following command in the terminal where homework.sh is located to make the file executable.
# chmod +x ./homework.sh

# On your terminal, input all the commands you have used to create the following:

# 1. How would you create 5 directories? Feel free to use any name for your directories.
mkdir dir{1..5}
# 2. How would you verify the creation of all 5 directories?
ls
# 3. In each directory, how would you create 5 .txt files and write "I love data" into each within the directories?
for j in {1..5}; do for i in {1..5}; do echo -n "I love data" > "dir${j}/text${i}.txt"; done; done
# 4. How would you verify the presence of all 5 files?
for j in {1..5}; do echo "dir${j}" && ls "dir${j}"; done
# 5. How would you append to one of the existing files " and machine learning!"?
echo -n " and machine learning" >> dir2/text1.txt
# 6. How would you verify that the text was indeed appended to the existing file?
cat dir2/text1.txt
# 7. How would you delete all files except for the one with the appended text?
find ./ -name '*.txt' -type f -exec grep -q -v 'and machine learning' {} \; -exec rm {} +
# 8. How would you navigate back to the parent directory containing all the directories?
# As of now I am still in the parent directory.
cd .
# 9. How would you remove each directory along with its contents?
rm -rf *
# 10. How would you verify that all directories and files have been deleted?
ls
