package com.projetoKotlin.ProjetoKotlin.dto;

import java.math.BigDecimal;

public record PedidoDTO(
        String resumoItens,
        BigDecimal valorTotal
) {
}
