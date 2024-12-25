<html lang="fr">
    <head>
        <title>Bd Manager</title>
        <link rel="icon" type="image/png" href="../bd.png">
    </head>
    <body>
        <?php
            include 'conf.php';
        ?>
        <div id="titre">
            <h1>Bd Manager</h1>
        </div>
        <div id="menu">
            <ul id="onglets">
                <li><a href="index.php?a=lister">Liste des bd</a></li>
                <li><a href="index.php?a=rechercher">Rechercher une bd</a></li>
                <li><a href="index.php?a=ajouter">Ajouter une bd</a></li>
            </ul>
        </div>
        <div id="page">
            <?php
                if (!empty($_GET['a'])) {
                    if (is_file($_GET['a'].'.php')) {
                        include $_GET['a'].'.php';
                    }
                }
                else{
                    include 'lister.php';
                }
            ?>
        </div>
        <div id="footer">
            <p>Crédits :</p>
            <a href="https://www.flaticon.com/fr/icones-gratuites/bande-dessinee" title="bande dessinée icônes">Bande dessinée icônes créées par Freepik - Flaticon</a>
        </div>
    </body>
</html>
