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

INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (1,'Mantequilla','Cocina','Grasa','Amarilla','Desayuno','Tostada');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (2,'Teléfono','Hablar','Móvil','Cable','Marcar','Números');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (3,'Piscina','Agua','Nadar','Bañar','Verano','Cloro');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (4,'Ratón','Ordenador','Animal','Rata','Queso','Trampa');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (5,'Carretera','Coche','Autopista','Autovía','Asfalto','Camión');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (6,'Buzón','Email','Carta','Correo','Sello','Cartero');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (7,'Puente','Agua','Río','Cruzar','Triana','Pasar');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (8,'Rascacielos','Edificio','Alto','Torre','Nueva York','Grande');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (9,'Escalera','Subir','Escalón','Caracol','Desayuno','Tostada');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (10,'Televisión','Película','Serie','Antena','Caja','Ver');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (11,'Rubia','Cerveza','Chica','Pelo','Cabello','Claro');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (12,'Sueño','Dormir','Cama','Noche','Ojos','Pesadilla');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (13,'Piloto','Conductor','Vuelo','Avión','Alas','Aeropuerto');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (14,'Luna','Satélite','Astronomía','Pisar','Hombre','Espacio');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (15,'Encuesta','Sondeo','Política','Estadística','Elecciones','Periódicos');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (16,'Tren','Vía','Ferrocarril','AVE','Raíl','Vagón');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (17,'Acelerar','Rápido','Velocidad','Tiempo','Prisa','Gravedad');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (18,'Fregona','Invento','Suelo','Escoba','Limpiar','Palo');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (19,'Cepillo','Ropa','Dientes','Limpiar','Peluquero','Pelo');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (20,'Balón','Fútbol','Pelota','Alabar','Hacer','Deporte');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (21,'Voto','Recuento','Urna','Elecciones','Presidente','Parlamento');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (22,'Soldado','Reclutar','Alistar','Militar','Ejército','Guerra');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (23,'Cajero Automático','Dinero','Billetes','Banco','Sacar','Tarjeta');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (24,'Cabezota','Terco','Tozudo','Ceder','Testarudo','Pesado');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (25,'Plancha','Pelo','Ropa','Arrugas','Vapor','Tabla');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (26,'Vegetariano','Comida','Alimento','Carne','Verdura','Lechuga');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (27,'Bienvenida','Llegar','Nuevo','Saludar','Fiesta','Volver');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (28,'Alarma','Seguridad','Casa','Ladrón','Coche','Despertador');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (29,'Auricular','Música','Cascos','Orejas','MP3','iPod');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (30,'007','Película','Aventura','Agente','Pierce Brosman','James Bond');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (31,'Patinar','Ruedas','En línea','Hielo','Pies','Zapatos');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (32,'Idioma','Inglés','Francés','Lengua','Comunicación','Chino');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (33,'Estanco','Periódico','Tabaco','Papelería','Calle','Sellos');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (34,'Lotería','Billete','Décimo','Millones','Rico','Navidad');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (35,'Pimiento','Importar','Verdura','Rojo','Verde','Asado');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (36,'Fluorescente','Color','Rotulador','Fosforito','Neón','Luces');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (37,'Bloqueo','Interrupción','Político','Barrera','Paralizar','Asedio');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (38,'Deshaucio','Casa','Echar','Hipoteca','Pagar','Expulsar');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (39,'Teclado','Ordenador','Escribir','Pulsar','Inalámbrico','Portátil');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (40,'Light','Pocas calorías','Adelgazar','Peso','Azúcar','CocaCola');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (41,'Tom Hanks','Soldado Ryan','Actor','Hollywood','Forrest Gump','Oscar');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (42,'Corriente','Alterna','Continua','Aire','Mar','Río');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (43,'Eva','Manzana','Wall-e','Adán','Serpiente','Jardín');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (44,'Tapas','Bar','España','Caña','Picar','Comer');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (45,'Bancarrota','Banco','Empresa','Crisis','Caer','Números');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (46,'Edad Media','Época','Siglo','Era','Renacimiento','Antigüedad');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (47,'Trufa','Chocolate','Pavo','Cerdo','Bosque','Pastel');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (48,'Venta','Nabo','Comercio','Compra','Tienda','Ofrecer');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (49,'Base','Militar','Aérea','Rap','Plataforma','Centro');
INSERT INTO Cards (card_id,card_word,taboo1,taboo2,taboo3,taboo4,taboo5) VALUES (50,'Chip','Tecnología','Procesador','Ordenador','Electrónica','Informática');

