cnt=0;
animal[ ((cnt++)) ]="Lion";
animal[ ((cnt++)) ]="Tiger";
animal[ ((cnt++)) ]="Elephant";
animal[ ((cnt++)) ]="Bear";

echo ${animal[@]};
printf "\n"
echo ${!animal[@]};
echo ${#animal[@]};

for animals in ${animal[@]}
do
				echo $animals;
done
