#!/bin/bash
#   != not.
#   $= Variable name.
#   -f= flag,  file exist or not 
#   $1= first parameters.
#   $#= total no of parameters
#   -ne = not equal

# PRINTS THE GIVEN FILE
print_file () {
    # check if given files are valid
    if [ ! -f "$1" ]; then
        echo "[ERR] $1 is invalid"
    else
        # print the lines in the file
        echo "[PRINTING FILE] $1"
        cat $1
        echo ""
        echo ""
    fi
}

# if parameters are less than 3, terminate
if [ $# -ne 3 ]; 
    then echo "Required 3 parameters"
    exit 1
fi

# get the parameters provided
FILE1=$1; 
FILE2=$2;
usr_opt=$3;

# if the third parameter is s/S print content, else terminate.
if [ "$usr_opt" == "s" ] || [ "$usr_opt" == "S" ]; then
    print_file "$FILE1"
    print_file "$FILE2"
fi
echo "Okay, bye."
