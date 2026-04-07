-- 8.sql'de, "Toy Story" (Oyuncak Hikayesi) adlı filmde rol almış tüm kişilerin isimlerini (name) listeleyen bir SQL sorgusu yazın.
-- Sorgunuz, her kişinin adı için tek bir sütun içeren bir tablo döndürmelidir.
-- Veritabanında "Toy Story" isminde sadece tek bir film olduğunu varsayabilirsiniz.

SELECT name FROM people 
JOIN stars ON people.id = stars.person_id 
JOIN movies ON stars.movie_id = movies.id 
WHERE movies.title = 'Toy Story';
