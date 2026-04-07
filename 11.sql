-- 11.sql'de, Chadwick Boseman'ın rol aldığı filmler arasından en yüksek puana sahip (en iyi) 5 filmin ismini (title) listeleyen bir SQL sorgusu yazın.
-- Liste en yüksek puanlı filmden başlayarak azalan sırayla dizilmelidir.
-- Çıktı sadece film isimlerini barındıran tek bir sütundan oluşmalıdır.
SELECT title FROM movies 
JOIN stars ON movies.id = stars.movie_id 
JOIN people ON stars.person_id = people.id 
JOIN ratings ON movies.id = ratings.movie_id 
WHERE people.name = 'Chadwick Boseman' 
ORDER BY ratings.rating DESC 
LIMIT 5;
