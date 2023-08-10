select p.name pizzeria_name
from person_visits pv
    join pizzeria p on pv.pizzeria_id = p.id
    join menu m on pv.pizzeria_id = m.pizzeria_id
        and pv.visit_date = '2022-01-08'
        and m.price < 800
where pv.person_id = 9;

