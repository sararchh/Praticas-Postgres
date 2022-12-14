SELECT courses.id, users.name,courses.name course, schools.name school,  educations."endDate" FROM courses
  JOIN educations
  ON courses.id = educations."courseId"
  JOIN schools
  ON educations."schoolId" = schools.id
  JOIN users
  ON educations."userId" = users.id
  WHERE users.id = 30
  ;