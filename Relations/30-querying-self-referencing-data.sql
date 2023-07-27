select * from employees as e1
inner join employees as e2 
on e1.supervisor_id=e2.id;
