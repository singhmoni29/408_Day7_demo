declare -a randomArray
echo "Adding element to array "
randomArray=()
randomArray+=($(((RANDOM%900)+100)));
randomArray+=($(((RANDOM%900)+100)));
randomArray+=($(((RANDOM%900)+100)));
randomArray+=($(((RANDOM%900)+100)));
randomArray+=($(((RANDOM%900)+100)));
randomArray+=($(((RANDOM%900)+100)));
randomArray+=($(((RANDOM%900)+100)));
randomArray+=($(((RANDOM%900)+100)));
randomArray+=($(((RANDOM%900)+100)));
randomArray+=($(((RANDOM%900)+100)));

echo "The array element : ${randomArray[@]}"

largest=${randomArray[0]}
smallest=${randomArray[0]}
secondLargest='unset'
secondSmallest='unset'

for((i=1; i<${#randomArray[@]};i++))
do

if [[ ${randomArray[i]}>$largest ]]
then
     secondLargest=$largest

     largest=${randomArray[i]}

elif(( ${randomArray[i]}< $largest)) && ((${randomArray[i]}>$secondLargest ))
then
		secondLargest=${randomArray[i]}
fi
done

if [[ ${randomArray[i]}<$smallest ]]
then
     secondSmallest=$smallest

     smallest=${randomArray[i]}

elif(( ${randomArray[i]} != $smallest )) && {[[ "$secondSmallest" = "unset" ]] || [[ ${randomArray[i]} < $secondSmallest ]]}
then
      secondSmallest=${randomArray[i]}
fi
done

			echo "Second largest value of array is : $secondLargest "
			echo "Second smallest value of array is : $secondSmallest "
