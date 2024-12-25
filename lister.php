<?php
    $reponse = $conn -> prepare('SELECT * FROM bd');
    while ($donnees = $reponse -> fetch()) {
        echo donnees['titre'];
        echo $donnees['description'];
        echo $donnees['auteur'];
        echo $donnees['nb_pages'];

    }