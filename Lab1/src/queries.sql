-- Вывести location апартаментов, где висят фото астронавтов
SELECT location FROM apartments as apt, rooms as r,
                     photos as ph, persononphoto as pop,
                     personjobs as pj, jobs, majors
WHERE apt.apartmentid = r.apartmentid
AND ph.roomid = r.roomid
AND pop.photoid = ph.photoid
AND pj.personid = pop.personid
AND jobs.jobid = pj.jobid
AND jobs.majorid = majors.majorid
AND majors.name = 'astronaut';

-- Вывести location и суммарная площадь апаратментов суммарная площадь комнат
-- в которых больше 1500
-- отсортировать по убыванию площади
SELECT apt.location, SUM(r.lenght * r.width) AS sum FROM apartments as apt, rooms as r
WHERE apt.apartmentid = r.apartmentid
GROUP BY apt.apartmentid, apt.location
HAVING  SUM(r.lenght * r.width) > 40
ORDER BY sum DESC;

-- Вывести location, имена астронавтов, суммарную площадь
-- комнаты в которых висят фото астонавтов
-- суммарная площадь больше 1500
-- отсортировать по убыванию площади
SELECT apt.location, SUM(r.lenght * r.width) as sum FROM apartments as apt, rooms as r,
                     photos as ph, persononphoto as pop,
                     personjobs as pj, jobs, majors
WHERE apt.apartmentid = r.apartmentid
AND ph.roomid = r.roomid
AND pop.photoid = ph.photoid
AND pj.personid = pop.personid
AND jobs.jobid = pj.jobid
AND jobs.majorid = majors.majorid
AND majors.name = 'astronaut'
GROUP BY apt.apartmentid, apt.location
HAVING  SUM(r.lenght * r.width) > 40
ORDER BY sum DESC;