SELECT "userId" AS id,  COUNT("courseId") AS educations
FROM educations
GROUP BY "userId"
;