<?php

//make into an array $db
$db['db_host'] = "localhost";
$db['db_user'] = "root";
$db['db_pass'] = "";
$db['db_name'] = "wongoio";

//makes the values of the array constants
foreach($db as $key => $value) {
    define(strtoupper($key), $value);
}

//actual connection
$connection = mysqli_connect(DB_HOST, DB_USER,DB_PASS,DB_NAME);