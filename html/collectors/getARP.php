<?php

$filename = "salidaARP.data";
$handle = fopen($filename, "r");
$dataset = array();

if ($handle) {
    while (($line = fgets($handle)) !== false) {
        $dataset[]= intval(str_replace("\n","",$line));

    }

    fclose($handle);
    echo json_encode($dataset);
    
    // Borrar el fichero después de leer el dato
   //unlink($filename);
} else {
    // error opening the file.
    json_encode(array());
    
} 


?>

