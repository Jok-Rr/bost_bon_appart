<?php
include 'global.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
      <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
      <link rel="stylesheet" href="assets/stylesheets/css/reset.css">
      <link rel="stylesheet" href="assets/stylesheets/css/main.css">
      <title>Bon appart | <?= $name_page  ?></title>
</head>

<body>
      <nav>
            <div class="container-logo-site">
                  <figure>
                        <a href="."><img src="assets/data/logo_header.png" alt=""></a>
                  </figure>
            </div>
            <ul class="nav-link-container">
                  <li><a href="./" class="nav-link">Accueil</a></li>
                  <li><a href="add_advert.php" class="nav-link">Ajouter une annonce</a></li>
                  <li><a href="all_advert.php" class="nav-link">Consulter toutes les annonces</a></li>
            </ul>
      </nav>