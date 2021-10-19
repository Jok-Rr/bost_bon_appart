<?php

$name_page = 'title';
include 'header.php';

$reqAdvertSingle = $bdd->prepare('SELECT * FROM advert WHERE id=?');
$reqAdvertSingle->execute([$_GET['id']]);
$value = $reqAdvertSingle->fetch();
?>

<main class="main-container">
      <article class="card">
            <h1><?= $value['title'] ?></h1>
            <p><strong>Lieux : </strong> <?= htmlspecialchars($value['city']) . ' - ' .  htmlspecialchars($value['postal_code']); ?></p>
            <p><strong>Type : </strong><?= htmlspecialchars($value['type']) ?> </p>
            <p><strong>Statut : </strong><?php echo ($value['reservation_message']) ? 'Réservé &#128308;' : 'Libre &#128309;'; ?> </p>
            <p><strong>Prix : </strong><?= htmlspecialchars($value['price']) ?>€ </p>
            <p><strong>Description : </strong><?= htmlspecialchars($value['description']) ?> </p>
      </article>
      <div class="message-reservation-container">

            <?php
            echo flashError();
            echo flashSuccess();
            if (!empty($value['reservation_message'])) : ?>
                  <h3>Le commentaires de réservation</h3>
                  <p>❝ <?= htmlspecialchars($value['reservation_message']) ?> ❞</p>
            <?php else : ?>
                  <h2>Réserver le bien</h2>
                  <form action="add_reservation_message.php?>" method="post">
                        <p>
                              <input type="hidden" name="id" value="<?= htmlspecialchars($value['id']) ?>">
                        </p>
                        <p>
                              <label for="reservation_message">Message de reservation :</label>
                              <textarea name="reservation_message" id="reservation_message"></textarea>
                        </p>
                        <input type="submit" value="Je réserve">
                  </form>
            <?php endif; ?>
      </div>

</main>