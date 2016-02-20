@echo off
echo IVÁN NOVEGIL'S COMPARATOR
echo http://inovegil.site40.net/comparator
echo Beta 5
echo Licensed under the GNU General Public License version 3.0
echo Source code: https://github.com/ivnc/INovegil-Comparator
echo Iván Novegil - All Rights Resserved.
pause
echo Welcome to comparator. This litle script compares two strings and says if they're identical or not.
set /p help=To start, please press any key and then enter. To generate an help file, please type help. And to check for updates, type update.
if %help%==help goto genhelpfile
if %help%==update goto checkupd
goto setstrings
:genhelpfile
echo Welcome to the Iván Novegil's comparator help assistant. This will be generate a short quick help file.
pause
set /p genhelpfilename=Enter the file name (without txt at the end and including the system route if you want) where the help file will be saved Remember that if you don't specify any route before the filename, it will be saved in the same folder as the comparator's. To include spaces, please enclose the text/route into quotes ("").
echo>%genhelpfilename%.txt #IVÁN NOVEGIL'S COMPARATOR#
echo>>%genhelpfilename%.txt ##Quick help file##

echo>>%genhelpfilename%.txt Welcome to Iván Novegil's comparator. This application compares two user-defined strings, returning if ghey are identical or not, allowing save the results of the comparation in a text file (.txt).
echo>>%genhelpfilename%.txt The application is fully customizable; the user can set a name (and route) for the file where the results will be saved, for example.
echo>>%genhelpfilename%.txt The program also includes an help assistant to generate a file (this) which will explain to the user the basic features of the comparator and his screens, including the process to a basic comparation of two strings (1st and 2nd).

echo>>%genhelpfilename%.txt ###Welcome screen###

echo>>%genhelpfilename%.txt In this screen, the user will receive the welcome to the Iván Novegil's comparator and will be prompted about generating a help file. The user can type "help" (without quotes) to generate this file, or any other text if he can skip that step. Then press enter.

echo>>%genhelpfilename%.txt ###Check for updates (checkupd)###

echo>>%genhelpfilename%.txt If the user wrote "update" (without quotes) on the main prompt the system will open the default browser to verify if there is available a newer version of the comparator.

echo>>%genhelpfilename%.txt ###Set Strings screen (setstrings)###

echo>>%genhelpfilename%.txt In the first prompt the user must enter the first string (accepted letters a-z, A-Z; numbers 0-9, and a full list of symbols and special characters, including acents). Press enter. Then the user must enter the second string, as in the first, pressing enter after filling the prompt.

echo>>%genhelpfilename%.txt ###Results (setstrings - 2nd part)###

echo>>%genhelpfilename%.txt In this section, the results will be displayed. The program will inform the user "both strings are identical" or "There's a fail comparing".

echo>>%genhelpfilename%.txt ###File generation process (genfilechoice, genfile and closenp)###

echo>>%genhelpfilename%.txt After displaying the results, the system will ask the user if he can generate a file. He can type y (it's yes) or n (it's no). Any other key will display a fail. After typed the desired order, press enter.
echo>>%genhelpfilename%.txt The system will prompt you about the route and the name of the file that will be generated. Remember typing the name without the .txt extension, it has already included in the path.
echo>>%genhelpfilename%.txt Then the file will be openned with the windows notepad (mynimized). You can press any key to continue. On the next screen, the user will be asked about closing the notepad, he can type close (and then enter) to close the notepad, or any other text and then enter, to skip that step.

echo>>%genhelpfilename%.txt ##Application credits and changelog##
echo>>%genhelpfilename%.txt ###Credits##

echo>>%genhelpfilename%.txt This application was designed by Iván Novegil Cancelas: email: ivan.novegil.cancelas@gmail.com; twitter: @inovegil (or @inovegilmen); github: https://github.com/ivnc, GHPage: http://gh.novegil.xyz; website: http://inovegil.site40.net (mail: info@inovegil.site40.net).

