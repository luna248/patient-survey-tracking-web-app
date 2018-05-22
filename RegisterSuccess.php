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

  </head>


<body>

<div class="container">
  <br><br>
    <form class="well form-horizontal" action="RegisterSuccess.php" method="post" id="contact_form">
      <fieldset>

        <!-- Success Header -->
        <legend>Patient Registrated Successfully </legend>


        <!-- Success message -->
        <div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Patient added successfully. You can now fill the survey.</div> <a href="Survey.html">Click here</a>

		</div>
	  </fieldset>
	</form>

 
</body>
</html>       