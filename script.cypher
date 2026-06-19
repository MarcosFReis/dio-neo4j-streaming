CRIANDO AS CONSTRAINTS (RESTRICÕES DE ID ÚNICO) 
CREATE CONSTRAINT user_id_unique FOR (u:User) REQUIRE u.id IS UNIQUE;
CREATE CONSTRAINT movie_id_unique FOR (m:Movie) REQUIRE m.id IS UNIQUE;
CREATE CONSTRAINT series_id_unique FOR (s:Series) REQUIRE s.id IS UNIQUE;

POPULANDO OS USUÁRIOS 
CREATE (u1:User {id: "U01", name: "Ana"});
CREATE (u2:User {id: "U02", name: "Paulo"});
CREATE (u3:User {id: "U03", name: "João"});
CREATE (u4:User {id: "U04", name: "Maya"});
CREATE (u5:User {id: "U05", name: "Lonan"});
CREATE (u6:User {id: "U06", name: "Pedro"});
CREATE (u7:User {id: "U07", name: "Eduarda"});
CREATE (u8:User {id: "U08", name: "Marcos"});
CREATE (u9:User {id: "U09", name: "Alan"});
CREATE (u10:User {id: "U10", name: "Alana"});

POPULANDO OS FILMES 
CREATE (m1:Movie {id: "M01", title: "The Matrix", releaseYear: 1999});
CREATE (m2:Movie {id: "M02", title: "The Godfather", releaseYear: 1972});
CREATE (m3:Movie {id: "M03", title: "Star Wars", releaseYear: 1977});
CREATE (m4:Movie {id: "M04", title: "The Green Mile", releaseYear: 1999});
CREATE (m5:Movie {id: "M05", title: "The Dark Knight", releaseYear: 2008});
CREATE (m6:Movie {id: "M06", title: "Forrest Gump", releaseYear: 1994});
CREATE (m7:Movie {id: "M07", title: "Dead Poets Society", releaseYear: 1989});
CREATE (m8:Movie {id: "M08", title: "Pulp Fiction", releaseYear: 1994});
CREATE (m9:Movie {id: "M09", title: "Inception", releaseYear: 2010});
CREATE (m10:Movie {id: "M10", title: "Home Alone", releaseYear: 1990});

POPULANDO AS SÉRIES 
CREATE (s1:Series {id: "S01", title: "Breaking Bad", releaseYear: 2008});
CREATE (s2:Series {id: "S02", title: "The Walking Dead", releaseYear: 2010});
CREATE (s3:Series {id: "S03", title: "Stranger Things", releaseYear: 2016});
CREATE (s4:Series {id: "S04", title: "Game of Thrones", releaseYear: 2011});
CREATE (s5:Series {id: "S05", title: "Dark", releaseYear: 2017});
CREATE (s6:Series {id: "S06", title: "The Crown", releaseYear: 2016});
CREATE (s7:Series {id: "S07", title: "Friends", releaseYear: 1994});
CREATE (s8:Series {id: "S08", title: "The Office", releaseYear: 2005});
CREATE (s9:Series {id: "S09", title: "Black Mirror", releaseYear: 2011});
CREATE (s10:Series {id: "S10", title: "Chernobyl", releaseYear: 2019});

POPULANDO OS GÊNEROS 
CREATE (g1:Genre {name: "Ficção Científica"});
CREATE (g2:Genre {name: "Drama"});
CREATE (g3:Genre {name: "Ação"});
CREATE (g4:Genre {name: "Comédia"});
CREATE (g5:Genre {name: "Terror"});
CREATE (g6:Genre {name: "Suspense"});
CREATE (g7:Genre {name: "Romance"});

RELACIONAMENTOS DE ASSISTIDO (WATCHED) COM RATING 

 Ana (u1)
MATCH (u:User {id: "U01"}), (m:Movie {id: "M01"}) CREATE (u)-[:WATCHED {rating: 5.0}]->(m);
MATCH (u:User {id: "U01"}), (s:Series {id: "S01"}) CREATE (u)-[:WATCHED {rating: 5.0}]->(s);

 Paulo (u2)
MATCH (u:User {id: "U02"}), (m:Movie {id: "M02"}) CREATE (u)-[:WATCHED {rating: 4.8}]->(m);
MATCH (u:User {id: "U02"}), (s:Series {id: "S03"}) CREATE (u)-[:WATCHED {rating: 4.0}]->(s);

 João (u3)
MATCH (u:User {id: "U03"}), (m:Movie {id: "M03"}) CREATE (u)-[:WATCHED {rating: 4.2}]->(m);
MATCH (u:User {id: "U03"}), (s:Series {id: "S04"}) CREATE (u)-[:WATCHED {rating: 5.0}]->(s);

 Maya (u4)
MATCH (u:User {id: "U04"}), (m:Movie {id: "M09"}) CREATE (u)-[:WATCHED {rating: 4.7}]->(m);
MATCH (u:User {id: "U04"}), (s:Series {id: "S05"}) CREATE (u)-[:WATCHED {rating: 4.9}]->(s);

 Lonan (u5)
