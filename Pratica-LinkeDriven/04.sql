SELECT users.id, users.name, companies.name company, roles.name roles,experiences."startDate" FROM companies 
  JOIN experiences 
  ON experiences."companyId" = companies.id
  JOIN users 
  ON experiences."userId" = users.id
  JOIN roles
  ON experiences."roleId" = roles.id

  WHERE users.id = 50 AND experiences."endDate"  IS NOT NULL
  ;