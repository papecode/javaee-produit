<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.esmt.model.Produit"%>
<%@ page import="java.text.SimpleDateFormat"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Affichage Produit</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">

</head>
<body>
	<h1>Afficher Produit</h1>

    <%
	    Produit produit = new Produit();
	    produit.setCode(request.getParameter("code"));
	    produit.setNom(request.getParameter("nom"));
	    produit.setCategorie(request.getParameter("categorie"));
	    produit.setPrixUnitaire(Double.parseDouble(request.getParameter("prixUnitaire")));
	    produit.setQuantite(Integer.parseInt(request.getParameter("quantite")));
	    produit.setDateLivraison(new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("dateLivraison")));
	    produit.setFournisseur(request.getParameter("fournisseur"));
    %>
    <form action="SaisieProduit.jsp" method="post">
            Code: <input type="text" readonly name="code" id="code"
                value="<%=produit.getCode()%>">
            Nom: <input type="text" readonly name="nom" id="nom"
                value="<%=produit.getNom()%>">
            Catégorie: <input type="text" readonly name="categorie" id="categorie"
                value="<%=produit.getCategorie()%>">
            Prix unitaire: <input type="number" readonly name="prixUnitaire" id="prixUnitaire"
                value="<%=produit.getPrixUnitaire()%>">
            Quantité: <input type="number" readonly name="quantite" id="quantite"
                value="<%=produit.getQuantite()%>">
            Date de livraison: <input type="text" readonly name="dateLivraison" id="dateLivraison"
                value="<%=new SimpleDateFormat("dd-MM-yyyy").format(produit.getDateLivraison())%>">
            Fournisseur: <input type="text" readonly name="fournisseur" id="fournisseur"
                value="<%=produit.getFournisseur()%>">
        <input type="submit" value="Retour" onclick="window.location.href='SaisieProduit.jsp'">
        <input type="button" id="effacerBtn" value="Effacer" onclick="effacerFormulaire()">
    </form>
    
    <script>
        function effacerFormulaire() {
            document.getElementById("code").value = "";
            document.getElementById("nom").value = "";
            document.getElementById("categorie").value = "";
            document.getElementById("prixUnitaire").value = "";
            document.getElementById("quantite").value = "";
            document.getElementById("dateLivraison").value = "";
            document.getElementById("fournisseur").value = "";
        }
</script>

</body>
</html>
