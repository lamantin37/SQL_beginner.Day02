select distinct p.name
from person p
    join person_visits pv on p.id = pv.person_id
    join pizzeria pz on pv.pizzeria_id = pz.id
    join menu m on pz.id = m.pizzeria_id
    join person_order po on p.id = po.person_id
where (p.address = 'Moscow' or p.address = 'Samara')
    and p.gender = 'male'
    and (m.pizza_name = 'pepperoni pizza' or m.pizza_name = 'mushroom pizza')
order by p.name desc;
