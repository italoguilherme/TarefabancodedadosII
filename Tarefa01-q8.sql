create view dep_projetos(gerente,descricao,projeto) 
as select d.cod_gerente,d.descricao,count(p.cod_depto)
from projeto p, departamento d where p.cod_depto = d.codigo group by d.descricao, d.cod_gerente;

select f.nome, descricao,projeto from dep_projetos d left join funcionario f on f.codigo = d.gerente;
