MATCH (p:Person)
WHERE $q IS NULL OR p.name CONTAINS $q
RETURN p { .* } AS person
ORDER BY p.name ASC
SKIP $skip
LIMIT $limit
