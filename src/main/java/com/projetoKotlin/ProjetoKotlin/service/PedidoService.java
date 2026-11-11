package com.projetoKotlin.ProjetoKotlin.service;

import com.projetoKotlin.ProjetoKotlin.dto.PedidoDTO;
import com.projetoKotlin.ProjetoKotlin.model.Pedido;
import com.projetoKotlin.ProjetoKotlin.repository.PedidoRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class PedidoService {

    private final PedidoRepository pedidoRepository;

    public Pedido criar(PedidoDTO dto) {
        Pedido pedido = new Pedido();
        pedido.setResumoItens(dto.resumoItens());
        pedido.setValorTotal(dto.valorTotal());
        return pedidoRepository.save(pedido);
    }
}
