subdirs=$(ls -D ../Results/AllResults/*/)
while read line; do
    for subdir in $subdirs; do
	filepath="../Results/AllResults/${subdir}${line}.png" 
	if [ -e "$filepath" ]; then
	        cp $filepath ./NonsinglezeroQA
            else
                echo "file not found in ${subdir}"
        fi
    done
done < Nonsinglezero2012processed.txt