echo>>%genhelpfilename%.txt ###Changelog###
echo>>%genhelpfilename%.txt ####Beta 4###
echo>>%genhelpfilename%.txt * Added an update checking system: now typing "update" on the main prompt the system will check if there are updates available.
echo>>%genhelpfilename%.txt * Solved a problem that made impossible entering strings with spaces in setstrings without quotes (""). The quotes aren't required anymore.
echo>>%genhelpfilename%.txt * Other minor bugfixes.
echo>>%genhelpfilename%.txt * Minor appearance changes.

echo>>%genhelpfilename%.txt ####Beta 3####

echo>>%genhelpfilename%.txt * Added an help file and a tool to generate it.
echo>>%genhelpfilename%.txt * Appearance fixes

echo>>%genhelpfilename%.txt ##Notes##

echo>>%genhelpfilename%.txt * The text between ( and ) on the screens name is referred to the name of the sections when programming the Iván Novegil's Comparator.
echo>>%genhelpfilename%.txt * In the fields that the user have to enter a keyword or another text to skip, there's not allowed leaving the field blank.
echo>>%genhelpfilename%.txt Please remember that in the route/name field (help filename and strings filename) are required quotes (") at the beginning and ending of the route/name, if he contains spaces and/or other special characters.
echo>>%genhelpfilename%.txt Iván Novegil Cancelas - All rights resserved,
echo>>%genhelpfilename%.txt for the program and the files it generates.
echo>>%genhelpfilename%.txt Modification or any other alteration by other persons than the original author is not permitted except permission from his (original author).

echo The file was generated, it will be open shortly.
start /max notepad.exe %genhelpfilename%.txt
pause
set /p choiceexithelp=Type exit to close the application or any other key to continue to the 'Set strings' section.
if %choiceexithelp%==exit goto help2quick
echo The Help Assistant is sending you to the 'Set strings' section. Thanks for using it.
pause
goto setstrings
:help2quick
echo The Assistant is sending you to the finis screen. Tahnks for using it.
pause
set choice=n
goto quick
:checkupd
echo Welcome to the Updates Assistant. This process will check for updates to the comparator, which includes new functionalities and various bugfixes and minor enhacements.
pause
start /max http://inovegil.site40.net/comparator/verifier.php?version=b5
echo The default system navigator may open shortly.
echo Now do you want to close the program or continue to set strings?
set /p choiceexitupd=Type exit or any other key, then enter.
if %choiceexitupd%==exit goto help2quick
echo The Updates Assistant is sending you to the set strings screen. Thanks for your interest in updating the program.
pause
:setstrings
set /p cad1=Enter the first string to compare
set /p cad2=Enter the second string to compare.
if "%cad1%"=="%cad2%" goto correct
echo Failed comparing, strings aren't identical or another fail occurred.
set genfileresult=aren't
goto genfilechoice
:correct
echo Both strings are identical.
set genfileresult=are
:genfilechoice
echo Would you like to send the results (including the strings) to a text file?
set /p choice="Type y(yes) or n(no).
if %choice%==y goto genfile
if %choice%==n goto quick
echo Invalid command. Please try again.
goto genfilechoice
:genfile
set /p genfilename=Enter the file name (without txt at the end and including the system route if you want) where the output will be saved Remember that if you don't specify any route before the filename, it will be saved in the same folder as the comparator's. to include spaces, please enclose the name/route into quotes ("").
 echo>%genfilename%.txt Comparing %cad1% and %cad2%, the comparator detected that they %genfileresult% identical. File generated by Iván Novegil's string comparator."
echo The file "%genfilename%.txt" was generated successfully. It will be opened shortly.
start /min notepad.exe %genfilename%.txt
pause
goto quick
:closenp
set /p choicenp=If you want to close the notepad, please type close. If not, press any other key.
if %choicenp%==close taskkill /im notepad.exe
set choice=n
:quick
echo Process finished!
if %choice%==y goto closenp
echo Thanks for using string comparator, a simple script which compares two strings. Designed by Iván Novegil (mail: ivan.novegil.cancelas@gmail.com). See you soon!
pause