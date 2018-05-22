<?php


$db = new mysqli("localhost", "root", "mysql", "NMD");


/* If connection fails throw an error */

if (mysqli_connect_errno()) {

    echo "Could  not connect to database: Error: ".  mysqli_connect_error();

    exit();
}
?>
