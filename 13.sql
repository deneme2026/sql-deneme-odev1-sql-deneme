-- 13.sql'de, Kevin Bacon ile aynı filmde rol almış tüm kişilerin isimlerini (name) listeleyen bir SQL sorgusu yazın.
-- Sorgunuz, her kişinin adı için tek bir sütun içeren bir tablo döndürmelidir.
-- Veritabanında "Kevin Bacon" adında birden fazla kişi olabilir. Sadece 1958 doğumlu Kevin Bacon'ı seçtiğinizden emin olun.
-- Sonuç listesinde Kevin Bacon'ın kendisi DAHİL EDİLMEMELİDİR.

SELECT DISTINCT name FROM people 
JOIN stars ON people.id = stars.person_id 
WHERE stars.movie_id IN (
    SELECT movie_id FROM stars 
    JOIN people ON stars.person_id = people.id 
    WHERE people.name = 'Kevin Bacon' AND people.birth = 1958
) 
AND people.name != 'Kevin Bacon';
