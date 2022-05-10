select p.nome, p.data_inicio, p.data_fim, a.descricao, a.data_inicio, a.data_fim
from projeto p, atividade a, atividade_projeto ap
where a.codigo = ap.codigo_atividade and p.codigo = ap.codigo_projeto;
