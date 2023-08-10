select coalesce(p.name, '-') person_name,
       pv.visit_date visit_date,
       coalesce(pi.name, '-') pizzeria_name
from person p
         full join (
           select pv.person_id, pv.pizzeria_id, pv.visit_date
           from person_visits pv
           where pv.visit_date between '2022-01-01' and '2022-01-03'
         ) pv
         on p.id = pv.person_id
         full join pizzeria pi
         on pv.pizzeria_id = pi.id
order by person_name, visit_date, pizzeria_name;
