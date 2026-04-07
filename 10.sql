-- 10.sql'de, en az 9.0 puan almış herhangi bir filmi yönetmiş tüm kişilerin isimlerini (name) listeleyen bir SQL sorgusu yazın.
-- Sorgunuz, her yönetmenin adı için tek bir sütun içeren bir tablo döndürmelidir.
-- Aynı kişi birden fazla yüksek puanlı film yönettiyse bile isminin listede bir kez (tekrarsız) yer almasını sağlayın.

SELECT DISTINCT name FROM people 
JOIN directors ON people.id = directors.person_id 
JOIN ratings ON directors.movie_id = ratings.movie_id 
WHERE ratings.rating >= 9.0;
