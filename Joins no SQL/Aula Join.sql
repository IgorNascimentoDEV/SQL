--Por que precisamos do JOIN


SELECT TOP(1000) * FROM FactSales

SELECT * FROM DimChannel

SELECT 
	d.ChanneLName,
	SUM(SalesQuantity) AS 'Qtd. Vendida'
FROM 
	FactSales f
JOIN DimChannel d ON d.ChannelKey = f.channelKey
GROUP BY ChanneLName