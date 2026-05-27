<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Résultat J2EE</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f4f6f9; text-align: center; margin-top: 50px; }
        .box { border: 2px solid #2c3e50; width: 50%; margin: 0 auto; padding: 20px; background: white; border-radius: 8px; box-shadow: 0 4px 6px rgba(0,0,0,0.1); }
        h1 { color: #2c3e50; }
        .msg { color: #27ae60; font-size: 1.2em; font-weight: bold; background: #e8f8f5; padding: 12px; border-radius: 5px; }
        .data-box { text-align: left; background: #fcfcfc; padding: 15px; border: 1px dashed #7f8c8d; border-radius: 5px; margin-top: 20px; }
        span { font-weight: bold; color: #2980b9; text-transform: uppercase; }
    </style>
</head>
<body>

    <div class="box">
        <h1>Données Reçues avec Succès</h1>
        <hr>
        
        <p class="msg">${messageCoeff}</p>
        
        <div class="data-box">
            <h3>Utilisateur connecté :</h3>
            <p>👤 Nom : <span>${nomUser}</span></p>
            <p>👤 Prénom : <span>${prenomUser}</span></p>
        </div>
        
        <br>
        <a href="formulaire.jsp" style="color: #2c3e50; text-decoration: none; font-weight: bold;">← Modifier les informations</a>
    </div>

</body>
</html>