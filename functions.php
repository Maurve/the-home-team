<?php
    function pdo_connect_mysql() {
        $hostname = "localhost";
        $username = "root";
        $password = "";
        $dbname = "web_268";
    try {
    	return new PDO('mysql:host=' . $hostname . ';dbname=' . $dbname . ';charset=utf8', $username, $password);
    } catch (PDOException) {
    	exit('Cannot connect to database');
    }
}
?>