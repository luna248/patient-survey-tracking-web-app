<?php
session_start();

// initializing variables
$username = "";
$email    = "";
$errors = array(); 

// connect to the database
$db = mysqli_connect('localhost', 'root', 'mysql', 'NMD');

// REGISTER USER
if (isset($_POST['new_user'])) {
  // receive all input values from the form
  $firstname = mysqli_real_escape_string($db, $_POST['firstname']);
  $lastname = mysqli_real_escape_string($db, $_POST['lastname']);
  $SSN = mysqli_real_escape_string($db, $_POST['SSN']);
  $DOB = mysqli_real_escape_string($db, $_POST['DOB']);
  $address = mysqli_real_escape_string($db, $_POST['address']);
  $city = mysqli_real_escape_string($db, $_POST['city']);
  $state = mysqli_real_escape_string($db, $_POST['state']);
  $zip = mysqli_real_escape_string($db, $_POST['zip']);
  $email = mysqli_real_escape_string($db, $_POST['email']);
  $phone = mysqli_real_escape_string($db, $_POST['phone']);
  $InsuranceNo = mysqli_real_escape_string($db, $_POST['InsuranceNo']);
  $InsuranceName = mysqli_real_escape_string($db, $_POST['InsuranceName']);

  // first check the database to make sure 
  // a user does not already exist with the same username and/or email
  $user_check_query = "SELECT * FROM patient WHERE SSN = '$SSN' LIMIT 1";
  $result = mysqli_query($db, $user_check_query);
  $user = mysqli_fetch_assoc($result);
  
  if ($user) { // if user exists
    
      array_push($errors, "Patient already exists");
    
  }

  // Finally, register user if there are no errors in the form
  if (count($errors) == 0) {
  	$query = "INSERT INTO patient (FirstName, LastName, SSN, DOB, AddressLine1, City, State, ZipCode, Email, HomePhone) 
  			  VALUES('$firstname','$lastname', '$SSN','$DOB', '$address', '$city', '$state', '$zip','$email', '$HomePhone')";
  	mysqli_query($db, $query);

  }

  
    $sql = "INSERT INTO `insurance` (InsuranceNo, InsuranceName) VALUES ('$InsuranceNo, '$InsuranceName')";
    mysqli_query($db, $sql);
}
