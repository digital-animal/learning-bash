# code1 to count words of a text file
while read line; do
    for word in $line; do
        echo "word = '$word'"
    done
done <"myfile.txt"

# code2 to count words of a text file
while read line; do
    for word in ${line[@]}; do
        echo "word = '$word'"
    done
done <"myfile.txt"

# code to extract top ten occuring words in a file
while read line; do for word in ${line[@]}; do echo $word; done; done < intro.txt | sort -r | grep -wiP '[a-zA-Z]+' | sort -r | sed 's/[(,]//' | sort | uniq -dc | sort -k 1,1nr | head -10 | grep -wioP '[a-zA-Z]+' > intro-ttw.txt

