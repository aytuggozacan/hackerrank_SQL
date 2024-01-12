select min(if(Occupation = 'Doctor',Name,null)),min(if(Occupation = 'Professor',Name,null)),min(if(Occupation = 'Singer',Name,null)),min(if(Occupation = 'Actor',Name,null)) 
from(
    select ROW_NUMBER() OVER(PARTITION by Occupation
                             order by Name) as row_num,
            Name, 
            Occupation
    from OCCUPATIONS) as ord
group by row_num 
