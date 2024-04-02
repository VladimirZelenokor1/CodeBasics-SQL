SELECT 
	get_fiscal_year(s.date) as fiscal_year, 
    SUM(g.gross_price*s.sold_quantity) as gross_sales_total
FROM fact_sales_monthly s
JOIN fact_gross_price g ON g.product_code = s.product_code AND g.fiscal_year=get_fiscal_year(s.date)
WHERE 
	customer_code=90002002
GROUP BY get_fiscal_year(date)
ORDER BY get_fiscal_year(s.date) DESC 