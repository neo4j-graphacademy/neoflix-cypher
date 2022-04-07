// ordering will be dynamic in implementation
MATCH (m:Movie)
WHERE m.title IS NOT NULL
RETURN m {
  .*
} AS movie
ORDER BY m.title ASC
SKIP $skip
LIMIT $limit
