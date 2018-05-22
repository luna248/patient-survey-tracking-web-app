<?php

include("config_nmd.php");

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
$hasErrors = false;
$error_messages = array();
if(isset($_POST['submit']))
{
    $errors = "";

    if(empty($_POST["email"]))
    {
        $hasErrors = true;
        array_push($error_messages, "Email is required");
    }
    if(empty($_POST["password"])  )
    {
        $hasErrors = true;
        array_push($error_messages, "Password & Confirmation is required");
    }

    if(!$hasErrors)
    {
        $email = $_POST['email'];
        $password = $_POST['password'];

        $statement = $db->prepare("SELECT * FROM provider WHERE email=? AND password=?");
        $statement->bind_param("ss", $email, $password );
        $statement->execute();

        $result = $statement->get_result();
        if($result->num_rows <= 0)
        {
            $hasErrors = true;
            array_push($error_messages, "Login Failed");
            $statement->close();
        }
        else{
            $_SESSION['logged_in'] = true;
            $_SESSION['user_type'] = 'provider';
            $_SESSION['user_info'] = $result->fetch_assoc();
            $statement->close();
            header('location: Registration.php');
            die();
        }
    }
}
?>
<?php include("head_nmd.php");?>
<div class="container">
    <div class="row">

    </div>
</div>

<div id="section">
    <div class="row">
        <div class="col-md-12">

        </div>
    </div><br><br>
    <div id="patients" class="container">

        <div class="row">
            <h2> Hello there! Please login below</h2><br/>
            <div class="col-md-12" style="padding-left:20%;">
                <?php
                if($hasErrors)
                {
                    foreach ($error_messages as $error_message)
                    {
                        ?>
                        <div   class="alert alert-danger alert-dismissable">
                            <?php echo $error_message;?>
                        </div>

                        <?php
                    }
                }
                ?>

                <form method="post" action="login_nmd.php" enctype="multipart/form-data">
                   <br><br><br>
                    <b><label class="col-md-4 control-label"> Email </label></b>
                    <input name="email" type="email" id="l2" class="col-md-6"placeholder=" Enter Email " <?php if(isset($_POST['email'])) echo 'value="' . $_POST['email'] . '"'; ?>>

                    <br><br><br>
                    <b><label class="col-md-4 control-label"> Password</label></b>
                    <input name="password" type="password" id="l3"class="col-md-6" placeholder=" Enter Password" <?php if(isset($_POST['password'])) echo 'value="' . $_POST['password'] . '"'; ?>>
                    <br><br><br>



                    <br><br><br>
                    <input name="submit" type="submit"  id="add" value="Login" />
                </form>
            </div>
        </div><br><br>
    </div>
</div>
