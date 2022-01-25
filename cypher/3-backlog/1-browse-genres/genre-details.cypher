MATCH (g:Genre)
WHERE g.name <> '(no genres listed)'

CALL {
  WITH g
  MATCH (g)<-[:IN_GENRE]-(m:Movie)
  WHERE m.imdbRating IS NOT NULL AND m.poster IS NOT NULL
  RETURN m.poster AS poster
  ORDER BY m.imdbRating DESC LIMIT 1
}

RETURN g {
  .*,
  movies: size((g)<-[:IN_GENRE]-(:Movie)),
  poster: poster
}
ORDER BY g.name ASC
