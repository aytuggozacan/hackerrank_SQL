select distinct city
from station
where upper(substr(city, length(city), 1)) not in ("A", "E", "I", "U", "O") and lower(substr(city, length(city), 1)) not in ("a","e","i","u","o");
