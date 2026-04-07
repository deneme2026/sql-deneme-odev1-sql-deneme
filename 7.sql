-- 7.sql'de, 2010 yılında vizyona giren tüm filmleri ve reytinglerini listeleyen, en yüksek puandan en düşük puana (azalan sırayla) dizilmiş bir SQL sorgusu yazın.
-- Aynı reytinge sahip filmler varsa, onları kendi içlerinde başlıklarına (title) göre alfabetik olarak sıralayın.
-- Çıktıda iki sütun bulunmalıdır: Filmin ismi (title) ve reytingi (rating).

SELECT movies.title, ratings.rating FROM movies 
JOIN ratings ON movies.id = ratings.movie_id 
WHERE movies.year = 2010 
ORDER BY ratings.rating DESC, movies.title ASC;
