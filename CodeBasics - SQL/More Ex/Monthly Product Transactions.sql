SELECT 
	s.date, s.product_code, 
    p.product, p.variant, s.sold_quantity,
    g.gross_price, ROUND(g.gross_price*s.sold_quantity, 2) as gross_price_total
FROM fact_sales_monthly sfact_sales_monthly
JOIN dim_product p USING (product_code)
JOIN fact_gross_price g ON g.product_code = s.product_code AND g.fiscal_year=get_fiscal_year(s.date)
WHERE 
	customer_code=90002002 and 
    get_fiscal_year(date)=2021 and 
    get_fiscal_q(date)="Q4"
ORDER BY date DESC 
