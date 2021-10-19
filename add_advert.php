<?php
$name_page = 'Ajouter une annonce';
include 'header.php';

?>

<main class="main-container">

      <h1>Ajouter une annonce :</h1>

      <?php echo flashError(); ?>
      <?php echo flashSuccess(); ?>
      <form action="add_advert_post.php" method="post" class="advert_add_form">
            <p>
                  <label for="advert_title">Titre de l'annonce :</label>
                  <input type="text" id="advert_name" name="advert_title" placeholder="Titre de l'annonce">
            </p>
            <p>
                  <label for="advert_postal_code">Code postal :</label>
                  <input oninput="maxLengthCheck(this)" type="number" id="advert_postal_code" name="advert_postal_code" placeholder="Code postal" maxlength="5">
                  <label for="advert_postal_city">Ville :</label>
                  <input type="text" id="advert_postal_city" name="advert_postal_city" placeholder="Ville" require>
            </p>
            <p>
                  <label for="advert_desc">Description de l'annonce :</label>
                  <textarea name="advert_desc" id="advert_desc" cols="30" rows="10" placeholder="Description de l'annonce"></textarea>
            </p>
            <p>
                  <label for="advert_type">Type de l'annonce</label>
                  <select name="advert_type" id="advert_type">
                        <option value="">Type d'annonce</option>
                        <option value="location">Location</option>
                        <option value="vente">Vente</option>
                  </select>
            </p>
            <p>
                  <label for="advert_price">Prix</label>
                  <input type="number" id="advert_price" name="advert_price" placeholder="Prix">
            </p>
            <p>
                  <button type="submit">Ajouter l'annonce</button>
            </p>
      </form>
</main>
<script>
      function maxLengthCheck(object) {
            if (object.value.length > object.maxLength)
                  object.value = object.value.slice(0, object.maxLength)
      }

      function isNumeric(evt) {
            var theEvent = evt || window.event;
            var key = theEvent.keyCode || theEvent.which;
            key = String.fromCharCode(key);
            var regex = /[0-9]|\./;
            if (!regex.test(key)) {
                  theEvent.returnValue = false;
                  if (theEvent.preventDefault) theEvent.preventDefault();
            }
      }
</script>