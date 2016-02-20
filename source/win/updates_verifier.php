<html><head>

<title>Check for updates of the Iván Novegil's comparator</title>

</head><body>

<?php

// Aquí se deberían validar los datos ingresados por el usuario
if(!isset($_GET['version'])){
echo "Error: origin version isn't defined. Contact to ivan.novegil.cancelas@gmail.com, please.";
die();
}

if($_GET['version']<"b4") {

echo "<p>Your version (" . $_GET['version'] . ") is outdated. Theres a newer version (beta 4).<br><a href=http://inovegil.site40.net/comparator/files/latestexe>Download latest version</a>.<br>
After downloading dont forget to rename the file to latest.exe [latest(dot)exe], not latestexe.";
}

else {



echo "<p>Your version " . $_GET['version'] . " is updated. Thanks for using the comparator and verifying the updates available.</p>";

}

?>
</body></html>