WITH RankedWeightInfo AS (SELECT
    id,
    WeightKg,
    WeightPounds,
    BMI,
    ROW_NUMBER() OVER(PARTITION BY id ORDER BY WeightKg DESC) AS topWeight
  FROM
    `my-coursera-project-471912.case_study_test_Data.weightLogInfo`
)
SELECT
  wlog.id,
  wlog.WeightKg,
  wlog.WeightPounds,
  wlog.BMI,
  SUM(dc.Calories) AS totalCalories,
  SUM(da.TotalDistance) AS totalDistance,
  SUM(da.TotalSteps) AS totalSteps
FROM
  RankedWeightInfo AS wlog
JOIN
  `my-coursera-project-471912.case_study_test_Data.dailyCalories` AS dc
ON
  dc.id = wlog.Id
JOIN
  `my-coursera-project-471912.case_study_test_Data.dailyActivity` AS da
ON
  da.Id = dc.Id
WHERE
  wlog.topWeight = 1
  AND dc.Calories > 2000
GROUP BY
  wlog.Id,
  wlog.WeightKg,
  wlog.WeightPounds,
  wlog.BMI;
