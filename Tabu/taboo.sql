/*
 * This scripts creates a sqlite3 database with taboo cards.
 */
CREATE TABLE Cards (
card_id INTEGER,
card_word TEXT(2000000000),
taboo1 TEXT(2000000000),
taboo2 TEXT(2000000000),
taboo3 TEXT(2000000000),
taboo4 TEXT(2000000000),
taboo5 TEXT(2000000000),
CONSTRAINT CARDS_PK PRIMARY KEY (card_id)
);

CREATE INDEX sqlite_autoindex_Cards_1 ON Cards (card_id,card_word);

INSERT INTO Cards (card_id, card_word, taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (1, 'Mantequilla', 'Cocina','Grasa','Amarilla','Desayuno','Tostada');
INSERT INTO Cards (card_id, card_word, taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (2, 'Teléfono', 'Hablar','Móvil','Cable','Marcar','Números');
INSERT INTO Cards (card_id, card_word, taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (3, 'Piscina', 'Agua','Nadar','Bañar','Verano','Cloro');
INSERT INTO Cards (card_id, card_word, taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (4, 'Ratón', 'Ordenador','Animal','Rata','Queso','Trampa');
INSERT INTO Cards (card_id, card_word, taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (5, 'Carretera', 'Coche','Autopista','Autovía','Asfalto','Camión');
INSERT INTO Cards (card_id, card_word, taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (6, 'Buzón', 'Email','Carta','Correo','Sello','Cartero');
INSERT INTO Cards (card_id, card_word, taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (7, 'Puente', 'Agua','Río','Cruzar','Triana','Pasar');
INSERT INTO Cards (card_id, card_word, taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (8, 'Rascacielos', 'Edificio','Alto','Torre','Nueva York','Grande');
INSERT INTO Cards (card_id, card_word, taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (9, 'Escalera', 'Subir','Escalón','Caracol','Desayuno','Tostada');
INSERT INTO Cards (card_id, card_word, taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (10, 'Televisión', 'Película','Serie','Antena','Caja','Ver');

INSERT INTO Cards (card_id, card_word, taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (11, 'Rubia', 'Cerveza','Chica','Pelo','Cabello','Claro');
INSERT INTO Cards (card_id, card_word, taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (12, 'Sueño', 'Dormir','Cama','Noche','Ojos','Pesadilla');
INSERT INTO Cards (card_id, card_word, taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (13, 'Piloto', 'Conductor','Vuelo','Avión','Alas','Aeropuerto');
INSERT INTO Cards (card_id, card_word, taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (14, 'Luna', 'Satélite','Astronomía','Pisar','Hombre','Espacio');
INSERT INTO Cards (card_id, card_word, taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (15, 'Encuesta', 'Sondeo','Política','Estadística','Elecciones','Periódicos');
INSERT INTO Cards (card_id, card_word, taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (16, 'Tren', 'Vía','Ferrocarril','AVE','Raíl','Vagón');
INSERT INTO Cards (card_id, card_word, taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (17, 'Acelerar', 'Rápido','Velocidad','Tiempo','Prisa','Gravedad');
INSERT INTO Cards (card_id, card_word, taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (18, 'Fregona', 'Invento','Suelo','Escoba','Limpiar','Palo');
INSERT INTO Cards (card_id, card_word, taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (19, 'Cepillo', 'Ropa','Dientes','Limpiar','Peluquero','Pelo');
INSERT INTO Cards (card_id, card_word, taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (20, 'Balón', 'Fútbol','Pelota','Alabar','Hacer','Deporte');