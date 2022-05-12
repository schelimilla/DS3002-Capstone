

-- Add a new column '[NewColumnName]' to table '[TableName]' in schema '[dbo]'
ALTER TABLE [dbo].[patients]
    ADD [date_of_visit_key] /*new_column_name*/ int /*new_column_datatype*/ NULL /*new_column_nullability*/
GO
-- ONLY RUN THE ABOVE CODE ONCE!


UPDATE insurance_pat.dbo.patients
SET insurance_pat.dbo.patients.date_of_visit_key = insurance_pat.dbo.DimDate.DateKey
FROM 
insurance_pat.dbo.patients
JOIN insurance_pat.dbo.DimDate
ON insurance_pat.dbo.patients.date_of_visit = insurance_pat.dbo.DimDate.Date




SELECT * FROM insurance_pat.dbo.patients