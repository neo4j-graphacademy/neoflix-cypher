MATCH (g:Genre {name: "Action"})
RETURN count { (g)<-[:IN_GENRE]-() }
