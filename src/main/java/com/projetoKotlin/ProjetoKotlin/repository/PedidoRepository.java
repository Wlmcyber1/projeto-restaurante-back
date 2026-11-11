package com.projetoKotlin.ProjetoKotlin.repository;

import com.projetoKotlin.ProjetoKotlin.model.Pedido;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface  PedidoRepository extends JpaRepository<Pedido, Long> {

    List<Pedido> findByStatusOrderByDataCriacaoAsc(String status);
}
