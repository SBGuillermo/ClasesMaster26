#!/bin/bash
FILE_NAME=$1
DELIMITER=$2
NUMBER_OF_COLUMNS=$(head -1 $FILE_NAME | tr $DELIMITER "\n" |wc -l)
#echo "File Name: $FILE_NAME wiht delimiter $DELIMITER"
echo num of columns = $NUMBER_OF_COLUMNS
paste <(seq $NUMBER_OF_COLUMNS) <(head -1 $FILE_NAME | tr $DELIMITER "\n")
