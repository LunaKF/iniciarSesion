package com.proyecto.iniciarSesion.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.iniciarSesion.repository.UsuarioRepository;

import jakarta.servlet.http.HttpServletRequest;

@Service
public class AuthService {
    
    @Autowired
    UsuarioRepository oUsuarioRepository;

    @Autowired
    HttpServletRequest oHttpServletRequest;

    
}
