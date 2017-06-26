select distinct a.director, b.title, a.max_rating
from (select mo2.director, max(ra.stars) as max_rating
from rating ra
join movie mo2 on mo2.mid = ra.mid
group by 1) a
join (select distinct mo.director, mo.title, ra.stars
from movie mo join rating ra on mo.mid = ra.mid) as b on b.stars = a.max_rating
and b.director = a.director
where a.director is not null;

-- CMD + K, F
SELECT DISTINCT a.director,
                b.title,
                a.max_rating
FROM
  (SELECT mo2.director,
          max(ra.stars) AS max_rating
   FROM rating ra
   JOIN movie mo2 ON mo2.mid = ra.mid
   GROUP BY 1) a
JOIN
  (SELECT DISTINCT mo.director,
                   mo.title,
                   ra.stars
   FROM movie mo
   JOIN rating ra ON mo.mid = ra.mid) AS b ON b.stars = a.max_rating
AND b.director = a.director
WHERE a.director IS NOT NULL;

