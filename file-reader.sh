#!/bin/bash
while getopts "a:b:c:" opt
do
   case "$opt" in
      a ) parameterA="$OPTARG" ;;
      b ) parameterB="$OPTARG" ;;
      c ) parameterC="$OPTARG";;
   esac
done

if [ -z "$parameterA" ] || [ -z "$parameterB" ]
then
   echo "Some or all of the parameters are empty";
   exit 1
fi

# main
if [ $parameterC == "S" ]
then
   echo "String reading ...";
   while read line; do echo $line; done < "$parameterA";
fi

if [ $parameterC == "a" ]
then
   cat $parameterA;
fi