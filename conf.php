<?php
    $username = 'root';
    $password = 'root';
    $bdd = 'bdd';
    $conn = new PDO('mysql:host=localhost;dbname='.$bdd.';charset=utf-8', $username, $password);
?>