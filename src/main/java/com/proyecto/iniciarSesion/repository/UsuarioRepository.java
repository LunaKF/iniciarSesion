package com.proyecto.iniciarSesion.repository;

import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.proyecto.iniciarSesion.entity.UsuarioEntity;

public interface UsuarioRepository {

     Optional<UsuarioEntity> findByEmail(String email);

     Optional<UsuarioEntity> findByEmailAndPassword(String email, String password);

     Page<UsuarioEntity> findByNombreContainingOrApellido1ContainingOrApellido2ContainingOrEmailContaining(
        String filter2, String filter3, String filter4, String filter5, Pageable oPageable);
}
