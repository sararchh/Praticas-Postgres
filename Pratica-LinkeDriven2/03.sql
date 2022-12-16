SELECT users.name AS writer,  COUNT(message) AS testimonialCount
FROM testimonials
JOIN users
ON testimonials."writerId" = users.id
WHERE "writerId" = 435
GROUP BY "writerId", users.name
;