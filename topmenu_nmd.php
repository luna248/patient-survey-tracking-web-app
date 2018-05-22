
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse.collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="login_nmd1.php"><span>Neuro MD</span></a>
        </div>
        <div class="navbar-collapse collapse">
            <div class="menu">
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="login_nmd1.php">Home</a></li>
                    <li role="presentation"><a href="register_nmd.php">Register new patient</a></li>
                    <li role="presentation"><a href="view_nmd.php">View patient</a></li>
                    
                    <?php
                    if(!isset($_SESSION['logged_in']) || $_SESSION['logged_in']!=true)
                    {
                        ?>
                        <li role="presentation"><a href="login.php">Login</a></li>
                        <li role="presentation"><a href="signup.php">Signup</a></li>
                        <?php
                    }

                    else
                    {
                        ?>
                        <li role="presentation"><a href="survey_nmd.php">Survey patients</a></li>

                        <li role="presentation"><a href="logout_nmd.php">Logout</a></li>
                        <?php
                    }
                    ?>

                </ul>
            </div>
        </div>
    </div>
</nav>