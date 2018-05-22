<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">

<head>
  <title>Survey</title>
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
      padding: 40px;
      width: 70%;
      min-width: 300px;
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

      $patientID = $_POST['patientID'];

      $sqlAuth = "SELECT * FROM patient WHERE patientID='$patientID'";
      $runAuth = mysqli_query($conn, $sqlAuth) or die('error executing query');

      if ($runAuth->num_rows == 0) {
    		echo "PatientID isn't valid. Enter again.";
        header( "refresh:3;url=survey.html" );
			}

      $a101 = $_POST['101'];
      $a102 = $_POST['102'];
      $a1031 = $_POST['1031'];
      $a1032 = $_POST['1032'];
      $a1033 = $_POST['1033'];
      $a1034 = $_POST['1034'];
      $a1035 = $_POST['1035'];
      $a1036 = $_POST['1036'];
      $a1041 = $_POST['1041'];
      $a1042 = $_POST['1042'];
      $a1043 = $_POST['1043'];
      $a1044 = $_POST['1044'];

      $sql= "INSERT INTO answers(SurveyID,PatientID,QuestionID,Answer) VALUES ('1', '$patientID','101','$a101')";
      $run = mysqli_query($conn, $sql) or die('error executing query');
      $sql= "INSERT INTO answers(SurveyID,PatientID,QuestionID,Answer) VALUES ('1', '$patientID','102','$a102')";
      $run = mysqli_query($conn, $sql) or die('error executing query');
      $sql= "INSERT INTO answers(SurveyID,PatientID,QuestionID,Answer) VALUES ('1', '$patientID','1031','$a1031')";
      $run = mysqli_query($conn, $sql) or die('error executing query');
      $sql= "INSERT INTO answers(SurveyID,PatientID,QuestionID,Answer) VALUES ('1', '$patientID','1032','$a1032')";
      $run = mysqli_query($conn, $sql) or die('error executing query');
      $sql= "INSERT INTO answers(SurveyID,PatientID,QuestionID,Answer) VALUES ('1', '$patientID','1033','$a1033')";
      $run = mysqli_query($conn, $sql) or die('error executing query');
      $sql= "INSERT INTO answers(SurveyID,PatientID,QuestionID,Answer) VALUES ('1', '$patientID','1034','$a1034')";
      $run = mysqli_query($conn, $sql) or die('error executing query');
      $sql= "INSERT INTO answers(SurveyID,PatientID,QuestionID,Answer) VALUES ('1', '$patientID','1035','$a1035')";
      $run = mysqli_query($conn, $sql) or die('error executing query');
      $sql= "INSERT INTO answers(SurveyID,PatientID,QuestionID,Answer) VALUES ('1', '$patientID','1036','$a1036')";
      $run = mysqli_query($conn, $sql) or die('error executing query');
      $sql= "INSERT INTO answers(SurveyID,PatientID,QuestionID,Answer) VALUES ('1', '$patientID','1041','$a1041')";
      $run = mysqli_query($conn, $sql) or die('error executing query');
      $sql= "INSERT INTO answers(SurveyID,PatientID,QuestionID,Answer) VALUES ('1', '$patientID','1042','$a1042')";
      $run = mysqli_query($conn, $sql) or die('error executing query');
      $sql= "INSERT INTO answers(SurveyID,PatientID,QuestionID,Answer) VALUES ('1', '$patientID','1043','$a1043')";
      $run = mysqli_query($conn, $sql) or die('error executing query');
      $sql= "INSERT INTO answers(SurveyID,PatientID,QuestionID,Answer) VALUES ('1', '$patientID','1044','$a1044')";
      $run = mysqli_query($conn, $sql) or die('error executing query');

      echo "<h2>Your survey responses have been recorded! Thank you!</h2>";

      echo "<p>";
    	echo "	Fill survey again for another registered patient? <a href='Survey.html'>Go to survey</a>";
      echo "    <br/>";
      echo "    <a href='View.html'>View survey responses</a>";
      echo "    <br/>";
      echo "    <a href='login_nmd.php'>Logout</a>";
      echo "    <br/>";
    	echo "</p>";
    ?>

  </form>
</body>
</html>
