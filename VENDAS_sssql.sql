
--Relatório de venda com dados da venda, faturamento mensal, anual, média de faturamento anual, valor minimo faturado por ano.


SELECT
V.Data_Venda Dt_Venda,
Nome_Moto Moto,
(SELECT NOME FROM FC_NOME_CLIENTE(V.Id_Cliente)) Cliente,
FORMAT(M.Valor,'C') Valor,
V.Parcelas Parcelammento,
FORMAT(SUM(M.Valor/V.Parcelas)OVER(PARTITION BY V.ID_VENDA),'C') Valor_P_Parcela,
FORMAT(SUM(M.Valor)OVER (PARTITION BY MONTH(V.DATA_VENDA)),'C') AS Fat_P_Mes,
FORMAT(SUM(M.Valor) OVER (PARTITION BY YEAR(V.DATA_VENDA)),'C') AS Fat_Anual,
FORMAT(AVG(M.Valor)OVER (PARTITION BY YEAR(V.DATA_VENDA)),'C') AS Media_Fat_Anul,
FORMAT(MIN(M.VALOR)OVER(PARTITION BY YEAR(V.DATA_VENDA)),'C') AS Min_Fat_Anual
FROM Vendas V
JOIN Moto M
 ON M.Id_Moto = V.Id_Moto;


