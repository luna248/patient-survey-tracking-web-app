<?php include('server.php') ?>
<!DOCTYPE html>
<html>

<head>
  <title>Survey</title>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>

  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

  <!-- Optional theme -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

  <!-- Latest compiled and minified JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous">
  </script>


</head>


<body>

  <div class="container">
  <br><br>
    <form name = "RegisterPatient" class="well form-horizontal" action="RegisterSuccess.php" method="post" id="contact_form">
      <fieldset>

        <!-- Form Name -->
        <legend>Patient Registration Form</legend>

        <!-- Text input-->

        <div class="form-group">
          <label class="col-md-4 control-label">First Name</label>
          <div class="col-md-4 inputGroupContainer">
            <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
              <input name="firstname" placeholder="First Name" class="form-control" type="text" required>
            </div>
          </div>
        </div>

        <!-- Text input-->

        <div class="form-group">
          <label class="col-md-4 control-label">Last Name</label>
          <div class="col-md-4 inputGroupContainer">
            <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
              <input name="lastname" placeholder="Last Name" class="form-control" type="text" required>
            </div>
          </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label">SSN #</label>
          <div class="col-md-4 inputGroupContainer">
            <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
              <input name="SSN" placeholder="999-99-9999" class="form-control" type="number" required>
            </div>
          </div>
        </div>

        <!-- Text input-->

        <div class="form-group">
          <label class="col-md-4 control-label">Date of Birth</label>
          <div class="col-md-4 inputGroupContainer">
            <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
              <input name="DOB" placeholder="YYYY-MM-DD" class="form-control" type="date" required>
            </div>
          </div>
        </div>

 <!-- Text input-->

        <div class="form-group">
          <label class="col-md-4 control-label">Address</label>
          <div class="col-md-4 inputGroupContainer">
            <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
              <input name="address" placeholder="Address" class="form-control" type="text" required>
            </div>
          </div>
        </div>

        <!-- Text input-->

        <div class="form-group">
          <label class="col-md-4 control-label">City</label>
          <div class="col-md-4 inputGroupContainer">
            <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
              <input name="city" placeholder="city" class="form-control" type="text" required>
            </div>
          </div>
        </div>

        <!-- Select Basic -->

        <div class="form-group">
          <label class="col-md-4 control-label">State</label>
          <div class="col-md-4 selectContainer">
            <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
              <select name="state" class="form-control selectpicker">
      <option value=" " >Please select your state</option>
      <option>Alabama</option>
      <option>Alaska</option>
      <option >Arizona</option>
      <option >Arkansas</option>
      <option >California</option>
      <option >Colorado</option>
      <option >Connecticut</option>
      <option >Delaware</option>
      <option >District of Columbia</option>
      <option> Florida</option>
      <option >Georgia</option>
      <option >Hawaii</option>
      <option >daho</option>
      <option >Illinois</option>
      <option >Indiana</option>
      <option >Iowa</option>
      <option> Kansas</option>
      <option >Kentucky</option>
      <option >Louisiana</option>
      <option>Maine</option>
      <option >Maryland</option>
      <option> Mass</option>
      <option >Michigan</option>
      <option >Minnesota</option>
      <option>Mississippi</option>
      <option>Missouri</option>
      <option>Montana</option>
      <option>Nebraska</option>
      <option>Nevada</option>
      <option>New Hampshire</option>
      <option>New Jersey</option>
      <option>New Mexico</option>
      <option>New York</option>
      <option>North Carolina</option>
      <option>North Dakota</option>
      <option>Ohio</option>
      <option>Oklahoma</option>
      <option>Oregon</option>
      <option>Pennsylvania</option>
      <option>Rhode Island</option>
      <option>South Carolina</option>
      <option>South Dakota</option>
      <option>Tennessee</option>
      <option>Texas</option>
      <option> Uttah</option>
      <option>Vermont</option>
      <option>Virginia</option>
      <option >Washington</option>
      <option >West Virginia</option>
      <option>Wisconsin</option>
      <option >Wyoming</option>
    </select>
            </div>
          </div>
        </div>

        <!-- Text input-->

        <div class="form-group">
          <label class="col-md-4 control-label">Zip Code</label>
          <div class="col-md-4 inputGroupContainer">
            <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
              <input name="zip" placeholder="Zip Code" class="form-control" type="number" required>
            </div>
          </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label">E-Mail</label>
          <div class="col-md-4 inputGroupContainer">
            <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
              <input name="email" placeholder="E-Mail Address" class="form-control" type="text" required>
            </div>
          </div>
        </div>


        <!-- Integer input-->

        <div class="form-group">
          <label class="col-md-4 control-label">Phone #</label>
          <div class="col-md-4 inputGroupContainer">
            <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
              <input name="phone" placeholder="(845)555-1212" class="form-control" type="number" required>
            </div>
          </div>
        </div>

        <!-- Integer input-->

        <div class="form-group">
          <label class="col-md-4 control-label">Insurance No</label>
          <div class="col-md-4 inputGroupContainer">
            <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
              <input name="InsuranceNo" placeholder="Insurance No" class="form-control" type="text" required>
            </div>
          </div>
        </div>

         <!-- Text input-->

        <div class="form-group">
          <label class="col-md-4 control-label">Insurance Name</label>
          <div class="col-md-4 inputGroupContainer">
            <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
              <input name="InsuranceName" placeholder="Insurance Name" class="form-control" type="text" required>
            </div>
          </div>
        </div>

       <!-- Button -->
        <div class="form-group">
          <label class="col-md-4 control-label"></label>
          <div class="col-md-4">
            <button type="submit" name = new_user  class="btn btn-warning">Submit <span class="glyphicon glyphicon-send"></span></button>
          </div>
        </div>
      

      </fieldset>
    </form>
  	<p>
  		Existing patient? Fill the survey now! <a href="Survey.html">Go to survey</a>
        <br/>
        <a href="View.html">View survey responses</a>
        <br/>
        <a href="login_nmd.php">Logout</a>
        <br/>
  	</p>
  </form>
</body>
</html>

