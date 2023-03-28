MATCH (p:Person {tmdbId: $id})
RETURN p {
  .*,
  actedCount: count { (p)-[:ACTED_IN]->() },
  directedCount: count { (p)-[:DIRECTED]->() }
} AS person
