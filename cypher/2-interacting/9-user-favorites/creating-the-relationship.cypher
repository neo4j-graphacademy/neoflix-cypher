MATCH (u:User {userId: $userId})
MATCH (m:Movie {tmdbId: $movieId})

MERGE (u)-[r:HAS_FAVORITE]->(m)
ON CREATE SET r.createdAt = datetime()

RETURN m {
    .*,
    favorite: true
} AS movie
