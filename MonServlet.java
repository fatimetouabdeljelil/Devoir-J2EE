package com.isb.tp4.servlets;

import com.isb.tp4.services.NotificationService;
import jakarta.inject.Inject;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/site")
public class MonServlet extends HttpServlet {

    @Inject 
    private NotificationService notificationService;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Récupération uniquement du Nom et du Prénom
        String nomSaisie = request.getParameter("nom");
        String prenomSaisie = request.getParameter("prenom");

        // Transmission des 2 variables
        request.setAttribute("nomUser", nomSaisie);
        request.setAttribute("prenomUser", prenomSaisie);

        // Relais vers le doGet (Schéma du tableau)
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Appel du service IoC pour les coefficients
        String messageIoC = notificationService.getMessageCoefficients();
        request.setAttribute("messageCoeff", messageIoC);
        
        // Redirection finale
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}