CREATE DATABASE Final_project;
GO

USE Final_project;
GO
-----------------------------------------------
Select * From [dbo].[Converted students]
Select * From [dbo].[Converted_teachers_3]
-----------------------------------------------

CREATE TABLE [dbo].[StudentTeacher] (
    id INT IDENTITY(1,1) PRIMARY KEY,
    student_id tinyINT,
    teacher_id tinyINT,
    FOREIGN KEY (student_id) REFERENCES [dbo].[Converted students]([index]),
    FOREIGN KEY (teacher_id) REFERENCES [dbo].[Converted_teachers_3]([index])
);

-----------------------------------------------

select * From [dbo].[StudentTeacher]

-----------------------------------------------
DECLARE @i INT = 1;

WHILE @i <= 134
BEGIN
    INSERT INTO [dbo].[StudentTeacher](student_id) 
    VALUES (@i); 

    SET @i = @i + 1;
END;
-----------------------------------------------

UPDATE [dbo].[StudentTeacher]
SET teacher_id = CASE 
         WHEN teacher_id IS NULL AND student_id <= 54 THEN student_id
         ELSE teacher_id
			END;

-------------------------------------

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Converted students';

-------------------------------------

CREATE VIEW vw_Students_Analysis AS
SELECT
    [index],
    role,
    grad_year,
    age,
    gender,
    governorate,
    residence_type,
    highschool_track,
    school_type,
    final_grade_percent,
    study_method,
    [Private_Tutor],
    [Educational_Center],
    [Paid_Educational_Platforms],
    [YouTube_or_Other_Free_Online_Resources],
    [No_Support_Needed],
    support_other,
    most_time_subjects_clean,
    time_Arabic_Language,
    time_First_Foreign_Language_English_French,
    time_Second_Foreign_Language,
    time_History,
    time_Geography,
    time_Philosophy_Logic,
    time_Psychology_Sociology,
    time_Physics,
    time_Chemistry,
    time_Geology,
    time_Dynamics_Statics,
    time_Calculus,
    time_Algebra,
    time_Solid_Geometry,
    time_Religious_Education,
    time_Biology,
    hardest_subjects_clean,
    hard_Arabic_Language,
    hard_First_Foreign_Language_English_French,
    hard_Second_Foreign_Language,
    hard_History,
    hard_Geography,
    hard_Philosophy_Logic,
    hard_Psychology_Sociology,
    hard_Physics,
    hard_Chemistry,
    hard_Geology,
    hard_Dynamics_Statics,
    hard_Calculus,
    hard_Algebra,
    hard_Solid_Geometry,
    hard_Religious_Education,
    hard_Biology,
    sleep_type,
    relatives_same_year,
    relatives_effect,
    sports_practice,
    concentration_issue,
    goal_college,
    achieved_goal,
    family_influence,
    teacher_interaction,
    creative_hobby,
    migration_thoughts,
    ai_usage_level,
    cheating_action,
    cheating_effect_vision,
    punished_in_school,
    environment_effect,
    study_hours_normal_cleaned,
    study_hours_exam_cleaned,
    sleep_hours_cleaned,
    mobile_hours_cleaned,
    hobby_hours_cleaned,
    study_distraction_clean,
    Phone_Social_Media,
    Entertainment_TVMoviesSports,
    Games,
    Friends_Social_Life,
    Overthinking_Mental,
    Family_Environment,
    Sleep_Laziness,
    [None],
    Study_topic_switching,
    Hobby_Fatigue,
    Other_Mixed
FROM[dbo].[Converted students];

-------------------------------------

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Converted_teachers_3';

-----------------------------------

CREATE VIEW vw_Teachers AS
SELECT
    [index],
    role,
    age,
    gender,
    governorate,
    residence_type,
    school_type,
    study_hours_weak,
    study_hours_average,
    study_hours_excellent,
    Private_Tutor,
    Educational_Center,
    Paid_Educational_Platforms,
    YouTube_or_Other_Free_Online_Resources,
    No_Support_Needed,
    Arabic_Language,
    First_Foreign_Language_English_French,
    Second_Foreign_Language,
    History,
    Geography,
    Philosophy_Logic,
    Psychology_Sociology,
    Physics,
    Chemistry,
    Geology,
    Dynamics_Statics,
    Calculus,
    Algebra,
    Solid_Geometry,
    Religious_Education,
    Biology,
    sleep_hours,
    sports_practice,
    family_influence,
    ai_usage_level,
    cheating_effect,
    study_distraction_clean,
    Phone_Screens,
    Social_Media_Internet,
    Friends_Social_Life,
    Games_Sports,
    TV_Series,
    Family_Visits,
    Lack_of_Motivation_Focus,
    Other
FROM [dbo].[Converted_teachers_3];
------------------------------------------

SELECT *
FROM vw_Students_Analysis;

SELECT *
FROM vw_Teachers;

															---- THE END ----