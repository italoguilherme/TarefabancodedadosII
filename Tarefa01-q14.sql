create view m_count(fun_cod,quantidade_atv) as select f.codigo, count(a.codigo)
from funcionario f, atividade a
where a.cod_responsavel = f.codigo
group by f.codigo;

select f.nome, mc.fun_cod, mc.quantidade_atv from funcionario f, m_count mc;
