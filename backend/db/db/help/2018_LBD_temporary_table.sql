
   drop temporary table  if exists totalGast;
  

  
  create temporary table if not exists totalGast as(
  
	select month(g.fecha) as mes, sum(g.importe) as totalGastos from gastos g
    group by mes
    order by mes
  
  );
   