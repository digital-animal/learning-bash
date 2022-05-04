#! /usr/bin/bash

# OBJECTIVES
# 1. searching for pdf files in a direcory and it's sub directories recursively
# 2. providing integer command line argument to denote lower limit of page count to filter out pdf files
# 3. sorting pdf files according to their page count/size
# 4. renaming pdf files according to their page count/size

# find . -type f -name "*.pdf" | grep -i "*.pdf"| tree -P "*.pdf"


copy_pdf(){
	if [[ ! -d  copied_pdf ]]; then
		`mkdir copied_pdf`
	fi

	# find . -type f -name "*.pdf" 
	total_pages=0
	for file in `find ./exam_final -type f -name "*.pdf"`
	do
		current_pages=$(pdfinfo $file | awk '/Pages/{print $2}')
		
		`cp "$current_pages - $file "./copied_pdf`

		# `cp "$current_pages - $file "./copied_pdf`

		# echo $file
		echo $current_pages
		# echo "$file - $current_pages"
		# total_pages=$((total_pages + current_pages))
	done 
	echo "successfully copied"
	echo "# total_pages = $total_pages"
}

copy_pdf

`cd ./copied_pdf`

rename_pdf(){
	for newfile in `find ./copied_pdf -type f -name "*.pdf"`
	do
		current_pages=$(pdfinfo $newfile | awk '/Pages/{print $2}')
		file_name_full=$(basename -- $newfile)
		file_name=${file_name_full%.*}
		file_extension=${file_name_full##*.}
		
		# echo $current_pages
		# echo $newfile

		# info=`pdfinfo $newfile`
		# echo $info 
		# printf "\n"

		# type=$(file -b $newfile)
		# echo $type

		echo $file_name_full
		echo $file_name
		echo $file_extension
		
		# `mv "$newfile"  "$current_pages - $newfile"`
	done 

	# for newfile in `find ./copied_pdf -type f -name "*.pdf" | xargs -d '\n' basename -a`
}

# sort_pdf(){
# 	# pass
# }

# copy_pdf

rename_pdf
