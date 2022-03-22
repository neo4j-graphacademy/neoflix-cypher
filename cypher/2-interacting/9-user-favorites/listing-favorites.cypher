MATCH (:User {userId: $userId})-[:HAS_FAVORITE]->(m)

RETURN m {
    .*,
    favorite: true
} AS movie
