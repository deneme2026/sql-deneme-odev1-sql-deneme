-- 3.sql'de, 2018 veya sonrasında vizyona giren tüm filmlerin isimlerini (title) alfabetik sırayla listeleyen bir SQL sorgusu yazın.
-- Sorgunuz, her film için tek bir sütun içeren bir tablo döndürmelidir.

SELECT title FROM movies WHERE year >= 2018 ORDER BY title ASC;
