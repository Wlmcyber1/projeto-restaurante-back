package com.projetoKotlin.ProjetoKotlin.controller;

import com.projetoKotlin.ProjetoKotlin.dto.PedidoDTO;
import com.projetoKotlin.ProjetoKotlin.model.Pedido;
import com.projetoKotlin.ProjetoKotlin.service.PedidoService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/pedidos")
@RequiredArgsConstructor
public class PedidoController {

    private final PedidoService pedidoService;

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public Pedido criar(@RequestBody PedidoDTO dto) {
        return pedidoService.criar(dto);
    }
}
