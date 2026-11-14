DROP TABLE IF EXISTS autores;
DROP TABLE IF EXISTS posts;

CREATE TABLE autores (
  id              INT AUTO_INCREMENT PRIMARY KEY,
  nombre          VARCHAR(50),
  email           VARCHAR(100),
  imagen          VARCHAR(255)
);

CREATE TABLE posts (
  id          INT AUTO_INCREMENT PRIMARY KEY,
  titulo              VARCHAR(100),
  descripcion         TEXT,
  categoria           VARCHAR(50),
  autores_id          INT,
  fecha_creacion      DATE,
  FOREIGN KEY (autores_id) REFERENCES autores(id)
);

INSERT INTO autores (nombre, email, imagen) VALUES
('Juan Pérez', 'juan.perez@email.com', 'juan.jpg'),
('María García', 'maria.garcia@email.com', 'maria.jpg'),
('Carlos Rodríguez', 'carlos.rodriguez@email.com', 'carlos.jpg'),
('Ana López', 'ana.lopez@email.com', 'ana.jpg'),
('Luis Martínez', 'luis.martinez@email.com', 'luis.jpg'),
('Sofía Hernández', 'sofia.hernandez@email.com', 'sofia.jpg'),
('Diego Ramírez', 'diego.ramirez@email.com', 'diego.jpg'),
('Valentina Torres', 'valentina.torres@email.com', 'valentina.jpg'),
('Fernando Castillo', 'fernando.castillo@email.com', 'fernando.jpg'),
('Camila Navarro', 'camila.navarro@email.com', 'camila.jpg');

INSERT INTO posts (titulo, descripcion, categoria, autores_id, fecha_creacion) VALUES
('La evolución de los RPG modernos', 'Análisis de cómo los RPG han cambiado durante la última década.', 'RPG', 1, '2026-01-15'),
('Los mejores shooters competitivos', 'Comparativa de los FPS más populares actualmente.', 'FPS', 2, '2026-01-20'),
('Indies que sorprendieron al mundo', 'Pequeños estudios que lograron grandes éxitos.', 'Indie', 3, '2026-01-25'),
('Guía para principiantes en MMORPG', 'Consejos básicos para nuevos jugadores.', 'MMORPG', 4, '2026-02-01'),
('La importancia de la narrativa en videojuegos', 'Cómo una buena historia mejora la experiencia.', 'Análisis', 5, '2026-02-05'),
('Top 10 juegos de estrategia', 'Una lista de los mejores títulos del género.', 'Estrategia', 6, '2026-02-08'),
('Mundos abiertos inolvidables', 'Explorando algunos de los escenarios más impresionantes.', 'Aventura', 7, '2026-02-12'),
('¿Qué hace grande a un juego indie?', 'Elementos clave del éxito en títulos independientes.', 'Indie', 8, '2026-02-15'),
('La revolución de los juegos cooperativos', 'Cómo jugar con amigos ha evolucionado.', 'Multijugador', 9, '2026-02-18'),
('Los villanos más memorables', 'Personajes antagonistas que dejaron huella.', 'Análisis', 10, '2026-02-20'),

('Estrategias para ganar en MOBA', 'Consejos avanzados para mejorar tus partidas.', 'MOBA', 1, '2026-03-01'),
('Los mejores simuladores de conducción', 'Realismo y diversión al volante.', 'Simulación', 2, '2026-03-03'),
('Juegos de supervivencia imprescindibles', 'Títulos que ponen a prueba tus habilidades.', 'Survival', 3, '2026-03-05'),
('Cómo optimizar tu PC para gaming', 'Mejora el rendimiento de tus juegos.', 'Hardware', 4, '2026-03-08'),
('La historia de los esports', 'Del entretenimiento casual a la competición profesional.', 'Esports', 5, '2026-03-10'),
('RPG clásicos que debes jugar', 'Joyas del pasado que siguen vigentes.', 'RPG', 6, '2026-03-12'),
('Análisis de la inteligencia artificial en videojuegos', 'NPCs más inteligentes y desafiantes.', 'Tecnología', 7, '2026-03-15'),
('Juegos cooperativos para pasar el fin de semana', 'Opciones ideales para jugar en grupo.', 'Multijugador', 8, '2026-03-18'),
('Los mejores remakes de la historia', 'Títulos que renovaron clásicos exitosamente.', 'Análisis', 9, '2026-03-20'),
('La influencia de los videojuegos en la cultura pop', 'Impacto en cine, música y televisión.', 'Cultura', 10, '2026-03-22'),

('¿Vale la pena jugar retro?', 'Ventajas de regresar a los clásicos.', 'Retro', 1, '2026-04-01'),
('Mecánicas innovadoras que cambiaron la industria', 'Ideas que marcaron un antes y un después.', 'Análisis', 2, '2026-04-03'),
('Shooters tácticos en auge', 'La nueva tendencia en los FPS.', 'FPS', 3, '2026-04-05'),
('Los mejores juegos de gestión', 'Administración, estrategia y diversión.', 'Simulación', 4, '2026-04-07'),
('Bandas sonoras que hicieron historia', 'Música inolvidable en videojuegos.', 'Música', 5, '2026-04-09'),
('La importancia del diseño de niveles', 'Cómo influye en la experiencia del jugador.', 'Diseño', 6, '2026-04-11'),
('Juegos cortos pero memorables', 'Experiencias breves que valen la pena.', 'Indie', 7, '2026-04-13'),
('Los mejores mapas multijugador', 'Escenarios icónicos del gaming.', 'Multijugador', 8, '2026-04-15'),
('Cómo los videojuegos enseñan habilidades', 'Aprendizaje a través del entretenimiento.', 'Educación', 9, '2026-04-18'),
('Universos de ciencia ficción más interesantes', 'Explorando galaxias y futuros imaginarios.', 'Sci-Fi', 10, '2026-04-20'),

('Juegos de terror que debes probar', 'Títulos perfectos para los amantes del miedo.', 'Terror', 1, '2026-05-01'),
('El auge de los roguelike', 'Por qué este género sigue creciendo.', 'Roguelike', 2, '2026-05-03'),
('Personajes femeninos icónicos', 'Protagonistas que marcaron generaciones.', 'Análisis', 3, '2026-05-05'),
('Cómo se crean los mundos abiertos', 'Diseño y desarrollo detrás de grandes mapas.', 'Desarrollo', 4, '2026-05-08'),
('Realidad virtual en videojuegos', 'El presente y futuro de la VR.', 'Tecnología', 5, '2026-05-10'),
('Juegos para relajarse después del trabajo', 'Experiencias tranquilas y entretenidas.', 'Casual', 6, '2026-05-12'),
('Los mejores bosses finales', 'Enfrentamientos épicos para recordar.', 'Acción', 7, '2026-05-15'),
('Tendencias del gaming en 2026', 'Lo que está marcando la industria.', 'Noticias', 8, '2026-05-18'),
('La importancia del doblaje en videojuegos', 'Cómo mejora la inmersión.', 'Audio', 9, '2026-05-20'),
('Juegos que definieron una generación', 'Títulos que cambiaron la historia del gaming.', 'Historia', 10, '2026-05-25');