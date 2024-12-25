<?php
    $reponse = $conn->query('SELECT * FROM bdgaby.bd');
    while ($donnees = $reponse -> fetch()) {
        affichage($donnees);
    }

