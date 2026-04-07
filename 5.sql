-- 5.sql'de, tüm "Harry Potter" filmlerinin isimlerini (title) ve vizyon yıllarını (year) kronolojik sıraya (yıllara göre) listeleyen bir SQL sorgusu yazın.
-- Çıktıda birinci sütun filmin ismi, ikinci sütun ise yılı olmalıdır.
-- Her filmin isminin "Harry Potter" ile başladığını varsayabilirsiniz.

SELECT title, year FROM movies WHERE title LIKE 'Harry Potter and%' ORDER BY year ASC;
