package com.projetoKotlin.ProjetoKotlin.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;

@Entity
@Table(name = "produto")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Produto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String nome;

    @Column(nullable = false, precision = 10, scale = 2)
    private BigDecimal preco;

    @Column(length = 1000)
    private String descricao;

    @Column(length = 1000)
    private String imagemUrl;

    @ManyToOne(optional = false)
    @JsonIgnoreProperties("produtos")
    @JoinColumn(name = "categoria_id", nullable = false)
    private Categoria categoria;
}
