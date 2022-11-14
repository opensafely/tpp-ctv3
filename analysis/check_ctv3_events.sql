/* Find any codes from the CodedEvent table that are NOT present
in the CTV3Dictioary table */

SELECT t.CTV3Code AS number_of_missing_codes
FROM (SELECT DISTINCT CTV3Code FROM CodedEvent) AS t
LEFT JOIN
    CTV3Dictionary
    ON CTV3Dictionary.CTV3Code = t.CTV3Code
WHERE CTV3Dictionary.CTV3Code IS NULL