MATCH (u:User {id: "U05"}), (m:Movie {id: "M05"}) CREATE (u)-[:WATCHED {rating: 5.0}]->(m);
MATCH (u:User {id: "U05"}), (s:Series {id: "S08"}) CREATE (u)-[:WATCHED {rating: 4.5}]->(s);

 Pedro (u6)
MATCH (u:User {id: "U06"}), (m:Movie {id: "M10"}) CREATE (u)-[:WATCHED {rating: 3.8}]->(m);
MATCH (u:User {id: "U06"}), (s:Series {id: "S07"}) CREATE (u)-[:WATCHED {rating: 4.0}]->(s);

 Eduarda (u7)
MATCH (u:User {id: "U07"}), (m:Movie {id: "M06"}) CREATE (u)-[:WATCHED {rating: 4.5}]->(m);
MATCH (u:User {id: "U07"}), (s:Series {id: "S06"}) CREATE (u)-[:WATCHED {rating: 4.3}]->(s);

 Marcos (u8)
MATCH (u:User {id: "U08"}), (m:Movie {id: "M08"}) CREATE (u)-[:WATCHED {rating: 4.6}]->(m);
MATCH (u:User {id: "U08"}), (s:Series {id: "S09"}) CREATE (u)-[:WATCHED {rating: 4.2}]->(s);

 Alan (u9)
MATCH (u:User {id: "U09"}), (m:Movie {id: "M04"}) CREATE (u)-[:WATCHED {rating: 4.9}]->(m);
MATCH (u:User {id: "U09"}), (s:Series {id: "S10"}) CREATE (u)-[:WATCHED {rating: 5.0}]->(s);

 Alana (u10)
MATCH (u:User {id: "U10"}), (m:Movie {id: "M07"}) CREATE (u)-[:WATCHED {rating: 4.4}]->(m);
MATCH (u:User {id: "U10"}), (s:Series {id: "S02"}) CREATE (u)-[:WATCHED {rating: 3.5}]->(s);

CONEXÃO DOS FILMES AOS GÊNEROS (IN_GERNE) 
MATCH (m:Movie {id: "M01"}), (g:Genre {name: "Ficção Científica"}) CREATE (m)-[:IN_GERNE]->(g);
MATCH (m:Movie {id: "M02"}), (g:Genre {name: "Drama"}) CREATE (m)-[:IN_GERNE]->(g);
MATCH (m:Movie {id: "M03"}), (g:Genre {name: "Ficção Científica"}) CREATE (m)-[:IN_GERNE]->(g);
MATCH (m:Movie {id: "M04"}), (g:Genre {name: "Drama"}) CREATE (m)-[:IN_GERNE]->(g);
MATCH (m:Movie {id: "M05"}), (g:Genre {name: "Ação"}) CREATE (m)-[:IN_GERNE]->(g);
MATCH (m:Movie {id: "M06"}), (g:Genre {name: "Romance"}) CREATE (m)-[:IN_GERNE]->(g);
MATCH (m:Movie {id: "M07"}), (g:Genre {name: "Drama"}) CREATE (m)-[:IN_GERNE]->(g);
MATCH (m:Movie {id: "M08"}), (g:Genre {name: "Ação"}) CREATE (m)-[:IN_GERNE]->(g);
MATCH (m:Movie {id: "M09"}), (g:Genre {name: "Suspense"}) CREATE (m)-[:IN_GERNE]->(g);
MATCH (m:Movie {id: "M10"}), (g:Genre {name: "Comédia"}) CREATE (m)-[:IN_GERNE]->(g);

CONEXÃO DAS SÉRIES AOS GÊNEROS (IN_GERNE) 
MATCH (s:Series {id: "S01"}), (g:Genre {name: "Drama"}) CREATE (s)-[:IN_GERNE]->(g);
MATCH (s:Series {id: "S02"}), (g:Genre {name: "Terror"}) CREATE (s)-[:IN_GERNE]->(g);
MATCH (s:Series {id: "S03"}), (g:Genre {name: "Ficção Científica"}) CREATE (s)-[:IN_GERNE]->(g);
MATCH (s:Series {id: "S04"}), (g:Genre {name: "Drama"}) CREATE (s)-[:IN_GERNE]->(g);
MATCH (s:Series {id: "S05"}), (g:Genre {name: "Suspense"}) CREATE (s)-[:IN_GERNE]->(g);
MATCH (s:Series {id: "S06"}), (g:Genre {name: "Drama"}) CREATE (s)-[:IN_GERNE]->(g);
MATCH (s:Series {id: "S07"}), (g:Genre {name: "Comédia"}) CREATE (s)-[:IN_GERNE]->(g);
MATCH (s:Series {id: "S08"}), (g:Genre {name: "Comédia"}) CREATE (s)-[:IN_GERNE]->(g);
MATCH (s:Series {id: "S09"}), (g:Genre {name: "Ficção Científica"}) CREATE (s)-[:IN_GERNE]->(g);
MATCH (s:Series {id: "S10"}), (g:Genre {name: "Drama"}) CREATE (s)-[:IN_GERNE]->(g);
