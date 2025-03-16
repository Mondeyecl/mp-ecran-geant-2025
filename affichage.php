<!DOCTYPE html>
<html>
<!-- Fonction -->
<?php
function send_post_request($data)
{
	$url = 'https://challenger.challenge-centrale-lyon.fr/api/';
	$headers = array('Content-Type: application/x-www-form-urlencoded; charset=UTF-8');
	// initiates a CURL session
	$curl = curl_init();
	// sets the CURLOPT_URL option to the URL to send the request
	curl_setopt($curl, CURLOPT_URL, $url);
	// sets the CURLOPT_POST option to true to send a POST request
	curl_setopt($curl, CURLOPT_POST, true);
	// sets the CURLOPT_POSTFIELDS option to the data to send
	curl_setopt($curl, CURLOPT_POSTFIELDS, http_build_query($data));
	// sets the CURLOPT_HTTPHEADER option to the headers
	curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
	// sets the CURLOPT_RETURNTRANSFER option to true to return the transfer as a string of the return value
	curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
	// executes the CURL session
	$response = curl_exec($curl);
	// gets the HTTP status code
	$status = curl_getinfo($curl, CURLINFO_HTTP_CODE);
	// closes the CURL session
	curl_close($curl);

	return array(
		'status' => $status,
		'response' => $response
	);
}
function get_api_response($request_data)
{
	$public_token = '4d6a0b11860fd74d2d7f9d271b246e8957b9f92a';
	$private_token = '6fbd18cd1d81fa9eb1f6086347fc05dbff82a144';
	$data = $request_data;
	$data['public_token'] = $public_token;

	ksort($data);
	$query_string = http_build_query($data);
	$signature = sha1($query_string . '&' . $private_token);
	$data['signature'] = $signature;

	return json_decode(send_post_request($data)['response'], true);
}
function convertToAssociativeArray($array)
{
	$resultArray = array();
	foreach ($array as $item) {
		$resultArray[$item['sport'] . ' ' . $item['sexe']] = $item;
	}
	return $resultArray;
}

function getTournoiIDFromSport($sportName)
{
	$data = array(
		'module' => 'sport',
		'action' => 'getSports',
	);
	$sports = get_api_response($data)['sports'];
	$element = convertToAssociativeArray($sports);
	return $element[$sportName]['id'];
}
function getPhaseIDFromTounoi($tournoiID, $type)
{
	$data = array(
		'module' => 'tournoi',
		'action' => 'getPhasesTournoi',
		'id' => $tournoiID,
	);
	$phases = get_api_response($data)['phases'];
	$element = convertToAssociativeArray($phases);
	return $element['Phase finale']['id'];
}
?>

<!-- Métadonnées -->

