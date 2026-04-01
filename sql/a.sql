-- Criando a dimensão de Ativos 
CREATE TABLE IF NOT EXISTS dim_ativos (
	id_ativo INTEGER PRIMARY KEY AUTOINCREMENT,
	ticker TEXT NOT NULL UNIQUE, 
	nome empresa TEXT,
	setor TEXT, 
):

-- Criando a fato de preços e sentimentos 
CREATE TABLE IF NOT EXISTS fato_mercado (
	id_registro INTEGER PRIMARY KEY AUTOINCREMENT, 
	id_ativo INTEGER, 
	data_referencia DATE,
	preco_fechamento DECIMAL(10, 2),
	volume_negociado BIGINT,
	sentimento_score DECIMAL(3, 2), 
	qtd_noticias_dia INTEGER,
	FOREIGN KEY (id_ativo) REFERENCES dim_ativos(id_ativo)
);

