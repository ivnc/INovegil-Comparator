@echo off
echo IVÁN NOVEGIL'S COMPARATOR
echo http://inovegil.site40.net/comparator
echo Application extension
echo Update Helper - Version 0.2
echo Licensed under GNU General Public License version 3.0
echo Iván Novegil - All rights resserved
pause
echo Welcome to Comparator's Update Helper, an application that will help you entering the update verifier from versions that hasn't support for it.
pause
set /p version=Please enter the version of the application. If it's a beta version, please include a b before the number. Normally the version is indicated in the filename. If the version isn't there, please contact ivan.novegil.cancelas@gmail.com. Take care of writing the version as specified.
echo Ok, you set %version%; the navigator will open shortly. See you soon!
start /max http://inovegil.site40.net/comparator/verifier.php?version=%version%
pause