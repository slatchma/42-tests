#!/bin/sh

red="\e[1;31m"
green="\e[1;32m"
red="\e[1;31m"
blue="\e[1;34m"
yellow="\e[1;33m"
white="\e[1;37m"
normal="\e[1;0m"

dir_name=cor

if [ $1 ]
then
	secondes=$1
else
	secondes=0
fi

if [ $# == 2 ]
then
	shift
	args=($@)
	else
	args=($(ls ./cor/))
fi

length=$((${#args[@]} - 1))
for i in $(seq 0 $length)
do
	elem=${args[i]%.*}
	printf "${red}"
	echo  "-------------------------------"
	echo "\tTEST DE : {$elem}\n"
	echo  "-------------------------------"
	printf "${green}"
	echo "**************<DECOMPILER>*************"
	echo $(../../decompiler ./cor/$elem.cor && mv ./cor/${elem}_dec.s ./dec;)
	echo $(./asm_src/asm_src ./dec/${elem}_dec.s;)


	printf "${blue}"
	echo "************<DIFF>*************"
	echo $(diff cor/$elem.cor ./dec/${elem}_dec.cor)


	printf "${white}"
	echo "************<VALGRIND>**************"
	echo "$(valgrind --leak-check=full --track-origins=yes ../../decompiler ./cor/$elem.cor;)"
	echo "$(rm ./cor/${elem}_dec.s;)"

	sleep $secondes
done
