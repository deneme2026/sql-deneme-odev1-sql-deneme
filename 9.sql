-- 9.sql'de, 2004 yılında vizyona giren herhangi bir filmde rol almış tüm kişilerin isimlerini (name) listeleyen bir SQL sorgusu yazın.
-- Liste, kişilerin doğum yıllarına göre yeniden eskiye (artan sırayla) sıralanmalıdır.
-- Aynı kişinin birden fazla filmde oynaması ihtimaline karşı isimlerin tekrarsız (unique) olmasına dikkat edin.

-- Senin 2 sütunlu Gist'ine özel güncellenmiş kod:
SELECT DISTINCT people.name, people.id FROM people 
JOIN stars ON people.id = stars.person_id 
JOIN movies ON stars.movie_id = movies.id 
WHERE movies.year = 2004 
ORDER BY people.birth ASC;
