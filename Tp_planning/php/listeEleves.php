<?php
	require_once 'connect.php';

	$dsn = "mysql:dbname=".BASE.";host=".SERVER;
	try{
		$connexion=new PDO($dsn,USER,PASSWD);
	 }
	 catch(PDOexception $e){
	 	printf("Echec de la connexion : %s\n", $e->getMessage());
	 	exit();
	 }

	$sql = "SELECT ID_CLASSE from CLASSE";
	if (!$connexion->query($sql))
		echo "Erreur !";
	else {
		echo "<select name = 'laSelection'>";
		foreach ($connexion->query($sql) as $contenu) {
			echo "<option required>".$contenu['ID_CLASSE']."</option>";
		}
		echo "</select>";
	}
;?>