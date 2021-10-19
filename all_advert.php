<?php
$name_page = 'Toutes les annonces';
include 'header.php';
?>

<main class="main-container">
      <h1>Toutes les annonces : <?= $reqAdvertAllList->rowCount() ?> annonces trouvée</h1>
      <div class="advert-list-container">
            <?php if ($reqAdvertAllList->rowCount() ==! 0) :
                  while ($value = $reqAdvertAllList->fetch()) : ?>
                        <article class="card <?= htmlspecialchars($value['type']) ?> <?php echo ($value['reservation_message']) ? 'reserved' : ''; ?>">
                              <h2><?= htmlspecialchars($value['title']) ?></h2>
                              <p><strong>Lieux : </strong> <?= htmlspecialchars($value['city']) . ' - ' .  htmlspecialchars($value['postal_code']); ?></p>
                              <p><strong>Type : </strong><?= htmlspecialchars($value['type']) ?> </p>
                              <p><strong>Statut : </strong><?php echo ($value['reservation_message']) ? 'Réservé &#128308;' : 'Libre &#128309;'; ?> </p>
                              <strong><a href="advert.php?id=<?= htmlspecialchars($value['id']) ?>">>> Voir l'annonce</a></strong>
                        </article>
                  <?php endwhile;
                  $reqAdvertList->closeCursor();
            else : ?>

                  <p><strong>Aucune annonce trouvé</strong></p>

            <?php endif; ?>
      </div>



</main>