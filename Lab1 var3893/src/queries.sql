-- Вывести имена друзей друг на против друга
SELECT p1.name AS person_name,
p2.name AS friend_name
FROM People AS p1
JOIN Relationships AS rel ON p1.id = rel.personId1
JOIN RelationshipTypes AS reltyp ON rel.relationTypeId = reltyp.id
JOIN People AS p2 ON rel.personId2 = p2.id
WHERE reltyp.name = 'friend';

-- Вывести planid, goal.name и owner.name для планов, в которых
-- суммарная сложность шагов больше 200
-- отсортировать по убыванию суммарной сложности
SELECT pl.id AS planID, goal.name AS goal,
pe.name AS owner, SUM(df.power) as total_dificulty
FROM Plans AS pl
JOIN Steps AS st ON st.planid = pl.id
JOIN Difficulties AS df ON st.difficultyID = df.id
JOIN People AS pe ON pl.ownerid = pe.id
JOIN GoalInPlan as gip ON gip.planid = pl.id
JOIN Goal ON goal.id = gip.goalid
GROUP BY pl.id, goal.name, pe.name
HAVING SUM(df.power) > 200
ORDER BY total_dificulty DESC;