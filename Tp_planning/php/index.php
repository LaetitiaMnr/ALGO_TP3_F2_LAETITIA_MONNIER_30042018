<!-- Laetitia Monnier -->
<!DOCTYPE html>
<html>
	<head>
		<title>Ludus Académie</title>
		<meta charset="utf-8">
		<link rel="stylesheet" href="../css/styleIndex.css" />
		<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet"> 
		<link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet"> 
	</head>
	<body>
		<?php include 'menu.php' ?>

		<section class="sec">
			<h1 id="cours"> Cours </h1>
			<form method="POST" action="#cours">
				<input type="text" name="idCours" placeholder="Id cours" autofocus request>
				<input type="text" name="idClasse" placeholder="Classe" request>
				<input type="text" name="idSalle" placeholder="Salle" request>
				<input type="text" name="idJour" placeholder="Jour" request>
				<input type="text" name="trancheH" placeholder="Tranche horaire" request>
				<input type="text" name="idMatiere" placeholder="Matiere" request>
				<input type="text" name="idNom" placeholder="Nom du cours" request>
				<input type="submit" name="send1" value="Send">
			</form>
			<?php 

				$host = "localhost";
				$user = "root";
				$pass = "";
				$db = "tp_planning";
				 
				$link = mysqli_connect($host,$user,$pass, $db);
				if($link === false)
					die("ERROR: Could not connect. " . mysqli_connect_error());

				if(isset($_REQUEST['send1'])) {
					$cours = $_REQUEST['idCours'];
					$classe = $_REQUEST['idClasse'];
					$salle = $_REQUEST['idSalle'];
					$jour = $_REQUEST['idJour'];
					$trH = $_REQUEST['trancheH'];
					$matiere = $_REQUEST['idMatiere'];
					$nom = $_REQUEST['idNom'];

					$sql = "INSERT INTO COURS (ID_COURS, ID_CLASSE, ID_SALLE, ID_JOUR, ID_TRANCHE_HORAIRE, ID_MATIERE, NOM_COURS) VALUES ('$cours', '$classe', '$salle', '$jour', '$trH', '$matiere', '$nom')";
					
					if(mysqli_query($link, $sql)){

					    echo "<p class = 'p1'> Records added successfully. </p>";
					} else{

					    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);

					}
					// close connection
					mysqli_close($link);
				}
			?>
		</section>

		<section class="sec">
			<h1 id="eleve"> Elèves </h1>
				<form  method="POST" action="#eleve">
					Choisissez une classe afin d'afficher la liste :
					<?php require_once 'listeEleves.php';?>
					<input type="submit" name="send" value="Send">
				</form>
				<?php 
						if(isset($_REQUEST['send'])) {
							$contenuSelect = $_REQUEST['laSelection'];
							if(isset($contenuSelect)) {
								$sql = "SELECT * from ELEVE WHERE ID_CLASSE = \"$contenuSelect\"";
								if (!$connexion->query($sql))
									echo "Erreur...";
								else {
									echo "<table>";
									foreach ($connexion->query($sql) as $contenu){
										echo "<tr>";
										echo "<td>".$contenu['ID_ELEVE']."</td>";
										echo "<td>".$contenu['NOM_ELEVE']."</td>";
										echo "<td>".$contenu['PRENOM_ELEVE']."</td>";
										echo "<td>".$contenu['MAIL_ELEVE']."</td>";
										echo "</tr>";
									}
									echo "<table>";
								}
							}
						}
					?>
		</section>

		<section class="sec">
			<h1 id="enseignant"> Enseignants </h1>
				<p> dgdfg </p>
		</section>

		<section class="sec">
			<h1 id="planning"> Planning </h1>
				<p> dgdfg </p>
		</section>

			
	</body>
</html>