
-- Query 1: Average Daily Steps per User
SELECT Id, AVG(TotalSteps) AS AvgSteps
FROM activity
GROUP BY Id;

-- Query 2: Average Calories per User
SELECT Id, AVG(Calories) AS AvgCalories
FROM activity
GROUP BY Id;

-- Query 3: Average Sleep Duration per User
SELECT Id, AVG(TotalMinutesAsleep) AS AvgSleep
FROM sleep
GROUP BY Id;

-- Query 4: Join Activity and Sleep Data
SELECT 
  a.Id,
  a.ActivityDate,
  a.TotalSteps,
  s.TotalMinutesAsleep
FROM activity a
JOIN sleep s
  ON a.Id = s.Id AND a.ActivityDate = s.SleepDay;

-- Query 5: Top 5 Most Active Users
SELECT Id, SUM(TotalSteps) AS TotalSteps
FROM activity
GROUP BY Id
ORDER BY TotalSteps DESC
LIMIT 5;

-- Query 6: Average BMI and Weight per User
SELECT Id, ROUND(AVG(WeightKg), 2) AS AvgWeight, ROUND(AVG(BMI), 2) AS AvgBMI
FROM weight
GROUP BY Id;
