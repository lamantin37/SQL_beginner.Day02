with dategenerator (
    missing_date
) as (
    select to_char(generated_date, 'yyyy-mm-dd')
    from generate_series('2022-01-01'::date, '2022-01-10'::date, '1 day') generated_date
)

select dg.missing_date
from dategenerator dg
left join (
    select distinct visit_date
    from person_visits
    where person_id = 1 or person_id = 2
) visits on dg.missing_date = to_char(visits.visit_date, 'yyyy-mm-dd')
where visits.visit_date is null
order by dg.missing_date;

