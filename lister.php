<?php
    echo 'Hello World!';
    $reponse = $conn->query('SELECT * FROM bdgaby.bd');
    while ($donnees = $reponse -> fetch()) {
        debug($donnees);
        echo $donnees['titre'];
        echo $donnees['description'];
        echo $donnees['auteur'];
        echo $donnees['nb_pages'];
    }