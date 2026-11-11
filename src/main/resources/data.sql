-- Dados iniciais do cardápio.
-- Roda toda vez que a API sobe, mas o "WHERE NOT EXISTS" impede de duplicar.
-- As imagens ficam em src/main/resources/static/imagens e são servidas em
-- http://localhost:8081/imagens/<arquivo>

-- ===== CATEGORIAS =====
INSERT INTO categoria (nome) SELECT 'Massas'  WHERE NOT EXISTS (SELECT 1 FROM categoria WHERE nome = 'Massas');
INSERT INTO categoria (nome) SELECT 'Pizzas'  WHERE NOT EXISTS (SELECT 1 FROM categoria WHERE nome = 'Pizzas');
INSERT INTO categoria (nome) SELECT 'Bebidas' WHERE NOT EXISTS (SELECT 1 FROM categoria WHERE nome = 'Bebidas');

-- ===== MASSAS =====
INSERT INTO produto (nome, preco, descricao, imagem_url, categoria_id)
SELECT 'Spaghetti alla Carbonara', 49.90, 'Guanciale, ovo, pecorino romano e pimenta-do-reino', 'imagens/carbonara.jpg', c.id
FROM categoria c WHERE c.nome = 'Massas' AND NOT EXISTS (SELECT 1 FROM produto WHERE nome = 'Spaghetti alla Carbonara');

INSERT INTO produto (nome, preco, descricao, imagem_url, categoria_id)
SELECT 'Lasagna alla Bolognese', 56.90, 'Ragù de carne, bechamel e parmigiano gratinado', 'imagens/lasagna.jpg', c.id
FROM categoria c WHERE c.nome = 'Massas' AND NOT EXISTS (SELECT 1 FROM produto WHERE nome = 'Lasagna alla Bolognese');

INSERT INTO produto (nome, preco, descricao, imagem_url, categoria_id)
SELECT 'Penne all''Arrabbiata', 42.90, 'Molho de tomate apimentado, alho e salsinha', 'imagens/penne-arrabbiata.jpg', c.id
FROM categoria c WHERE c.nome = 'Massas' AND NOT EXISTS (SELECT 1 FROM produto WHERE nome = 'Penne all''Arrabbiata');

INSERT INTO produto (nome, preco, descricao, imagem_url, categoria_id)
SELECT 'Fettuccine Alfredo', 47.90, 'Manteiga, creme de leite e parmigiano reggiano', 'imagens/fettuccine-alfredo.jpg', c.id
FROM categoria c WHERE c.nome = 'Massas' AND NOT EXISTS (SELECT 1 FROM produto WHERE nome = 'Fettuccine Alfredo');

-- ===== PIZZAS =====
INSERT INTO produto (nome, preco, descricao, imagem_url, categoria_id)
SELECT 'Pizza Margherita', 54.90, 'Molho de tomate, mozzarella fior di latte e manjericão', 'imagens/pizza-margherita.jpg', c.id
FROM categoria c WHERE c.nome = 'Pizzas' AND NOT EXISTS (SELECT 1 FROM produto WHERE nome = 'Pizza Margherita');

INSERT INTO produto (nome, preco, descricao, imagem_url, categoria_id)
SELECT 'Pizza Diavola', 59.90, 'Mozzarella, salame picante e azeitonas', 'imagens/pizza-diavola.jpg', c.id
FROM categoria c WHERE c.nome = 'Pizzas' AND NOT EXISTS (SELECT 1 FROM produto WHERE nome = 'Pizza Diavola');

INSERT INTO produto (nome, preco, descricao, imagem_url, categoria_id)
SELECT 'Pizza Quattro Formaggi', 62.90, 'Mozzarella, gorgonzola, parmigiano e provolone', 'imagens/pizza-quattro-formaggi.jpg', c.id
FROM categoria c WHERE c.nome = 'Pizzas' AND NOT EXISTS (SELECT 1 FROM produto WHERE nome = 'Pizza Quattro Formaggi');

INSERT INTO produto (nome, preco, descricao, imagem_url, categoria_id)
SELECT 'Pizza Capricciosa', 61.90, 'Presunto, cogumelos, alcachofra e azeitonas', 'imagens/pizza-capricciosa.jpg', c.id
FROM categoria c WHERE c.nome = 'Pizzas' AND NOT EXISTS (SELECT 1 FROM produto WHERE nome = 'Pizza Capricciosa');

-- ===== BEBIDAS =====
INSERT INTO produto (nome, preco, descricao, imagem_url, categoria_id)
SELECT 'Limonata', 12.90, 'Limonada siciliana da casa com hortelã', 'imagens/limonata.jpg', c.id
FROM categoria c WHERE c.nome = 'Bebidas' AND NOT EXISTS (SELECT 1 FROM produto WHERE nome = 'Limonata');

INSERT INTO produto (nome, preco, descricao, imagem_url, categoria_id)
SELECT 'Aranciata', 11.90, 'Refrigerante italiano de laranja', 'imagens/aranciata.jpg', c.id
FROM categoria c WHERE c.nome = 'Bebidas' AND NOT EXISTS (SELECT 1 FROM produto WHERE nome = 'Aranciata');

INSERT INTO produto (nome, preco, descricao, imagem_url, categoria_id)
SELECT 'Vino Rosso della Casa', 29.90, 'Taça de vinho tinto da casa', 'imagens/vino-rosso.jpg', c.id
FROM categoria c WHERE c.nome = 'Bebidas' AND NOT EXISTS (SELECT 1 FROM produto WHERE nome = 'Vino Rosso della Casa');

INSERT INTO produto (nome, preco, descricao, imagem_url, categoria_id)
SELECT 'Espresso', 8.90, 'Café espresso italiano', 'imagens/espresso.jpg', c.id
FROM categoria c WHERE c.nome = 'Bebidas' AND NOT EXISTS (SELECT 1 FROM produto WHERE nome = 'Espresso');
