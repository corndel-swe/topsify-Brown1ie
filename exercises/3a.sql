-- List the names of the 10 newest albums in the database
SELECT * FROM albums ORDER BY release_date
FETCH FIRST 10 ROWS ONLY