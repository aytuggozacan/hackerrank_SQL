select concat(name,"(", substr(occupation,1,1), ")") as n
from occupations
order by n;

select concat('There are a total of ',count(occupation),' ',lower(occupation),'s.')
from occupations
group by occupation
order by count(occupation), occupation;
