-- Replaces specific character with a new character

-- Remove dashes (-) from a phone number

SELECT '123-456-7890' AS phone,
REPLACE('123-456-7890', '-', '') AS phone_clean;

-- Replace file extence from txt to csv

SELECT 'report.txt' AS old_filename,
    REPLACE('report.txt', '.txt', '.csv') AS new_filename;