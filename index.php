<!DOCTYPE html>

<html>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<meta charset="utf-8" />

<?php
try {
    // On se connecte à MySQL
    if (file_exists('.firstrun'))
        $bdd = new PDO('mysql:host=db;dbname=ecran;charset=utf8', 'root', '');
    else
        $bdd = new PDO('mysql:host=localhost;dbname=ecran;charset=utf8', 'root', '');
} catch (Exception $e) {
    // En cas d'erreur, on affiche un message et on arrête tout
    die('Erreur : ' . $e->getMessage());
}

// Si tout va bien, on peut continuer
?>

<?php
$dateactuelle = date("Y-m-d H:i:s"); //Date et Heure actuelles -1
$dateactuelle = date("Y-m-d H:i:s", strtotime($dateactuelle . ' +7 hour'));
var_dump($dateactuelle);
$var = 1; //Initialisation de la variable de sélection de la boucle voulue
$boninterval = False; //Initialisation de la condition d'arrêt de la boucle while qui suit
while ($boninterval == False) // on parcourt la table "boucles", dès qu'on trouve la table dont les attributs "heure_debut" et "heure_fin" encadrent la variable dateactuelle, on s'arrête.
{
    $reponse = $bdd->query("SELECT id, nom, heure_debut, heure_fin, nomboucle
                             FROM boucles
                             WHERE id = {$var}");
    $donnees = $reponse->fetch();

    if ($dateactuelle >= $donnees['heure_debut'] && $dateactuelle <= $donnees['heure_fin']) {
        $boninterval = True;
    }
    $var += 1;
}
$var -= 1;
?>

<?php
$url = 'affichage.php?id=' . '1' . '&tablename=' . $donnees['nomboucle'];
?> <!-- Création de l'url qu'on va appeler -->


<!-- Fonction d'appel de la page affichage -->
<script>
    window.location.href = "<?php echo $url ?>";
</script>

</html>
<!-- test>
 