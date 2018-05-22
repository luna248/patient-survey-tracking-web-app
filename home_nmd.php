
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
            <a class="navbar-brand" href="login_nmd.php"><span>Neuro MD</span></a>
        </div>
        <div class="navbar-collapse collapse">
            <div class="menu">
                <ul class="nav nav-tabs" role="tablist">
                    <?php
                    if(!isset($_SESSION['logged_in']) || $_SESSION['logged_in']!=true)
                    {
                    ?>
                    <li role="presentation" class="active"><a href="home_nmd.php">Home</a></li>
                    <li role="presentation"><a href="Registration.php">Register new patient</a></li>
                    <li role="presentation"><a href="View.html">View patient</a></li>
                    <li role="presentation"><a href="survey.html">Survey patients</a></li>
                    <li role="presentation"><a href="logout_nmd.php">Logout</a></li>
                    <?php
                    }
                    ?>

                </ul>
            </div>
        </div>
    </div>
</nav>