<head>

	<link rel="stylesheet" href="css/visuel_default_page.css">
	<link rel="stylesheet" href="css/visuel_fullscreen.css">
	<link rel="stylesheet" href="css/visuel_stream.css">
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
	<meta charset="utf-8" />

	<?php
	$table = $_GET['tablename']; //Contient le nom de la boucle en cours
	$num = $_GET['id']; //Contient le numéro de la page que l'on veut afficher dans la boucle en cours
	
	try {
		// On se connecte à MySQL
		if (file_exists('.firstrun')) {
			$ecranDB = new PDO('mysql:host=db;dbname=ecran;charset=utf8', 'root', '');
		} else {
			$ecranDB = new PDO('mysql:host=localhost;dbname=ecran;charset=utf8', 'root', '');
		}
	} catch (Exception $e) {
		// En cas d'erreur, on affiche un message et on arrête tout
		die('Erreur : ' . $e->getMessage());
	}

	// Si tout va bien, on peut continuer
	//on récupère les infos de la page que l'on veut générer
	$reponse = $ecranDB->query('SELECT id, nom, TIME_TO_SEC(duree) as secondes, types, modele, urls, titre
                            FROM ' . $table . ' WHERE id = ' . $num);
	$donnees = $reponse->fetch();

	//Conversion de l'attribut "duree" de la boucle en cours en ms
	$time = (int) $donnees['secondes'];
	$time = $time * 1000; //Contient la durée d'affichage de la page en ms
	
	$types = explode(',', str_replace(' ', '', $donnees['types'])); //Enlève les espaces et transforme en liste
	$currentImage = 1;

	if (!empty($donnees['urls'])) {
		$urls = explode(',', str_replace(' ', '', $donnees['urls']));
	}
	?>
</head>
<!-- Fin des métadonnées -->


<!-- Lien vers la page css de style-->
<link rel="stylesheet" href="css/default_page.css" />
<link rel="stylesheet" href=<?php echo "css/visuel_" . $donnees['nom'] . ".css" ?> />
<!--Appelle le bon css en fonction du modele -->


<div id="page">
	<!-- Tête de la page -->
	<div id="header">
		<div class='Titre'></div>
		<span id="horloge"></span>
		<!-- Fonction pour l'horloge -->
		<script>
			var VAL = 10; //Fixe ton intervalle de calcul , 1 seconde
			var horloge = function (interval) {
				window.setInterval(function () {
					var timer = document.getElementById("horloge");
					var heure = new Date();
					var h = heure.getHours();
					var m = heure.getMinutes();

					if (h < 10) {
						h = "0" + h;
					}
					if (m < 10) {
						m = "0" + m;
					}
					timer.textContent = h + ":" + m;
				}, interval);
			}(VAL);
		</script>
	</div>
	<!-- Fin de la tête de la page -->


	<!-- Corps de la page -->
	<div id="content">
		<img id="logo" src="Content/Images/logo_blanc.png" />
		<?php if ($donnees['nom'] == 'fullscreen') { ?> <!--AFFICHE EN FULLSCREEN-->
			<img id="Image"
				style="position:absolute; left:0%; top:0%; height:100%; width:100%; object-fit: contain; max-height: 100%; max-width: 100%; border:none;"
				src="Content/Images/<?php echo $donnees['urls'] ?>" />
		<?php } elseif ($donnees['nom'] == 'video') { ?> <!--AFFICHE UNE VIDEO-->
			<div>
				<iframe
					style="position:absolute; left:0%; top:0%; height:100px; width:100px; border:none;"
					src="https://youtu.be/2AU0vY1NuHQ" allow="autoplay"></iframe>
			</div>
		<?php } elseif ($donnees['nom'] == 'stream') { ?> <!--STREAM DES MATCHS-->
			<?php
			$equipeA = "Centrale Nantes";
			$equipeB = "Centrale Lyon";
			$setA = "0";
			$setB = "50";
			$setsA = array(0);
			$setsB = array(2);
			?>
			<div id='stream'>
				<iframe id='flux' src="https://www.youtube.com/embed/9Auq9mYxFEE?rel=0&amp;autoplay=1&mute=1"
					allow="autoplay" allowfullscreen></iframe>
				<div id=overlay>
					<img id="overlayImg" src="Content/Images/overlay_volley.png" /> <!-- A modifier en fonction du sport -->
					<span id='teamA' class="score">
						<?php echo $equipeA ?>
					</span>
					<span id='scoreA' class="score">
						<?php echo $setsA[count($setsA) - 1] ?>
					</span>
					<span id='setA' class="score">
						<?php echo $setA ?>
					</span>
					<span id='teamB' class="score">
						<?php echo $equipeB ?>
					</span>
					<span id='scoreB' class="score">
						<?php echo $setsB[count($setsB) - 1] ?>
					</span>
					<span id='setB' class="score">
						<?php echo $setB ?>
					</span>
				</div>
			</div>

		<?php } elseif ($donnees['nom'] == 'navettes') { ?> <!--NAVETTES-->
			<?php $navettes = $ecranDB->query('SELECT * FROM trajets ORDER BY heure_depart')->fetchAll();
			$dateactuelle = (string) date("Y-m-d H:i:s");
			$colors = ['#a3238e', '#72bf44', '#adc5e7', '#f8aa97', '#fff200', '#dc9ad6', '#999999', '#faa61a', '#bce4e5']; ?>
			<table id='departs'>
				<tbody>
					<?php $line = 0 ?>
					<?php foreach ($navettes as $navette) { ?>
						<?php if ($dateactuelle < $navette['heure_depart'] && $line < 10) { ?>
							<?php $sports = explode(',', $navette['sports']);
							$teams = explode(',', $navette['equipes']);
							$sportIndex = 0; ?>
							<tr class='line<?php if ($line % 2 == 0) {
								echo 1;
							} else {
								echo 2;
							} ?>'>
								<td class='cell1'>
									<div style="background-color:<?php echo $colors[intval($navette['navette'])] ?>"><strong>
											<?php echo $navette['navette']; ?>
										</strong></div>
								</td>
								<td class='cell2'><strong>
										<?php echo substr($navette['heure_depart'], 10, 6); ?>
									</strong></td>
								<td class='cell3'><strong>
										<?php echo $navette['destination']; ?>
									</strong></td>
								<td class='cell4'>
									<marquee loop="-1" truespeed SCROLLDELAY="50">
										<?php $s = '<font color=goldenrod><strong>' . $sports[0] . '</strong></font>: ';
										foreach ($teams as $team) {
											if (str_replace(' ', '', $team) == '') {
												$sportIndex++;
												$s = $s . '<font color=goldenrod><strong>' . $sports[$sportIndex] . '</strong></font>: ';
											} else {
												$s = $s . $team . ', ';
											}
										}
										$s = substr($s, 0, strlen($s) - 2);
										echo $s; ?>
									</marquee>
								</td>
							</tr>
							<?php $line++;
						} ?>
					<?php } ?>

				</tbody>
				<table>
				<?php } elseif ($donnees['nom'] == 'village') { ?> <!--AFFICHE DU VILLAGE / HANDISPORT-->
					<p id="text"> Dimanche 19 Mars toute la matinée, au programme :
					<table id="list">
						<tr>
							<td>
								<li> Lunettes 360° </li>
							</td>
							<td>
								<li> Exposition photo </li>
							</td>
							<td>
								<li> Simulation de handicap </li>
							</td>
						</tr>
						<tr>
							<td>
								<li> Expositon Handisport </li>
							</td>
							<td>
								<li> DIY </li>
							</td>
							<td>
								<li> Quizz </li>
							</td>
						</tr>
						<tr>
							<td></td>
							<td>
								<li> Fresque climatique </li>
							</td>
							<td></td>
						</tr>
					</table>
					</p>
					<img id="Image1" src="Content/Images/village.png" />
					<img id="Image2" src="Content/Images/handisport.png" />
					<p id="blink"><strong> Des t-shirts handisports à gagner </strong></p>
					<script>
						setInterval(function () {
							blink.style.fontSize = "2vh";
							setTimeout(function () { blink.style.fontSize = "1.5vh"; }, 500);
						}, 1000);
					</script>

				<?php } elseif ($donnees['nom'] == 'RAVSS') { ?> <!--AFFICHES RAVSS-->
					<img id="Image1" src="Content/Images/RAVSS1.png" />
					<img id="Image2" src="Content/Images/logo_matrix.png" />
					<img id="Image3" src="Content/Images/RAVSS2.png" />
				<?php } elseif ($donnees['nom'] == 'scores') { ?> <!--AFFICHAGE DES SCORES-->
					<?php $sport = $donnees['urls'];
					$phaseIds = [
						'BasketF' => 77,
						'BasketH' => 179,
						'HandH' => 65,
						'HandF' => 55,
						'VolleyH' => 44,
						'VolleyF' => 60,
						'RugbyH' => 50,
						'RugbyF' => 105,
						'FootF' => 30,
						'FootH' => 110,
						'Tennis' => 13,
						'Tennis de Table' => 63,
						'Badminton' => 21,
						'Ultimate' => 93
					];
					$phaseHeight = [
						'BasketF' => 250,
						'BasketH' => 400,
						'HandH' => 300,
						'HandF' => 210,
						'VolleyH' => 470,
						'VolleyF' => 420,
						'RugbyH' => 100,
						'RugbyF' => 200,
						'FootF' => 400,
						'FootH' => 0,
						'Tennis' => 860,
						'Tennis de Table' => 500,
						'Badminton' => 21,
						'Ultimate' => 93
					]; ?>
					<h1>Résultats actuels en
						<?php echo $sport; ?>
					</h1>
					<div id="outerDiv">
						<?php
						$data = array(
							'module' => 'tournoi',
							'action' => 'getTournois',
						);
						$response = json_decode(get_api_response($data)['response'], true);
						var_dump($response['matchs']);
						?>
					</div>
					<script>
						var bottom = <?php echo 100 - $phaseHeight[$sport]; ?>;
						setInterval(function () {
							bottom += 0.1;
							if (bottom > <?php echo 420 - $phaseHeight[$sport]; ?>)
								bottom = <?php echo 100 - $phaseHeight[$sport]; ?>;
							console.log(bottom);
							flux.style.bottom = bottom + '%';
						}, 10)
					</script>

				<?php } elseif ($donnees['nom'] == 'VDP') { ?> <!--VIDEOS DE PROFIL-->
					<video id="vdp" src="Content/Videos/<?php echo $donnees['urls'] ?>.mp4" autoplay muted \>
					<?php } elseif ($donnees['nom'] == 'teaser') { ?> <!--TEASER-->
						<video id="trailer" src="Content/Videos/CTN.mp4" autoplay muted \>
						<?php } elseif ($donnees['nom'] == 'car') { ?> <!--COMPTE A REBOURS-->
							<div id="outerDiv">
								<iframe id='car' src="https://challenge-centrale-lyon.fr/index.php/fr/le-challenge/"
									allowfullscreen></iframe>
							</div>
						<?php } elseif ($donnees['nom'] == 'vendredi') { ?> <!--AFFICHE VENDREDI-->
							<img id="Image" src="Content/Images/vendredi<?php echo $donnees['urls']; ?>.png" \>

						<?php } elseif ($donnees['nom'] == 'ecureuil') { ?> <!--PETITS DEJEUNERS-->
							<p id="text"><strong> Les petits déjeuners sont à aller chercher au RU, en passant par
									l'ECureuiL </strong></p>
							<img id="fleche" src="Content/Images/fleche.png" \>
						<?php } ?>
	</div>
	<!-- Fin du corps de la page -->


	<!-- Pied de page -->
	<div id="footer" class="bande"> <!--Bande défilante-->
		<marquee loop="-1" truespeed SCROLLDELAY="30">
			<?php $url_2 = './info.txt';
			$raw_2 = file_get_contents($url_2, FILE_USE_INCLUDE_PATH);
			echo $raw_2; ?>
		</marquee>
	</div>
	<!-- Fin du pied de page -->
