-- 6.sql'de, 2012 yılında vizyona giren tüm filmlerin ortalama reytingini (rating) hesaplayan bir SQL sorgusu yazın.
-- Sorgunuz, tek bir sütun ve tek bir satır (sadece ortalama puan) içeren bir tablo döndürmelidir.

SELECT AVG(rating) FROM ratings 
JOIN movies ON ratings.movie_id = movies.id 
WHERE movies.year = 2012;
