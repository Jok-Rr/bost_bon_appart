<?php


session_start();

include "app/db_connect.php";
include 'app/function.php';


$reqAdvertList = $bdd->query('SELECT * FROM advert ORDER BY ID DESC LIMIT 0, 16');


$reqAdvertAllList = $bdd->query('SELECT * FROM advert ORDER BY ID DESC');
