<html><head>
<title>Iván Novegil's Online Comparator | Compare strings</title>
</head><body>
<?php
if(!isset($_GET['string1']) || !isset($_GET['string2'])) {
echo "Please enter the strings correctly, the application detected that one or both strings aren't set. Thanks.";
die();
}

echo "<p>Comparing " . $_GET['string1'] . " and " . $_GET['string2'] . " the comparator detected that:<br>";

if($_GET['string1']==$_GET['string2']) {
echo "Both strings are identical.</p>";}
else {
echo "The comparation failed: the strings aren't identical or another error occurred.</p>";}
?>
<p>Thanks for using the Iván Novegil's online comparator.<br>
<a href="/comparator">Iván Novegil's Comparator index</a><br>
<a href="/comparator/online">Online Comparator home</a></p></body></html>