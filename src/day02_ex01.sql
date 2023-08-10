select TO_CHAR(missing_date, 'YYYY-MM-DD') missing_date
from generate_series('2022-01-01'::date, '2022-01-10'::date, '1 day') missing_date
left join (
    select distinct visit_date
    from person_visits
    where person_id = 1 or person_id = 2
) visits on missing_date = visits.visit_date
where visits.visit_date is null
order by missing_date;
