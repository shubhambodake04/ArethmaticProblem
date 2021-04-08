#! /bin/bash

read -p "Enter first number:" firstNumber
read -p "Enter second number:" secondNumber
read -p "Enter third number:" thirdNumber

function firstExpression(){
	firstResult=$(( ($firstNumber+$secondNumber*$thirdNumber) ))
	echo $firstResult
}
firstExpression
function secondExpression(){
        secondResult=$(( ($firstNumber+$secondNumber*$thirdNumber) ))
        echo $secondResult
}
secondExpression
