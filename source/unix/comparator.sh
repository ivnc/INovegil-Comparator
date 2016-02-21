#! /bin/sh
echo Iván Novegil´s Comparator
echo inovegil.site40.net/comparator/unixapp
echo Alpha 2version
echo Licensed under GNU General Public License version 3.0
echo Source: https://github.com/ivnc/INovegil-Comparatorecho Iván Novegil Cancelas | All rights resserved
sleep 5
echo Welcome to comparator.
echo This little scripts compares two strings and say if they’re identical or not
sleep 5
echo Enter the first string to compare:
read cad1
echo Enter the second string to compare:
read cad2
if [ ‘$cad1’ = ‘$cad2’ ]; then
echo Both strings are identical.
genfilestatus=are
else
echo Failed comparing: strings aren´t identical or another fail occurred.
genfilestatus=aren´t
fi
sleep 5
echo ‘Would you like to send the result to a text file? Type y or n.’
read genfilechoice
if [ $genfilechoice = y ]; then
echo Please enter the filename where the output will be saved. Remember to include quotes if the route contains spaces. Ou can specify the route too.
read genfilename
echo Comparing $cad1 and $cad2 the comparator detected that they $genfilestatus identical. File generated by Iván Novegil´s comparator unix version. > $genfilename
echo “The file was generated successfully. You can see it in the specified route/filename.”
sleep 5
else
echo Aborting saving file.
fi

echo Process finished!
echo Thanks for using the comparator. Designed by Iván Novegil - ivan.novegil.cancelas@gmail.com. You can also try windows version - http://inovegil.site40.net/comparator/app. See you soon!
sleep 20