</div>



<!-- Fonction Timer -->
<script>
	// t = function() 
	// {
	// 	heure = new Date();
	// 	target = new Date('Saturday 26, 2022 05:00:00'); // Date à changer du pour celle du lancement de l'écran
	// 	m = target-heure;
	// 	s = Math.floor(m/1000);
	// 	m = s%1000;
	// 	min = Math.floor(s/60);
	// 	s = s%60;
	// 	h = Math.floor(min/60);
	// 	//console.log(h+':'+min+':'+s+':'+m);
	// 	var time = document.getElementById("timer");
	// 	//console.log(time);
	// 	time.textContent = h+':'+min+':'+s ;
	// }
	// window.setInterval(t, 10)
</script>


<!-- Automatisation du bouclage -->
<?php
$num = $num + 1; // On passe au numéro de page suivante dans la boucle à afficher--> 
$t = $ecranDB->query("SELECT COUNT(*) as taille_table FROM {$table} ");
$taille = $t->fetch(); //On récupère la taille de la boucle en cours (ie le nombre de pages qu'elle contient)

if ($num <= $taille['taille_table']) //Cas ou il reste des pages dans la boucle
{
	$url = 'affichage.php?id=' . $num . '&tablename=' . $table;
} else //Cas ou la boucle est finie et on retourne à l'index
{
	$url = 'index.php';
}
?>


<script>
	setTimeout(function () {
		window.location.href = "<?php echo $url ?>";
	}, <?php echo $time ?>);
</script>


</body>

</html>