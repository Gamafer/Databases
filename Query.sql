SELECT * 
FROM 
empleado inner join ticket on (empleado.nomina = ticket.nomina)
inner join producto_ticket on (ticket.folio = producto_ticket.folio)
inner join producto on (producto_ticket.upc = producto.upc)
where empleado.nombre like 'yali%';

SELECT empleado.nombre, sum(cantidad*precio) as total
from
empleado inner join ticket on (empleado.nomina = ticket.nomina)
inner join producto_ticket on (ticket.folio = producto_ticket.folio)
inner join producto on (producto_ticket.upc = producto.upc)
where empleado.nombre like 'Yal%';


