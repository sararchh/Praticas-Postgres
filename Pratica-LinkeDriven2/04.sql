-- Utilizando 1 query, obtenha o maior salário das vagas (jobs) ativas (active sendo true);
SELECT MAX(jobs.salary) AS maximumSalary
FROM jobs
JOIN roles
ON jobs."roleId" = roles.id
WHERE active = true
;

-- nome das posições (roles) dessas vagas ordenadas de forma ascendente
SELECT MAX(jobs.salary) AS maximumSalary, roles.name AS role
FROM jobs
JOIN roles
ON jobs."roleId" = roles.id
WHERE active = true

GROUP BY jobs.salary, roles.name
ORDER BY  jobs.salary ASC
;