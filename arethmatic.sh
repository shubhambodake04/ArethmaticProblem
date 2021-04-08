#! /bin/bash

declare -A resultStore
declare -a resultStoreInArray

read -p "Enter first Number: " firstNumber
read -p "Enter second Number: " secondNumber
read -p "Enter third Number: " thirdNumber
function firstExpression(){
	firstResult=$((($firstNumber+$secondNumber*$thirdNumber)))
	resultStore[0]=$firstResult
}
firstExpression
function secondExpression(){
	secondResult=$((($firstNumber*$secondNumber+$thirdNumber)))
	resultStore[1]=$secondResul
}
 secondExpression
function thirdExpression(){
	thirdResult=$((($thirdNumber+$firstNumber/$secondNumber)))
	resultStore[2]=$thirdResult
}
thirdExpression
function fourthExpression(){
	fourthResult=$((($firstNumber%$secondNumber+$thirdNumber)))
	resultStore[3]=$fourthResult
}
fourthExpression
function storeIntoArray(){
	for(( index=0; index<${resultStore[@]}; index++ ))
	do
		resultStoreInArray[index]=${resultStore[$index]}
	done
}
storeIntoArray
function desendingArraySorting(){
	for (( index=0; index<${#resultStoreInArray[@]}; index++ ))
	do
      		temp=0
      		for (( innerIndex=0; innerIndex<${#resultStoreInArray[@]}; innerIndex++ ))
      		do
         		if [[ ${resultStoreInArray[innerIndex]%.*} -lt ${resultStoreInArray[index]%.*} ]]
         		then
            			temp=${resultStoreInArray[index]}
            			resultStoreInArray[index]=${resultStoreInArray[innerIndex]}
            			resultStoreInArray[innerIndex]=$temp
         		fi
      		done
   done
echo "array in desending order => " ${resultStoreInArray[@]}
}
desendingArraySorting
