#! /bin/bash
declare -a resultStore
read -p "Enter first number:" firstNumber
read -p "Enter second number:" secondNumber
read -p "Enter third number:" thirdNumber

function firstExpression(){
	firstResult=$(( ($firstNumber+$secondNumber*$thirdNumber) ))
	resultStore[firstResult]=$firstResult
	echo ${resultStore[firstResult]}
}
firstExpression
function secondExpression(){
        secondResult=$(( ($firstNumber*$secondNumber+$thirdNumber) ))
        resultStore[secondResult]=$secondResult
	echo ${resultStore[secondResult]}
}
secondExpression
function thirdExpression(){
        thirdResult=$(( ($thirdNumber+$firstNumber/$secondNumber) ))
        resultStore[thirdResult]=$thirdResult
	echo ${resultStore[thirdResult]}

}
thirdExpression
function fourthExpression(){
        fourthResult=$(( ($firstNumber%$secondNumber+$thirdNumber) ))
        resultStore[fourthResult]=$fourthResult
	echo ${resultStore[fourthResult]}

}
fourthExpression
