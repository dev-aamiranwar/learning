-- Get current datetime
SELECT GETDATE() AS CurrentDateTime,
    GETUTCDATE() AS CurrentUTCDateTime;

-- Parts of DateTime
SELECT DAY(GETDATE()) AS CurrentDateInNumber,
    MONTH(GETDATE()) AS CurrentMonthInNumber,
    YEAR(GETDATE()) AS CurrentYearInNumber;

SELECT DATEPART(DAY, GETDATE()) AS CurrentDate,
    DATEPART(DAYOFYEAR, GETDATE()) AS CurrentDayOfYear,
    DATEPART(WEEK, GETDATE()) AS WeekInYear,
    DATEPART(WEEKDAY, GETDATE()) AS DayInWeek,
    DATEPART(MONTH, GETDATE()) AS MonthInYear,
    DATEPART(QUARTER, GETDATE()) AS QuarterOfYear,
    DATEPART(YEAR, GETDATE()) AS CurrentYear,
    DATEPART(HOUR, GETDATE()) AS RunningHour,
    DATEPART(MINUTE, GETDATE()) AS RunningMinute,
    DATEPART(SECOND, GETDATE()) AS RunningSecond;

SELECT DATENAME(DAY, GETDATE()) AS CurrentDate,
    DATENAME(DAYOFYEAR, GETDATE()) AS CurrentDayOfYear,
    DATENAME(WEEK, GETDATE()) AS WeekInYear,
    DATENAME(WEEKDAY, GETDATE()) AS DayInWeek,      -- print current day of week in words e.g. Saturday
    DATENAME(MONTH, GETDATE()) AS MonthInYear,      -- print month in words e.g. September
    DATENAME(QUARTER, GETDATE()) AS QuarterOfYear,
    DATENAME(YEAR, GETDATE()) AS CurrentYear,
    DATENAME(HOUR, GETDATE()) AS RunningHour,
    DATENAME(MINUTE, GETDATE()) AS RunningMinute,
    DATENAME(SECOND, GETDATE()) AS RunningSecond;

-- Date Calculations
SELECT DATEADD(HOUR, 34, GETDATE()) AS DateTimeAfter34Hour,
    DATEADD(HOUR, -12, GETDATE()) AS DateTimeBefore12Hour,
    DATEADD(DAY, -2, GETDATE()) AS DateTimeBefore2Days,
    DATEADD(MONTH, -1, GETDATE()) AS DateTimeBefore1Month;