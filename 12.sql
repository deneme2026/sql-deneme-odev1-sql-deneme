-- 12.sql'de, hem Johnny Depp hem de Helena Bonham Carter'ın birlikte rol aldığı tüm filmlerin isimlerini (title) listeleyen bir SQL sorgusu yazın.
-- Sorgunuz, her filmin ismi için tek bir sütun içeren bir tablo döndürmelidir.

SELECT title FROM movies 
JOIN stars s1 ON movies.id = s1.movie_id JOIN people p1 ON s1.person_id = p1.id
JOIN stars s2 ON movies.id = s2.movie_id JOIN people p2 ON s2.person_id = p2.id
WHERE p1.name = 'Johnny Depp' AND p2.name = 'Helena Bonham Carter';
