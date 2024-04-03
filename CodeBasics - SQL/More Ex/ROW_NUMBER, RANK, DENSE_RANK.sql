with cte as (SELECT 
	* ,
    row_number() over(order by marks desc) as rn,
    rank() over(order by marks desc) as rnk,
    dense_rank() over(order by marks desc) as drnk
FROM random_tables.student_marks)

SELECt 
	*
FROM cte 
WHERE rn <=5;