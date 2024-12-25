<!-- contenu de la page rechercher -->
<h1>Recherche de BDs</h1>
<div class="formulaire">
    <form action="index.php?a=rechercher" method="post">
        <fieldset>
            <legend>Critères de recherche</legend>
            <p>
                <select name="critere" id="critere" >
                    <option value="contient">Contient</option>
                    <option value="commence">Commence par</option>
                    <option value="finit">Finit par</option>
                    <option value="id">A pour id</option>
                    <option value="auteur">Nom d'auteur</option>
                    <option value="categorie">genre</option>
                </select>
                <label for="reponse"> : </label>
                <input type="text" name="reponse" id="reponse" value="<?php echo $_POST['titre']?>" \>
            </p>
        </fieldset>
        <p class="center"><input type="submit" value="Lister"/> <input type="reset" value="Effacer les champs"/></p>
    </form>
</div>
<?php
debug("Contenu de POST",$_POST);
if(!empty($_POST)){
    if ($_POST['critere'] == 'contient') {
        $requete = 'SELECT * FROM bd WHERE titre LIKE "%' . $_POST['reponse'] . '%" ORDER BY titre ASC';
    }
    elseif ($_POST['critere'] == 'finit') {
        $requete = 'SELECT * FROM bd WHERE titre LIKE "%'. $_POST['reponse'] . '" ORDER BY titre ASC';
    }
    elseif ($_POST['critere'] == 'commence') {
        $requete = 'SELECT * FROM bd WHERE titre LIKE "'.$_POST['reponse'].'%" ORDER BY titre ASC';
    }
    elseif ($_POST['critere'] == 'id') {
        $requete = 'SELECT * FROM bd WHERE id ='.$_POST['reponse'].' ORDER BY titre ASC';
    }
    elseif ($_POST['critere'] == 'auteur') {
        $requete = 'SELECT * FROM bd WHERE auteur ="'.$_POST['reponse'].'" ORDER BY titre ASC';
    }
    elseif ($_POST['critere'] == 'categorie') {
        $requete = 'SELECT * FROM bd WHERE genre ="'.$_POST['reponse'].'" ORDER BY titre ASC';
    }
    debug("requete",$requete);
    $reponse = $conn->query($requete);

    while ($donnees = $reponse->fetch()){
        affichage($donnees);
    };
}
?>


