package com.proyecto.iniciarSesion.service;
import org.apache.tomcat.util.file.ConfigurationSource.Resource;
import org.springframework.stereotype.Service;

import com.proyecto.iniciarSesion.entity.UsuarioEntity;
import com.proyecto.iniciarSesion.exception.ResourceNotFoundException;
import com.proyecto.iniciarSesion.repository.UsuarioRepository;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class UsuarioService {
    
UsuarioRepository oUsuarioRepository;

AuthService oAuthService;



}