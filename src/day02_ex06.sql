select distinct 
    m.pizza_name pizza_name,
    pz.name pizzeria_name
from
    person p
    join person_order po on p.id = po.person_id
    join menu m on po.menu_id = m.id
    join pizzeria pz on m.pizzeria_id = pz.id
where
    p.name in ('Denis', 'Anna')
order by
    m.pizza_name,
    pz.name;
