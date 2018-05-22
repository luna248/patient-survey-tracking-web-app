<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<head>
	<title>
		View patient's survey responses
	</title>
	<style>
    * {
      box-sizing: border-box;
    }

    body {
      background-color: #f1f1f1;
    }

    #regForm {
      background-color: #ffffff;
      margin: 100px auto;
      font-family: Raleway;
      padding: 40pxregForm;
      width: 70%;
      min-width: 300px;
      font-size: 20px;
    }

    h1 {
      text-align: center;
    }

    input {
      padding: 10px;
      width: 100%;
      font-size: 17px;
      font-family: Raleway;
      border: 1px solid #aaaaaa;
    }

    /* Mark input boxes that gets an error on validation: */

    input.invalid {
      background-color: #ffdddd;
    }

    /* Hide all steps by default: */

    .tab {
      display: none;
    }

    button {
      background-color: #4CAF50;
      color: #ffffff;
      border: none;
      padding: 10px 20px;
      font-size: 17px;
      font-family: Raleway;
      cursor: pointer;
    }

    button:hover {
      opacity: 0.8;
    }

    #prevBtn {
      background-color: #bbbbbb;
    }

    /* Make circles that indicate the steps of the form: */

    .step {
      height: 15px;
      width: 15px;
      margin: 0 2px;
      background-color: #bbbbbb;
      border: none;
      border-radius: 50%;
      display: inline-block;
      opacity: 0.5;
    }

    .step.active {
      opacity: 1;
    }

    /* Mark the steps that are finished and valid: */

    .step.finish {
      background-color: #4CAF50;
    }

    .maxl {
      margin: 25px;
    }

    .inline {
      display: inline-block;
    }

    .inline+.inline {
      margin-left: 10px;
    }

    .radio {
      font-size: 15px;
      position: relative;
    }

    .radio span {
      position: relative;
      padding-left: 20px;
    }

    .radio span:after {
      content: '';
      width: 15px;
      height: 15px;
      border: 3px solid;
      position: absolute;
      left: 0;
      top: 1px;
      border-radius: 100%;
      -ms-border-radius: 100%;
      -moz-border-radius: 100%;
      -webkit-border-radius: 100%;
      box-sizing: border-box;
      -ms-box-sizing: border-box;
      -moz-box-sizing: border-box;
      -webkit-box-sizing: border-box;
    }

    .radio input[type="radio"] {
      cursor: pointer;
      position: absolute;
      width: 100%;
      height: 100%;
      z-index: 1;
      opacity: 0;
      filter: alpha(opacity=0);
      -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)"
    }

    .radio input[type="radio"]:checked+span {
      color: #0B8;
    }

    .radio input[type="radio"]:checked+span:before {
      content: '';
      width: 5px;
      height: 5px;
      position: absolute;
      background: #0B8;
      left: 5px;
      top: 6px;
      border-radius: 100%;
      -ms-border-radius: 100%;
      -moz-border-radius: 100%;
      -webkit-border-radius: 100%;
    }

    .slider {
      -webkit-appearance: none;
      width: 100%;
      height: 15px;
      border-radius: 5px;
      background: #d3d3d3;
      outline: none;
      opacity: 0.7;
      -webkit-transition: .2s;
      transition: opacity .2s;
    }

    .slider::-webkit-slider-thumb {
      -webkit-appearance: none;
      appearance: none;
      width: 25px;
      height: 25px;
      border-radius: 50%;
      background: #4CAF50;
      cursor: pointer;
    }

    .slider::-moz-range-thumb {
      width: 25px;
      height: 25px;
      border-radius: 50%;
      background: #4CAF50;
      cursor: pointer;
    }
  	</style>
