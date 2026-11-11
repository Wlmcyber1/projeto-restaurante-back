package com.projetoKotlin.ProjetoKotlin.repository;

import com.projetoKotlin.ProjetoKotlin.model.Categoria;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoriaRepository extends JpaRepository<Categoria, Long> {
}
