package com.proyecto.iniciarSesion.service;

import java.util.Date;
import java.util.Map;
import java.util.UUID;
import javax.crypto.SecretKey;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.security.Keys;

public class JWTService {
    
    @Value("${jwt.subject}")
    private String SUBJECT;
    @Value("${jwt.issuer}")
    private String ISSUER;
    @Value("${jwt.secret}")
    private String secretKey;


     private SecretKey getSecretKey() {    
        return Keys.hmacShaKeyFor(secretKey.getBytes());
    }
    public String generateToken(Map<String, String> claims) {
        return Jwts.builder()
                .id(UUID.randomUUID().toString())   // ID único del token
                .claims(claims)                     // Información adicional (ejemplo: email)
                .subject(SUBJECT)                   // Asigna el "subject" desde la configuración
                .issuer(ISSUER)                     // Define quién emite el token
                .issuedAt(new Date())               // Fecha de emisión
                .expiration(new Date(System.currentTimeMillis() + 6000000))  // Expira en 100 minutos
                .signWith(getSecretKey(), Jwts.SIG.HS256) // Firma el token con la clave secreta
                .compact(); // Compacta y devuelve el token en formato String
    }
    
    // Método para extraer los datos de un token
        private Claims getAllClaimsFromToken(String token) {
        return Jwts.parser().verifyWith(getSecretKey()).build().parseSignedClaims(token).getPayload();
    }

    public String validateToken(String sToken) {
        Claims oClaims = getAllClaimsFromToken(sToken);
    
        if (oClaims.getExpiration().before(new Date())) {
            return null;  // Token expirado
        }
    
        if (oClaims.getIssuedAt().after(new Date())) {
            return null;  // Token inválido
        }        
    
        if (!oClaims.getIssuer().equals(ISSUER)) {
            return null;  // Emisor incorrecto
        }
    
        if (!oClaims.getSubject().equals(SUBJECT)) {
            return null;  // Subject incorrecto
        }
        
        return oClaims.get("email", String.class);  // Devuelve el email si el token es válido
    }
    

}
