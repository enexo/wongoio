<?php
    ob_start();

    require_once "./includes/db.php";
    require_once "./includes/queries.php";

    $queries = New \database\Queries($connection);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Wongo.io - The ITAM Eating Monster</title>
    <!-- Bootstrap Core CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/styles.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="container splash">
<h1 class="w-25 text-center">Wongo.io</h1>
<p class="w-25">Wongo.io is a proof of concept for the IT Asset Management (ITAM) industry.  Why pay huge money for what amounts to a
basic login/database structure that can be open-sourced and deployed at a fraction of the cost?  To see what it can do,
    register as a user or go to <a href="https://github.com/enexo/wongoio">Github</a> to view the source code.</p>
<p class="w-25">Wongo.io is an open-sourced PHP project licensed under the MIT License.  If you would like to contribute to the project,
    visit <a href="https://github.com/enexo/wongoio">Github</a> to see a list of issues currently being worked on.</p>

<!-- Login -->
<div class="well text-center w-25">
    <h4>Login</h4>
    <form action="includes/login.php" method="post">
        <div class="form-group">
            <input name="username" type="text" class="form-control" placeholder="rico">
        </div>
        <div class="input-group">
            <input name="password" type="password" class="form-control" placeholder="123">
            <span class="input-group-btn">
                    <button class="btn btn-primary" name="login" type="submit">Submit</button>
                </span>
        </div>
    </form>
    <a href="registration.php">New User Registration</a>
</div>
</div>


</body>
</html>