clear

python trans.py
       
echo -e "\033[31m [1] Interactive Mode "
echo -e "\033[31m [2] Interractive Speak Mode "
echo -e "\033[31m [3] Exit             "
echo -e -n "\033[34m Your Answer: "
read tra
               
if [ $tra -eq 1 ]; then
	clear
	python trans.py
	echo -e "\033[32m [1] English to sinhala"
	echo -e "\033[32m [2] Sinhala to English"
	echo -e -n "\033[34m Your Answer: "
	read value
        if [ $value -eq 1 ]; then
		trans -b -s en -t si -e google -i
	elif [ $value -eq 2 ]; then
		trans -b -s si -t en -e google -i
	fi
elif [ $tra -eq 2 ]; then
	clear
	python trans.py
	echo -e "\033[32m [1] English to Sinhala"
	echo -e "\033[32m [2] Sinhala to English"
        echo -e -n "\033[34m Your Answer: "
	read value1
	if [ $value1 -eq 1 ]; then
	        trans -b -s en -t si -e google -p -i
	elif [ $value1 -eq 2 ]; then
		trans -b -s si -t en -e google -p -i
	fi
elif [ $tra -eq 3 ]; then
        exit
fi

done
