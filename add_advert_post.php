<?php

//! PAGE REQUIRMENT !//
include 'global.php';


if (isset($_POST)) {

      $_SESSION['error']["flash_message"] = "";

      //! POSSIBLE ERROR CHECKS !//
      if (empty($_POST['advert_title']) || empty($_POST['advert_postal_code']) || empty($_POST['advert_postal_city']) || empty($_POST['advert_desc']) || empty($_POST['advert_type']) || empty($_POST['advert_price'])) {

            //! FLASH MESSAGE + REDIRECT !//
            $_SESSION['error']["flash_message"] = "Veuillez remplir les champs";
            header('Location: add_advert.php');
      } elseif (strlen($_POST['advert_title']) > 100 || strlen($_POST['advert_postal_code']) > 5 || strlen($_POST['advert_postal_city']) > 100 || strlen($_POST['advert_price']) > 20) {

            //! FLASH MESSAGE + REDIRECT !//
            $_SESSION['error']["flash_message"] = "Vous avez dépasser la limite de caractère";
            header('Location: add_advert.php');
      } elseif ($_POST['advert_type'] == "" || filter_var($_POST['advert_postal_code'], FILTER_VALIDATE_INT) == false || filter_var($_POST['advert_price'], FILTER_VALIDATE_INT) == false) {

            //! FLASH MESSAGE + REDIRECT !//
            $_SESSION['error']["flash_message"] = "Entrer des informations correcte";
            header('Location: add_advert.php');
      }

      //! REGISTRATION IN DB, IF ERR === 0 !//
      if (empty($_SESSION['error']["flash_message"])) {

            $req = $bdd->prepare("INSERT INTO advert(title, description, postal_code, city, type, price) VALUE(:title, :description, :postal_code, :city, :type, :price)");
            $req->execute([
                  "title" => $_POST['advert_title'],
                  "description" => $_POST['advert_desc'],
                  "postal_code" => $_POST['advert_postal_code'],
                  "city" => $_POST['advert_postal_city'],
                  "type" => $_POST['advert_type'],
                  "price" => $_POST['advert_price']
            ]);
            //! FLASH MESSAGE + REDIRECT !//
            $_SESSION['success']["flash_message"] = "Votre annonce à bien été enregistré";
            header('Location: add_advert.php');
      }
} else {
      //! REDIRECT !//
      header('Location: add_advert.php');
}
