SELECT p.name
FROM people p
JOIN personLiveInHouse plh ON p.id = plh.personId
JOIN houses h ON plh.houseId = h.id
JOIN relationships r ON p.id = r.personId1
JOIN people p2 ON r.personId2 = p2.id
JOIN plans pl ON p.id = pl.ownerId
JOIN steps s ON pl.id = s.planId
WHERE p.willpower IN (1, 2, 3) -- Assuming 1, 2, 3 correspond to restrained, stable, or self-governing willpower
AND h.location LIKE 'St. Petersburg%' 
AND h.houseTypeId = (SELECT id FROM houseTypes WHERE name = 'apartments')
AND r.relationTypeId = (SELECT id FROM relationshipTypes WHERE name = 'friend')
AND p2.name LIKE 'A%' AND LENGTH(p2.name) <= 7
AND pl.statusId = (SELECT id FROM statuses WHERE name = 'active')
AND LENGTH(s.description) >= 10
AND s.difficultyid = (SELECT id FROM difficulties WHERE name = 'hard')
GROUP BY p.id, p.name
ORDER BY LENGTH(p.name) DESC;