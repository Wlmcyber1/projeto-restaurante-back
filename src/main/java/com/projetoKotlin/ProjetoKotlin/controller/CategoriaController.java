package com.projetoKotlin.ProjetoKotlin.controller;

import com.projetoKotlin.ProjetoKotlin.model.Categoria;
import com.projetoKotlin.ProjetoKotlin.model.Produto;
import com.projetoKotlin.ProjetoKotlin.service.CategoriaService;
import com.projetoKotlin.ProjetoKotlin.service.ProdutoService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/categorias")
@RequiredArgsConstructor
public class CategoriaController {

    private final CategoriaService categoriaService;
    private final ProdutoService produtoService;

    // GET /categorias
    @GetMapping
    @ResponseStatus(HttpStatus.OK)
    public List<Categoria> listarTodas() {
        return categoriaService.listarTodas();
    }

    // GET /categorias/{id}
    @ResponseStatus(HttpStatus.OK)
    @GetMapping("/{id}")
    public Categoria buscarPorId(@PathVariable Long id) {
        return categoriaService.buscarPorId(id);
    }

    // GET /categorias/{id}/produtos
    @ResponseStatus(HttpStatus.OK)
    @GetMapping("/{id}/produtos")
    public List<Produto> listarProdutos(@PathVariable Long id) {
        categoriaService.buscarPorId(id);
        return produtoService.listarPorCategoria(id);
    }
}
