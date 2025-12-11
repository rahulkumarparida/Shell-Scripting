#!/bin/bash
# echo "Hello World!!"
 
 # single line comment
 
 
 << Comment
 Multi- line
 comment
Comment

#Variables

#Type-1
name="Rahul"
age=21

# echo "$name is $age years old "


#Type-2 Constant
readonly nam="Situ"
# echo "$nam"

# nam="Swayam" -Throws error
# echo "$nam"


#Type-3 (To store Terminal Commands)
pwdCmd=$("pwd")
ipprint=$("ipconfig")

# echo "$pwdCmd"
# echo "$ipprint"



#Arrays
NameArray=("Rahul" "Situ" "Chikun" "Dron")
# echo "${NameArray[0]}"        
# echo "${NameArray[1]}"        
# echo "${NameArray[*]}" # Prints the complete array
# echo "${#NameArray[*]}" # Length of the array

# echo "${NameArray[*]:1}" # Prints all the value from index number 1
# echo "${NameArray[*]:1:2}" # Prints 2 of the values from index number 1

#Update an array
NameArray+=("Dinesh")
# echo "${NameArray[*]}"



#Key Value Pair Array
declare -A KeyArr
KeyArr=([name]="Rahul" [age]=21 [human]=True)
# echo "${KeyArr[name]}"




# String Operations
myVar="Hi my name is Rahul!!"
declare -A myVarOp
myVarOp=([length]="Length - ${#myVar}"
 [upper]="Uppercase - ${myVar^^}" 
 [lower]="Lowercase - ${myVar,,}" 
 [replace]="Replace - ${myVar/Rahul/Situ}" 
 [slice]="Slice - ${myVar:6:13}")

# echo "${myVarOp[*]}"





#Taking User Input
# echo "What is your name?"
# read -p "--> " Name
# echo "Hello!! $Name"



#Arithmatic Operations

# read -p "Input Two Numbers and then arithmatic expression: " a b c
# echo "To Operate $a $b on $c"
# let d=$a$c$b
# echo "$d"


#if-else
# read -p "How much marks you got in 10th out of 600? " a

# let percentage=$(( ($a*100)/600 ))
# if [[ $percentage -ge 33 ]]; then
#     echo "You Pass with $percentage"
# else 
#     echo "You Failed. Try Again Harder!!"
# fi

# # elif
# if [[ $percentage -gt 90 ]]; then
#     echo "Oustanding Marks"
# elif [[ $percentage -ge 80 ]]; then 
#     echo "Excellent Marks"

# elif [[ $percentage -ge 60 ]]; then 
#     echo "Good! Well tried"
# elif [[ $percentage -ge 40 ]]; then
#     echo "Just Pass Try Harder Next Time"
# else
#     echo "Failed!!"
# fi



#case
# echo "Commands: "
# echo "a)pwd"    
# echo "b)ipconfig"    
# echo "c)ls"    
# echo "d)date"  
# read -p "Choose a Command: " choice
  
# case $choice in 
#     a)pwd;;
#     b)ipconfig;;
#     c)ls;;
#     d)date;;
#     *)echo "Not a Valid Option"
# esac


#  Logical Opearator
# To find if the person is in teenage or not &&

# echo "What's your age?"
# read a

# if [[ $a -lt 20 && $a -gt 10  ]]; then
#     echo "Yes you are in teenage."
#     b='teen'
# elif [[ $a -le 10 ]]; then
#     echo "No, you are not a teenager your age is $a"
#     b='gtr'
# else
#     echo "No you are Older"
#     b='na'
# fi

# if [[ $b != 'teen' || $a -ge 18 ]]; then
#     echo "Yes , You can vote $b $a"
# else 
#     echo "No , you cannot vote"
# fi



# echo "What it is today?"
# read w

# if [[ $w == "Saturday" || $w == "sat" || $w == "saturday" || $w == "Sunday"|| $w == "sun" || $w == "sunday" ]]; then 
#     echo "Today is a weekend enjoy your day."
# else
#     echo "Today is a Weekday you got to work"
# fi



#LOOPS


# for
# for i in 1 2 3 4 5 6 7 8 9 10
# do 
#     echo "Number is $i"
# done


# for i in Rahul Kumar Parida
# do
#     echo "$i"
# done


# for i in {1..20}
# do
#     echo "$i"
# done


FILE="./file.txt"

# for item in $(cat $FILE)
# do
#     echo "$item"
# done


# while read myVar
# do 
#     echo "while $myVar"
# done < "./file.txt"

# myNames=("Rahul" "Situ" "Chikun" "Dron" "Dinesh")
# nameLenght=${#myNames[*]}
# for (( i=0;i<=$nameLenght;i++ ))
# do
#     echo "${myNames[$i]}"
# done



# While
# count=0
# max=10
# while [ $count -le $max ]
# do
#     echo "Number is $count"
#     let count++

# done



# Until 
# a=10
# until [ $a -eq 0 ]
# do
#     echo "Until Num $a"
#     let a--
# done

# Infinite
# while True
# do
#     echo "Hi Brother"
#     sleep 2s
# done






# FILE = "./test.csv"


while IFS="," read f1 f2 f3
do
    echo "$f1 $f2 $f3"
done < "./test.csv" 




