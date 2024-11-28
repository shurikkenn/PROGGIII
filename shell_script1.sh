#! /bin/bash
#
#
#
#
#
#                   prwth ergasia programmatismou III
#           -                   THEMA A                   -     
#                       iasonas logiadis AM2123180
#                       giorgos saridakis AM2123075
#
#
#
#
#

#           .--._.--.
#          ( O     O )
#          /   . .   \
#         .`._______.'.
#        /(           )\
#      _/  \  \   /  /  \_
#   .~   `  \  \ /  /  '   ~.
#  {    -.   \  V  /   .-    }
#_ _`.    \  |  |  |  /    .'_ _
#>_       _} |  |  | {_       _<
# /. - ~ ,_-'  .^.  `-_, ~ - .\
#         '-'|/   \|`-`
#

# $0 einai to onoma tou orismatos
#arxika elenxei an o xrhsths edwse orismata
if [ $# -gt 0 ]; then
	echo "[~] checking for directory: $1"
else
	echo "[FATAL ERROR] No directory name given"
    echo "exiting..."
    exit 1
fi

#-------ERWTHMA 1-----------------
#elenxei an uparxei directory 
if [ -e $1 ]; then
    echo "$1 directory found"
    echo "[~] proceeding"
else
    echo "[*] directory NOT found..."
    echo "[~] creating one now"
    mkdir $1
fi

cd $1

#------ERWTHMA 2----------------
#dhmiourgei 2 neous katalogous afou elenxei an uparxoun

#o xrhstis deinei ta onomata
echo -n "[*] enter a name for the first directory: "
read foldername1

#elenxos gia prwto onoma
if [ -d $foldername1 ]; then
    until [ ! -d $foldername1 ]; do
        echo "[!] a directory with the same name exits!"
        echo -n "[*] enter a diffrent name: "
        read -i $foldername1
    done
fi
#efoson exei elenksei to onoma dhmiourgei ton fakelo
mkdir $foldername1
echo "directory succesfully created"
echo "proceding..."

#diavazei to deftero onoma
echo -n "enter a name for the second folder: "
read foldername2

#elenxos gia deftero onoma
if [ -d $foldername2 ]; then
    until [ ! -d $foldername1 ]; do
    echo "[!] a directory with the same name exits!"
    echo -n "[*] enter a diffrent name: "
    read -i $foldername2
    done
fi

#efoson exei elenksei to onoma dhmiourgei ton fakelo
mkdir $foldername2
echo "directory succesfully created"
#echo "proceding to moving files..."

#gurname sto arxiko directory
cd -


#-----------ERWTHMA 3----------
#metakinisi arxeiwn apto A ws to L
mv [A-La-l]* $1/$foldername1
cd - #pame pisw directory giati alliws tha pernage kai ta arxeia apto M ws to Z ston prwto fakelo 
cd -

#metakinisi arxeiwn apto M ws to Z
mv [M-Zm-z]* $1/$foldername2
cd -
foldername1
echo "files moved succesfully!"
echo "proceding..."

#-----------ERWTHMA 4--------------------
#arxika allazoume sto prwto directory
cd $foldername1
#ftoiaxnoume to arxeio pou periexei ton arithmo arxeiwn
touch directory1_filecount
ls | wc -l > directory1_filecount #h ls | wc -l metraei posa arxeia uparxoun kai ta grafei sto arxeio pou ftoiaksame
cd -

cd $foldername2
touch directory2_filecount
ls | wc -l > directory2_filecount
cd -

echo "files succesfully counted!"
echo "program exiting..."
echo "bye"

#------------------------------EOF-------------------------------------