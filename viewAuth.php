<?php
  $servername = "localhost";
  $username = "root";
  $password = "mysql";
  $database = "NMD";
  $conn = new mysqli($servername, $username, $password, $database);
  // Check connection

  if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
  }

      //$answerno=0;
  $patientID = $_POST['patientID'];

  $sqlAuth = "SELECT * FROM patient WHERE patientID='$patientID'";
  $runAuth = mysqli_query($conn, $sqlAuth) or die('error executing query');

  if ($runAuth->num_rows == 0) {
    header( "refresh:3;url=View.html" );
    echo "<h2> PatientID isn't valid. Enter again. </h2>";
  }
  else{
    header( "refresh:1;url=View.php?patientID=$patientID" );
    echo "<h2> View in a second... </h2>";
  }

?>
