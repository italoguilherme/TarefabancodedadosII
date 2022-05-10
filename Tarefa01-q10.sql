
select p.nome, d.descricao, f.nome from projeto p, departamento d, funcionario f
where p.cod_depto = d.codigo and p.cod_responsavel = f.codigo and f.cod_dep = d.codigo;
