<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Saisir Produit</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">

</head>
<body>
	<h1>Saisie Produit</h1>
	<form action="AfficheProduit.jsp" method="post">
		Code: <input type="text" name="code" required><br> Nom: <input
			type="text" name="nom" required><br> Catégorie: <input
			type="text" name="categorie" required><br> Prix unitaire: <input
			type="number" name="prixUnitaire" required><br> Quantité: <input
			type="number" name="quantite" required><br> Date de livraison: <input
			type="date" name="dateLivraison" required><br> Fournisseur: <input
			type="text" name="fournisseur" required><br> <input type="submit"
			value="Ajouter"> <input type="reset" value="Effacer">
	</form>
</body>
</html>