# set -x
# set -e
# Functions


function welcome {
    echo "-------------------------"
    echo "-------- Welcome---------"
    echo "-------------------------"
}

agecalc() {
    echo "Mention the Year of Birth and the present year respectively."
    read start end
    echo "$start - $end"
    let age=$end-$start
    echo "Your age is $age"
}

addition() {
    local a=$1
    local b=$2
    let c=$a+$b
    echo "$c"
}

# welcome
# agecalc
# addition 2 3    



# args with File while executing
# echo "Name $1"
# echo "Age $2"
# echo "All args $@ $#-arguments"

# for arg in $@
# do 
#     echo "Argument is $arg"
# done


# echo "Creating User..."
# echo "Username is $1"
# shift
# echo "Description : $@"




# NO=$(( $RANDOM % 6 + 1 ))
# echo "Number is $NO"



# Connectivity Chcek

# read -p "Which site you want to check connectivity? " site
# ping -t  -n 1  $site  $> /dev/null
# sleep 1s

# if [[ $? -eq 0 ]]; then
#     echo "Ran on  ${0}"
#     echo "Connection is OK"
# else
#     echo "Failed"
# fi
