select f.nome , d.descricao from funcionario f, departamento d
where f.salario in(select max(f.salario)
				  from funcionario f left join departamento d
				  on f.cod_dep = d.codigo group by d.codigo
) and f.cod_dep = d.codigo
group by f.salario, f.nome, d.descricao
order by f.salario;
