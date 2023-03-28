MATCH (g:Genre)
RETURN g.name ORDER BY count{ (g)<-[:IN_GENRE]-() } DESC LIMIT 1
