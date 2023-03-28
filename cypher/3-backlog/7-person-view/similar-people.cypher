MATCH (:Person {tmdbId: $id})-[:ACTED_IN|DIRECTED]->(m)<-[r:ACTED_IN|DIRECTED]-(p)
WITH p, collect(m {.tmdbId, .title, type: type(r)}) AS inCommon
RETURN p {
  .*,
  actedCount: count { (p)-[:ACTED_IN]->() },
  directedCount: count {(p)-[:DIRECTED]->() },
  inCommon: inCommon
} AS person
ORDER BY size(person.inCommon) DESC
SKIP 0
LIMIT 6
