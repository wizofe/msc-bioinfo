-- How many buildings have a library?
SELECT COUNT(DISTINCT(rooms.gridRef))
FROM rooms, buildings
WHERE rooms.gridref = buildings.gridref
AND rooms.rtype = 'library';

-- Generate a list of room types and their frequencies within the database. 
Order the results by the frequencies in descending order.
SELECT DISTINCT(rooms.rtype), COUNT(rooms.rtype)
FROM rooms
GROUP by rooms.rtype DESC;

-- What is the average relative humidity of measurements associated with the
-- fungal species Aspergillus versicolor?
SELECT ROUND(AVG(humidity), 4)
FROM measures
WHERE genus = 'Aspergillus'
AND species = 'versicolor';

-- What are the 10 fungal species most commonly found in west-facing kitchens?
SELECT genus, species, COUNT(*) as species_count
FROM rooms RIGHT JOIN measures USING(roomID)
WHERE rtype = 'kitchen' AND aspect = 'west'
GROUP BY genus, species
ORDER BY 3 DESC
LIMIT 10