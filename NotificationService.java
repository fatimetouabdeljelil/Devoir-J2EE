package com.isb.tp4.services;
import jakarta.enterprise.context.RequestScoped;
@RequestScoped
public class NotificationService {

    public String getMessageCoefficients(){
        return "Message des coefficients : Les modules J2EE ont été chargés avec succès via IoC (CDI) !";
    }
}