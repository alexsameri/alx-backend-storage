-- Ranks the country origin of bands
-- Ordered by the number of fans
SELECT origin, SUM(fans) as nb_fans
FROM metal_bands
ORDER BY nb_fans DESC;