</head>


	<body>
    <form id="regForm" action="none">
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
			$patientID = $_GET['patientID'];

      // output data of each row
      $sql1 = "SELECT FirstName, LastName, HomePhone FROM patient WHERE PatientID = '$patientID'";
      $result = $conn->query($sql1);
			if ($result->num_rows > 0) {

    		while($row = $result->fetch_assoc()) {
        	echo "Name: " . $row["FirstName"]. " " . $row["LastName"]. "<br>";
          echo "HomePhone: ". $row["HomePhone"]."<br>";
    			}
			} else {
    		echo "0 results";
			}


    ?>



       <h2>His/Her answers:</h2>
      <p>
        <ol>
          <div id="101">
            <li>
              <h4>Have you ever felt depressed (sad, empty, hopeless)?</h4></li>
                <?php
                    $sql2 = "SELECT Answer FROM answers WHERE PatientID = '$patientID' AND QuestionID = '101'";
                    $result = $conn->query($sql2);
                    if ($result->num_rows > 0) {

                    while($row = $result->fetch_assoc()) {
                    echo "Answer: " . $row["Answer"];
                    }
                    } else {
                    echo "0 results";
                    }

                ?>

          </div>

          <div id="102">
            <li>
              <h4>Have others observed you to be experiencing a depressed mood most of the day nearly every day?</h4></li>
              <?php
                    $sql3 = "SElECT Answer FROM answers WHERE PatientID = '$patientID' AND QuestionID = '102'";
                    $result = $conn->query($sql3);
                    if ($result->num_rows > 0) {

                    while($row = $result->fetch_assoc()) {
                    echo "Answer: " . $row["Answer"];
                    }
                    } else {
                    echo "0 results";
                    }

              ?>

          </div>

          <div id="103">
            <li>
              <h4>If yes to either, answer the following then move to Question 4. If No, move to Question 4.</h4></li>
            <ol type="I">
              <div id="1031">
                <li>
                  <h4>When you felt depressed, how long did you feel that way?</h4></li>
                <?php
                    $sql4 = "SElECT Answer FROM answers WHERE PatientID = '$patientID' AND QuestionID = '1031'";
                    $result = $conn->query($sql4);
                    if ($result->num_rows > 0) {

                    while($row = $result->fetch_assoc()) {
                    echo "Answer: " . $row["Answer"];
                    }
                    } else {
                    echo "0 results";
                    }

              ?>
              </div>
              <div id="1032">
                <li>
                  <h4>How many days in a row have you felt depressed?</h4></li>
                  <?php
                    $sql5 = "SElECT Answer FROM answers WHERE PatientID = '$patientID' AND QuestionID = '1032'";
                    $result = $conn->query($sql5);
                    if ($result->num_rows > 0) {

                    while($row = $result->fetch_assoc()) {
                    echo "Answer: " . $row["Answer"];
                    }
                    } else {
                    echo "0 results";
                    }

                  ?>
              </datalist>
              </div>
              <div id="1033">
                <li>
                  <h4>How much time occurs between episodes of depressive symptoms?</h4></li>
                  <?php
                    $sql6 = "SElECT Answer FROM answers WHERE PatientID = '$patientID' AND QuestionID = '1033'";
                    $result = $conn->query($sql6);
                    if ($result->num_rows > 0) {

                    while($row = $result->fetch_assoc()) {
                    echo "Answer: " . $row["Answer"];
                    }
                    } else {
                    echo "0 results";
                    }

                  ?>
              </datalist>
              </div>
              <div id="1034">
                <li>
                  <h4>When was the last time you felt depressed recurrently?</h4></li>
                  <?php
                    $sql7 = "SElECT Answer FROM answers WHERE PatientID = '$patientID' AND QuestionID = '1034'";
                    $result = $conn->query($sql7);
                    if ($result->num_rows > 0) {

                    while($row = $result->fetch_assoc()) {
                    echo "Answer: " . $row["Answer"];
                    }
                    } else {
                    echo "0 results";
                    }

                  ?>
              </div>
              <div id="1035">
                <li>
                  <h4>When did your depressive symptoms first begin?</h4></li>
                  <?php
                    $sql8 = "SElECT Answer FROM answers WHERE PatientID = '$patientID' AND QuestionID = '1035'";
                    $result = $conn->query($sql8);
                    if ($result->num_rows > 0) {

                    while($row = $result->fetch_assoc()) {
                    echo "Answer: " . $row["Answer"];
                    }
                    } else {
                    echo "0 results";
                    }

                  ?>
              </div>
              <div id="1036">
                <li>
                  <h4>Rate your current feelings of depression on a scale from 1-10 with 10 being the worst and 1 being the least?</h4></li>
                  <?php
                    $sql9 = "SElECT Answer FROM answers WHERE PatientID = '$patientID' AND QuestionID = '1036'";
                    $result = $conn->query($sql9);
                    if ($result->num_rows > 0) {

                    while($row = $result->fetch_assoc()) {
                    echo "Answer: " . $row["Answer"];
                    }
                    } else {
                    echo "0 results";
                    }

                  ?>
              </div>
            </ol>
          </div>

          <div id="104">
            <li>
              <h4>Have you ever had markedly diminished interest or pleasure in all or almost all activities? YES or NO<br>
                If Yes, answer the following questions.</h4></li>
            <ol type="I">
              <div id="1041">
                <li>
                  <h4>When you felt a diminished interest, how long did you feel that way?</h4></li>
                  <?php
                    $sql10 = "SElECT Answer FROM answers WHERE PatientID = '$patientID' AND QuestionID = '1041'";
                    $result = $conn->query($sql10);
                    if ($result->num_rows > 0) {

                    while($row = $result->fetch_assoc()) {
                    echo "Answer: " . $row["Answer"];
                    }
                    } else {
                    echo "0 results";
                    }

                  ?>
              </div>
              <div id="1042">
                <li>
                  <h4>How many days in a row have you felt a lack of interest or pleasure?</h4></li>
                  <?php
                    $sql11 = "SElECT Answer FROM answers WHERE PatientID = '$patientID' AND QuestionID = '1042'";
                    $result = $conn->query($sql11);
                    if ($result->num_rows > 0) {

                    while($row = $result->fetch_assoc()) {
                    echo "Answer: " . $row["Answer"];
                    }
                    } else {
                    echo "0 results";
                    }

                  ?>
              </div>
              <div id="1043">
                <li>
                  <h4>When feeling more interest in pleasurable activities, how often do you feel the lack of interest reoccur?</h4></li>
                  <?php
                    $sql12 = "SElECT Answer FROM answers WHERE PatientID = '$patientID' AND QuestionID = '1043'";
                    $result = $conn->query($sql12);
                    if ($result->num_rows > 0) {

                    while($row = $result->fetch_assoc()) {
                    echo "Answer: " . $row["Answer"];
                    }
                    } else {
                    echo "0 results";
                    }

                  ?>
              </div>
              <div id="1044">
                <li>
                  <h4>Have others observed you to be lacking interest in pleasurable activities?</h4></li>
                  <?php
                    $sql13 = "SElECT Answer FROM answers WHERE PatientID = '$patientID' AND QuestionID = '1044'";
                    $result = $conn->query($sql13);
                    if ($result->num_rows > 0) {

                    while($row = $result->fetch_assoc()) {
                    echo "Answer: " . $row["Answer"];
                    }
                    } else {
                    echo "0 results";
                    }


                  mysqli_close($conn);
                  ?>

              </div>
            </ol>
          </div>
        </ol>
      </p>
    </div>
  </form>

<p>
    Fill survey again for another registered patient? <a href="Survey.html">Go to survey</a>
    <br/>
        <a href="View.html">View survey responses</a>
    <br/>
        <a href="login_nmd.php">Logout</a>
    <br/>
</p>

</body>
</html>
