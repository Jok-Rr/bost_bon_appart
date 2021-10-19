<?php

//! PAGE REQUIRMENT !//
include 'global.php';

if (isset($_POST)) {
      $_SESSION['error']["flash_message"] = "";

      //! POSSIBLE ERROR CHECKS !//
      if (empty($_POST['reservation_message'])) {

            //! FLASH MESSAGE + REDIRECT !//
            $_SESSION['error']["flash_message"] = "Veuillez indiquez un message de réservation";
            header("Location: advert.php?id= " . $_POST['id']);
      }
      //! REGISTRATION IN DB, IF ERR === 0 !//
      if (empty($_SESSION['error']["flash_message"])) {

            $req = $bdd->prepare("UPDATE advert SET reservation_message = :reservation_message WhERE id = :id ");
            $req->execute([
                  "reservation_message" => $_POST['reservation_message'],
                  "id" => $_POST['id']
            ]);
            //! FLASH MESSAGE + REDIRECT !\ !//
            $_SESSION['success']["flash_message"] = "Le message pour réserver l'annonce à été envoyé";
            header("Location: advert.php?id= " . $_POST['id']);
      }
} else {
      //! REDIRECT !//
      header("Location: advert.php?id= " . $_POST['id']);
}
