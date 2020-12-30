# filescount.sh

# Global Variables
count=0
cflag=0


# function counts the number of files in the current directory
function fcount(){
   for f in *; do
      let count=$count+1
   done
}

fcount	#call function to get  the number of files 

# Ask user to guess the number of files until correct answer
echo "Please guess the Number of files in the current directory '$PWD' : "
while [[ $cflag -ne 1 ]]
do
   read response
   if [[ $response -eq $count ]]
   then
      echo "Correct .."
      let cflag=1
    elif [[ $response -gt $count ]]
      then
         echo "High .. try again (^C to quit)"
   else
         echo "Low .. try again (^C to quit) "
   fi
done

