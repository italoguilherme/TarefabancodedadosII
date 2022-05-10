# Criação das Tabelas

CREATE TABLE funcionario (
	codigo int AUTO_INCREMENT,
	nome varchar(50),
	sexo char(1),
	dtNasc date,
	salario decimal(10,2),
	codDepto int,
	PRIMARY KEY (codigo),
	FOREIGN KEY (codDepto) REFERENCES departamento(codigo) on delete set null on update cascade
);

CREATE TABLE departamento (
	codigo int AUTO_INCREMENT,
	descricao varchar(50),
	codGerente int,
	PRIMARY KEY (codigo),
	FOREIGN KEY (codGerente) REFERENCES funcionario(codigo) on delete set null on update cascade
);

CREATE TABLE projeto (
	codigo int AUTO_INCREMENT,
	nome varchar(50),
	descricao varchar(250),
	codResponsavel int,
	codDepto int,
	dataInicio date, 
	dataFim date,
	PRIMARY KEY (codigo),
	FOREIGN KEY (codResponsavel) REFERENCES funcionario(codigo) on delete set null on update cascade,
	FOREIGN KEY (codDepto) REFERENCES departamento(codigo) on delete set null on update cascade
);
 
CREATE TABLE atividade (
	codigo int AUTO_INCREMENT,
	descricao varchar(250),
	codProjeto int,
	dataInicio date, 
	dataFim date,
	PRIMARY KEY (codigo),
	FOREIGN KEY (codProjeto) REFERENCES projeto(codigo) on delete set null on update cascade

);


CREATE TABLE atividade_projeto(
	cod_projeto int,
	cod_atividade int,
	PRIMARY KEY(codigo_projeto, codigo_atividade),
	FOREIGN KEY (cod_projeto) REFERENCES projeto(codigo),
	FOREIGN KEY (cod_atividade) REFERENCES atividade(codigo)
);

alter table funcionario ADD CONSTRAINT funcDeptoFK FOREIGN KEY (codDepto) REFERENCES departamento(codigo) on delete set null on update cascade;


/*
funcionario(codigo, nome, sexo, dt_nasc, salario, cod_depto)
departamento(codigo, descricao, cod_gerente)
projeto (codigo, nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
atividade(codigo, nome, descricao, cod_responsavel, data_inicio, data_fim)
atividade_projeto(cod_projeto, cod_atividade)
Chaves estrangeiras:
funcionario(cod_depto) ⇒ departamento(codigo)
departamento(cod_gerente) ⇒ funcionário(codigo)
	projeto(cod_depto) ⇒ departamento(codigo)
projeto(cod_responsavel) ⇒ funcionário(codigo)
	atividade_projeto(cod_projeto) ⇒ projeto(codigo)
	atividade_projeto(cod_atividade) ⇒ atividade(codigo)
atividade_projeto(cod_responsavel) ⇒ funcionário(codigo)
Crie um arquivo SQL, chamado, tarefa01-inserts.sql para inserir pelo menos 5 linhas em cada tabela.
Crie um arquivo chamado tarefa01.md no seu diretório e coloque um link para ele no README.md.
No arquivo tarefa01.md coloque link para os scripts de criação do esquema relacional.
No arquivo tarefa01.md coloque link para os scripts de povoamento do esquema relacional.
*/
