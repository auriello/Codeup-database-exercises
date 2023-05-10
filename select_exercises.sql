USE codeup_test_db;

-- the name of all albums by pink floyd
    SELECT artist_name AS 'info' FROM albums WHERE artist_name = 'Pink Floyd';
-- the year sgt peppers lonely heart club band released

SELECT artist_name AS 'Artist Name', record_name AS 'Album name', release_date AS 'Release date'
FROM albums
WHERE record_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- the genre for nevermind (its missing on this list the example from the walkthrough was born in the usa
SELECT genre AS 'Genre Born in the U.S.A.'
FROM albums
WHERE record_name = 'Born in the U.S.A.';

-- the albums released in the 1990s
SELECT release_date AS 'Albums released in the 1990s'
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

-- albums will less than 20million sales
SELECT sales AS 'Albums release in the 1990s'
FROM albums
WHERE sales < 20;
-- albums with rock genre
SELECT record_name AS 'Albums with genre of Rock'
FROM albums
WHERE genre = 'Rock';

