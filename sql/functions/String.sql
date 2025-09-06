-- Length function consider space as a character
SELECT LEN('Hello World') AS Length;

-- ========================================================================================================================

-- Left trim, right trim, and both sides trim
SELECT LTRIM('    Space on both sides    ') AS LeftTrim,
    RTRIM('    Space on both sides    ') AS RightTrim,
    LTRIM(RTRIM('    Space on both sides    ')) AS Trim;

-- ========================================================================================================================

-- REVERSE Function Demo
CREATE TABLE Words ( Word NVARCHAR(100) NOT NULL );
INSERT INTO Words
VALUES ('Hello'), ('Nun'), ('Toy'), ('Racecar'), ('Teapot'), ('Wardrobe'), ('Civic'), ('Path'), ('Garbage');

-- Get palindrome strings
SELECT Word, REVERSE(Word) AS ReverseWord
FROM Words
WHERE Word = REVERSE(Word);

-- ========================================================================================================================

-- LEFT: Takes specified number of characters from left side
-- RIGHT: Takes the specified number of characters from right side
-- SUBSTRING: Takes the specified number of characters starting from the specific index (index starting from 1)
SELECT LEFT('Traveling across the country', 9) AS LeftString,
    RIGHT('Traveling across the country', 7) AS RightString,
    SUBSTRING('Traveling across the country', 11, 6) AS StringWithIndexAndLength;

-- Replaces occurences of 'national' with 'cultural'
SELECT REPLACE('Multinational', 'national', 'cultural');

-- ========================================================================================================================