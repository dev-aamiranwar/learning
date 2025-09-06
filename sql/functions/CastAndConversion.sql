CREATE TABLE CAST_ReferenceTable
(
    Data NVARCHAR(100)
);

-- Try to insert INT values, and the conversion is automatically
INSERT INTO CAST_ReferenceTable VALUES (56), (23), (68);

SELECT * FROM CAST_ReferenceTable;

-- ========================================================================================================================

-- CAST Function
CREATE TABLE CAST_Students
(
    Id INT PRIMARY KEY IDENTITY(1, 1),
    Name NVARCHAR(100) NOT NULL,
    EnrollmentDate DATETIME NOT NULL
);

INSERT INTO CAST_Students
VALUES ('Aamir Anwar', '2011-09-15'),
    ('Nabeel Anwar', '2018-09-15'),
    ('Shakeel Anwar', '2016-09-15');

SELECT CAST(Id AS NVARCHAR) + '-' + Name + ' enrolled on ' + CAST(EnrollmentDate AS NVARCHAR) AS StudentEnrollmentDateTime
FROM CAST_Students;

-- Conversion failed
SELECT Id + '-' + Name + ' enrolled on ' + EnrollmentDate AS StudentEnrollmentDateTime
FROM CAST_Students;

-- ========================================================================================================================

-- CONVERT Function
-- All conversions are possible with CAST function. If we need extra formatting, use CONVERT function.
-- CONVERT([Target data type], [Value to convert], [Format option])

CREATE TABLE CONVERT_Parameters
(
    SuppliedParameter INT
);

INSERT INTO CONVERT_Parameters (SuppliedParameter)
VALUES (100), (101), (103), (107), (108), (110), (114);

SELECT 
    SuppliedParameter AS [Supplied Parameter], 
    CONVERT(NVARCHAR, GETDATE(), SuppliedParameter) AS [Format Result]
FROM CONVERT_Parameters;

-- Conversion failures
-- If conversion failed, then rest of the query execution fails.
SELECT CONVERT(INT, 'Word');

-- TRY_CONVERT returns NULL on failure.
SELECT TRY_CONVERT(INT, 'Word');

-- Use ISNULL function to handle null values
SELECT ISNULL(TRY_CONVERT(INT, 'Word'), 0) AS [Default Value],
    ISNULL(TRY_CONVERT(DATETIME, '2023-10-26'), GETDATE()) AS ConvertedDate;