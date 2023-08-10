select p2.name person_name1,
       p1.name person_name2,
       p1.address common_address
from person p1
    join person p2 on p1.address = p2.address and p1.id < p2.id
order by p2.name, p1.name, p1.address;
