MATCH (p:Person {tmdbId: "1776"})
RETURN count { (p)-[:DIRECTED]->() }
