<?php
//information sur la base de données
// A MODIFIER SI NECESSAIRE
$serveur = 'localhost';
$nomBD = 'bd';
$login = 'root';
$mdp = 'root';
//tentative de connexion à MySQL via PDO
try
{
    $conn = new PDO('mysql:host='.$serveur.';dbname='.$nomBD.';charset=utf8', $login, $mdp);
}
catch (Exception $e)
{
    die('Erreur : ' . $e->getMessage());
}



error_reporting(1); // Turn off warning, deprecated, notice everything except error
/* ------------------------------------------------------------------------------------------------
 * Fonctions utiles
 *
 *-------------------------------------------------------------------------------------------------*/
//Gère l'affichage des les variables
function debug(){
    $saut_ligne="<br />";
    $arg_list = func_get_args();
    echo '<div class="debug">'."\n";
    echo ' ------ DEBUG ------ '.$saut_ligne;
    foreach($arg_list as $var){
        if(is_array($var)){
            $affichage_var = print_r($var,true);
            $affichage_var = "<pre>".$affichage_var."</pre>".$saut_ligne;
            echo $affichage_var;
        }
        else echo $var.$saut_ligne;
    }
    echo '</div>'."\n";
}

function affichage($donnees)
{
    echo '<div>';
    echo '<img src="' . $donnees['path_to_image'] . '.jpg"/>';
    echo '<h1>' . $donnees['titre'] . '<h1/>';
    echo $donnees['description'];
    echo $donnees['auteur'];
    echo $donnees['nb_pages'];
    echo $donnees['resume'];
    echo '</div>';
}
?>
