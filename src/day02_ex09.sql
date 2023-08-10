select distinct p.name
from person p
    join person_order po on p.id = po.person_id
    join menu m on po.menu_id = m.id
    join pizzeria pz on m.pizzeria_id = pz.id
where p.gender = 'female'
    and m.pizza_name in ('pepperoni pizza', 'cheese pizza')
group by p.name
    having count(distinct case when m.pizza_name = 'pepperoni pizza' then pz.id end) >= 1
        and count(distinct case when m.pizza_name = 'cheese pizza' then pz.id end) >= 1
order by p.name;
