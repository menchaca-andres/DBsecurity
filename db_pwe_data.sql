-- Datos de prueba grupo base de datos 

--Inicio
-- Tabla Departamentos
INSERT INTO DEPARTAMENTOS (id_departamento, nombre_depto) VALUES
(1, 'La Paz'),
(2, 'Santa Cruz'),
(3, 'Cochabamba'),
(4, 'Oruro'),
(5, 'Potosí'),
(6, 'Chuquisaca'),
(7, 'Tarija'),
(8, 'Pando'),
(9, 'Beni');

-- Tabla Ciudades
INSERT INTO CIUDADES (id_ciudad, id_departamento, nombre_ciudad) VALUES
(1, 1, 'La Paz'),
(2, 1, 'El Alto'),
(3, 2, 'Santa Cruz de la Sierra'),
(4, 2, 'Montero'),
(5, 3, 'Cochabamba'),
(6, 3, 'Quillacollo'),
(7, 4, 'Oruro'),
(8, 5, 'Potosí'),
(9, 5, 'Uyuni'),
(10, 6, 'Sucre'),
(11, 7, 'Tarija'),
(12, 8, 'Cobija'),
(13, 9, 'Trinidad'),
(14, 9, 'Riberalta');

--Tabla Municipios
INSERT INTO MUNICIPIOS (id_municipio, id_ciudad, nombre_municipio) VALUES
(1, 1, 'Municipio La Paz'),
(2, 2, 'Municipio El Alto'),
(3, 3, 'Municipio Santa Cruz'),
(4, 4, 'Municipio Montero'),
(5, 5, 'Municipio Cochabamba'),
(6, 6, 'Municipio Quillacollo'),
(7, 7, 'Municipio Oruro'),
(8, 8, 'Municipio Potosí'),
(9, 9, 'Municipio Uyuni'),
(10, 10, 'Municipio Sucre'),
(11, 11, 'Municipio Tarija'),
(12, 12, 'Municipio Cobija'),
(13, 13, 'Municipio Trinidad'),
(14, 14, 'Municipio Riberalta');

-- Tabla Sedes								OJO
INSERT INTO SEDES (id_ubicacion, id_municipio, zona, calle, referencias, nombre_edificio, longitud, latitud) VALUES
(1, 1, 'Zona Central', 'Calle 1', 'Frente a la plaza', 'Mi sede', -16.5, -68.15),
(2, 2, 'Zona Norte', 'Avenida 2', 'Cerca del mercado', 'Una tiendita', -16.52, -68.14),
(3, 3, 'Zona Este', 'Calle 3', 'Al lado del parque', 'Esto aquí', -17.8, -63.20),
(4, 4, 'Zona Sur', 'Calle 4', 'Frente a la universidad', 'Edificio D', -17.39, -66.15),
(5, 5, 'Zona Centro', 'Calle 5', 'Cerca del estadio', 'Esto allá', -19.58, -65.75),
(6, 1, 'Zona Alto', 'Calle 6', 'Arriba de la colina', 'Mi otra sede', -16.51, -68.165),
(7, 3, 'Zona Oeste', 'Avenida Principal', 'Por el puente', 'Una tiendita más', -17.87, -63.19);

-- Tabla Roles
INSERT INTO ROLES (id_rol, nombre_rol) VALUES
(1, 'Administrador'),
(2, 'Visitante');

-- Tabla Usuarios
INSERT INTO USUARIOS (id_usuario, id_rol, usuario, contrasenia) VALUES
(1, 1, 'usuario1', 'admin123'),
(2, 1, 'usuario2', 'admin21234');

-- Tabla Familia
INSERT INTO FAMILIA (id_familia, nombre_familia) VALUES
(1, 'Pérez'),
(2, 'González'),
(3, 'López'),
(4, 'Flores'),
(5, 'Aguilar'),
(6, 'Rodríguez'),
(7, 'Guachalla'),
(8, 'Choque'),
(9, 'Castillo'),
(10, 'Vargas'),
(11, 'Mendoza'),
(12, 'Salazar'),
(13, 'Valdivia'),
(14, 'Ivanov'),
(15, 'Smirnova');

-- Tabla Propietarios
INSERT INTO PROPIETARIOS (id_propietario, nombre, apellido_paterno, apellido_materno, nacionalidad, es_familia, id_familia) VALUES
(1, 'Juan', 'Pérez', 'Gómez', 'Boliviana', true, 1),
(2, 'María', 'González', 'López', 'Boliviana', true, 2),
(3, 'Carlos', 'López', 'Martínez', 'Argentina', true, 3),
(4, 'Ana', 'Flores', 'Quispe', 'Boliviana', true, 4),
(5, 'Luis', 'Aguilar', 'Choque', 'Peruana', true, 5),
(6, 'Sofía', 'Rodríguez', 'Mamani', 'Boliviana', true, 6),
(7, 'Miguel', 'Guachalla', 'Vargas', 'Chilena', true, 7),
(8, 'Elena', 'Choque', 'Salazar', 'Boliviana', true, 8),
(9, 'Diego', 'Castillo', 'Valdivia', 'Argentina', true, 9),
(10, 'Lucía', 'Vargas', 'Mendoza', 'Boliviana', true, 10),
(11, 'Fernando', 'Mendoza', 'Rojas', 'Boliviana', true, 11),
(12, 'Rosa', 'Salazar', 'Arce', 'Boliviana', true, 12),
(13, 'Ángel', 'Valdivia', 'Peña', 'Boliviana', true, 13),
(14, 'Vladimir', 'Ivanov', 'Petrov', 'Rusa', true, 14),
(15, 'Anastasia', 'Smirnova', 'Kuznetsova', 'Rusa', true, 15);

--Tabla tipo-societario
INSERT INTO TIPOS_SOCIETARIOS (id_tipsoc, nombre_tipsoc) VALUES
(1, 'Sociedad Anónima'),
(2, 'Sociedad de Responsabilidad Limitada'),
(3, 'Empresa Individual'),
(4, 'Cooperativa'),
(5, 'Sociedad en Comandita Simple'),
(6, 'Sociedad Colectiva'),
(7, 'Empresa Multinacional');

-- Tabla tamaño-empresa
INSERT INTO TAMANIOS_EMPRESAS (id_tamanio, nombre_tamanio) VALUES
(1, 'Microempresa'),
(2, 'Pequeña Empresa'),
(3, 'Mediana Empresa'),
(4, 'Gran Empresa');

--Tabla empresas
INSERT INTO EMPRESAS (id_empresa, denominacion_social, nombre_comercial, fecha_fundacion, fecha_cierre, nit, eslogan, descripcion, url) VALUES
(1, 'Tech Solutions S.A.', 'TechSol', '2010-05-15', NULL, 123456, 'Somos la número 1 en tecnolgía', 'Descripción aquí', 'elEjemplo'),
(2, 'Alimentos Saludables Ltda.', 'AlimentaSalud', '2005-08-20', NULL, 654321, 'Cuidamos tu salud', 'Descripción aquí', 'elEjemplo'),
(3, 'Construcciones Modernas SRL', 'Construmod', '2018-03-10', '2023-12-31', 789012, 'Nos aseguramos que el techo de tu casa no te caiga encima', 'Descripción aquí', 'elEjemplo'),
(4, 'Innovación Creativa S.R.L.', 'InnovaCrea', '2015-01-20', NULL, 456789, 'Creer es crear', 'Descripción aquí', 'elEjemplo'),
(5, 'Distribuciones Globales S.A.', 'GlobalDistrib', '2000-11-10', NULL, 123789, 'Hasta la puerta de tu casa', 'Descripción aquí', 'elEjemplo'),
(6, 'Mi Empresa S.R.L.', 'Esto de aquí', '1999-07-15', '2005-02-06', 321456, 'Tu empresa', 'Descripción aquí', 'elEjemplo'),
(7, 'Tiendita de Juan', 'TienditaJuan', '2020-03-05', '2020-04-05', 987654, 'Juan y los mejores panes', 'Descripción aquí', 'elEjemplo'),
(8, 'La Sede Importadora', 'Mi Sede S.R.L.', '2012-06-25', NULL, 654987, 'Importamos lo que quieras', 'Descripción aquí', 'elEjemplo'),
(9, 'Mi Empresa Ltda.', 'TecnoInnova', '2019-09-01', NULL, 741852, 'Otra empresa', 'Descripción aquí', 'elEjemplo'),
(10, 'Mega Proyectos Bolivia S.A.', 'MegaBolivia', '2008-05-22', NULL, 852963, 'La mejor en Bolivia', 'Descripción aquí', 'elUrlEjemplo');

--Tabla empresas-tipos-societarios
INSERT INTO EMPRESAS_TIPOS_SOCIETARIOS (id_empresa, id_tipsoc, fecha_inicio, fecha_fin) VALUES
(1, 1, '2010-05-15', '9999-12-31'),
(2, 2, '2005-08-20', '9999-12-31'),
(3, 2, '2018-03-10', '2023-12-31'),
(4, 3, '2015-01-20', '2025-01-01'),
(5, 1, '2000-11-10', '2015-12-31'),
(6, 2, '1999-07-15', '2005-02-06'),
(7, 1, '2020-03-05', '2020-04-05'),
(8, 2, '2012-06-25', '2018-12-31'),
(9, 1, '2019-09-01', '2022-06-30'),
(10, 3, '2008-05-22', '2024-01-01');

-- tabla empresas-tamaños
INSERT INTO EMPRESAS_TAMANIOS (id_empresa, id_tamanio, fecha_inicio_et, fecha_fin_et, num_empleados) VALUES
(1, 3, '2020-01-01', '2025-01-01', 150),
(2, 2, '2015-01-01', '2024-01-01', 50),
(3, 4, '2018-03-10', '2023-12-31', 200),
(4, 1, '2015-01-20', '2023-12-31', 10),
(5, 2, '2000-11-10', '2020-06-30', 80),
(6, 3, '1999-07-15', '2005-02-06', 120),
(7, 1, '2020-03-05', '2020-04-05', 5),
(8, 2, '2012-06-25', '2022-06-30', 45),
(9, 3, '2019-09-01', '2025-06-30', 300),
(10, 4, '2008-05-22', '2024-01-01', 500);

--Tabla actividades
INSERT INTO ACTIVIDADES (id_actividad, nombre_actividad, descripcion) VALUES
(1, 'Desarrollo de Software', 'Creación de aplicaciones y sistemas informáticos'),
(2, 'Producción de Alimentos', 'Elaboración de productos alimenticios saludables'),
(3, 'Construcción Civil', 'Edificación de infraestructuras y viviendas'),
(4, 'Energías Renovables', 'Desarrollo e implementación de tecnologías de energía sostenible como solar y eólica'),
(5, 'Comercio Electrónico', 'Gestión y operación de plataformas de ventas en línea'),
(6, 'Consultoría Financiera', 'Asesoramiento para la gestión de recursos y estrategias financieras'),
(7, 'Producción Audiovisual', 'Creación de contenidos multimedia como videos, películas y animaciones'),
(8, 'Logística y Transporte', 'Planificación y ejecución de cadenas de suministro y transporte de mercancías'),
(9, 'Agricultura Orgánica', 'Cultivo y distribución de productos agrícolas libres de químicos'),
(10, 'Ciberseguridad', 'Implementación de medidas para proteger datos y sistemas informáticos'),
(11, 'Educación en Línea', 'Desarrollo y entrega de cursos y programas educativos a distancia'),
(12, 'Diseño Gráfico', 'Creación de materiales visuales como logotipos, folletos y branding'),
(13, 'Inteligencia Artificial', 'Desarrollo y aplicación de soluciones basadas en aprendizaje automático y procesamiento de datos'),
(14, 'Reciclaje y Reutilización', 'Procesamiento de materiales para convertirlos en nuevos productos'),
(15, 'Turismo Comunitario', 'Organización de experiencias turísticas que beneficien a las comunidades locales'),
(16, 'Desarrollo de Videojuegos', 'Diseño, programación y publicación de videojuegos interactivos'),
(17, 'Gastronomía Experimental', 'Creación de nuevas experiencias culinarias combinando tradición e innovación'),
(18, 'Tecnología Blockchain', 'Desarrollo de aplicaciones descentralizadas y manejo de cadenas de bloques'),
(19, 'Medicina Alternativa', 'Prácticas de salud complementarias como acupuntura y homeopatía'),
(20, 'Arte Urbano', 'Creación de murales y otras expresiones artísticas en espacios públicos');

--tabla rubro
INSERT INTO RUBROS (id_rublo, nombre_rubro, url) VALUES
(1, 'Tecnología', 'miUrlEjemplo'),
(2, 'Alimentación', 'miUrlEjemplo'),
(3, 'Construcción', 'miUrlEjemplo'),
(4, 'Educación', 'miUrlEjemplo'),
(5, 'Energía', 'miUrlEjemplo'),
(6, 'Turismo', 'miUrlEjemplo'),
(7, 'Moda', 'miUrlEjemplo'),
(8, 'Deportes', 'miUrlEjemplo'),
(9, 'Salud', 'miUrlEjemplo'),
(10, 'Entretenimiento', 'miUrlEjemplo'),
(11, 'Finanzas', 'miUrlEjemplo'),
(12, 'Logística', 'miUrlEjemplo'),
(13, 'Agricultura', 'miUrlEjemplo'),
(14, 'Consultoría', 'miUrlEjemplo'),
(15, 'Medios de Comunicación', 'miUrlEjemplo'),
(16, 'Arte y Diseño', 'miUrlEjemplo');

-- Tabla rubros_actividades
INSERT INTO RUBROS_ACTIVIDADES (id_rublo, id_actividad) VALUES
(1, 1),
(2, 2),
(3, 3),
(5, 4),
(1, 5),
(11, 6),
(15, 7),
(12, 8),
(13, 9),
(1, 10),
(4, 11),
(16, 12),
(1, 13),
(13, 14),
(6, 15),
(1, 16),
(2, 17),
(1, 18),
(9, 19),
(16, 20);

-- Tabla empresa-actividad: el campo principal, es para saber si es o no su actividad principal => principal es true si es su actividad principal y false si ya no es
INSERT INTO EMPRESA_ACTIVIDAD (id_actividad, id_empresa, fecha_inicio, fecha_fin, principal) VALUES
(1, 4, '2015-01-20', NULL, true),
(5, 5, '2000-11-10', '2015-12-31', false),
(9, 6, '1999-07-15', '2005-02-06', true),
(7, 7, '2020-03-05', '2020-04-05', false),
(10, 8, '2012-06-25', NULL, true),
(13, 9, '2019-09-01', NULL, false),
(3, 10, '2008-05-22', '2023-12-31', true),
(4, 4, '2016-03-10', '2022-12-31', false),
(2, 5, '2010-01-01', '2018-06-30', false),
(6, 6, '2001-04-15', '2004-08-20', true),
(15, 7, '2019-07-10', '2020-04-05', false),
(8, 8, '2013-05-10', '2023-10-30', true),
(14, 9, '2020-12-01', NULL, true),
(11, 10, '2011-09-22', '2019-08-15', false),
(18, 4, '2017-07-25', '2022-07-30', false),
(12, 5, '2010-05-18', NULL, true);

--tabla categoria items
INSERT INTO CATEGORIAS_ITEMS (id_categoria, nombre, descripcion) VALUES
(1, 'Electrónicos', 'Productos electrónicos y dispositivos'),
(2, 'Alimentos Orgánicos', 'Productos alimenticios orgánicos y naturales'),
(3, 'Materiales de Construcción', 'Materiales para construcción y obra civil'),
(4, 'Software', 'Productos y herramientas de desarrollo de software'),
(5, 'Electrodomésticos', 'Dispositivos para uso doméstico'),
(6, 'Ropa y Accesorios', 'Artículos de moda y accesorios personales'),
(7, 'Automotriz', 'Productos y servicios para vehículos');

--tabla items: true = producto y false = servicio
INSERT INTO ITEMS (id_item, nombre_item, tipo_item, descripcion) VALUES
(1, 'Laptop X200', true, 'Laptop de última generación'),               -- Producto
(2, 'Quinua Real', true, 'Quinua orgánica cultivada en Bolivia'),      -- Producto
(3, 'Cemento Portland', true, 'Cemento de alta resistencia'),          -- Producto
(4, 'Consultoría IT', false, 'Servicios de consultoría en tecnología'), -- Servicio
(5, 'Smartphone Z500', true, 'Teléfono inteligente de última tecnología'), -- Producto
(6, 'Harina Integral', true, 'Harina orgánica y saludable'),           -- Producto
(7, 'Pintura Latex', true, 'Pintura resistente para interiores y exteriores'), -- Producto
(8, 'Taller de Marketing Digital', false, 'Curso especializado en estrategias digitales'); -- Servicio


-- Tabla item-categorias
INSERT INTO ITEMS_CATEGORIAS (id_item, id_categoria) VALUES
(1, 1),
(2, 2),
(3, 3),
(5, 1),
(6, 2),
(7, 3),
(8, 4);

--tabla producto
INSERT INTO PRODUCTO (id_item, id_producto, url) VALUES
(1, 1, 'elUrlEjemplo'),
(2, 2, 'elUrlEjemplo'),
(3, 3, 'elUrlEjemplo'),
(5, 4, 'elUrlEjemplo'),
(6, 5, 'elUrlEjemplo'),
(7, 6, 'elUrlEjemplo');

--tabla servicio
INSERT INTO SERVICIO (id_servicio, id_item, duracion, modalidad, url) VALUES
(1, 4, 30, 'Online', 'elUrlEjemplo'),
(2, 8, 45, 'Presencial', 'elUrlEjemplo');

-- tabla empresas_items
INSERT INTO EMPRESAS_ITEMS (id_empresa_item, id_empresa, id_item, fecha_inicio_c, fecha_fin_c) VALUES
(1, 1, 1, '2020-01-01', '2025-01-01'),
(2, 1, 4, '2021-06-01', '2026-06-01'),
(3, 2, 2, '2015-08-20', '2025-08-20'),
(4, 3, 3, '2018-03-10', '2023-12-31'),
(5, 4, 5, '2016-01-01', '2022-12-31'),
(6, 5, 6, '2001-02-15', '2020-06-15'),
(7, 6, 7, '1999-07-15', '2005-02-06'),
(8, 7, 8, '2019-07-10', '2024-12-31');

-- tabla premios: true = internacional y false = nacional
INSERT INTO PREMIOS (id_premio, entidad_otorgadora, tipo_premio, url, descripcion) VALUES
(1, 'Cámara de Tecnología', true, 'unUrlEjemplo', 'Mejor Innovación Tecnológica 2022'),
(2, 'Asociación de Alimentos Saludables', false, 'unUrlEjemplo', 'Producto Orgánico del Año 2021'),
(3, 'Ministerio de Energía', true, 'unUrlEjemplo', 'Premio a la Sostenibilidad Energética 2023'),
(4, 'Fundación Cultural Boliviana', false, 'unUrlEjemplo', 'Reconocimiento a la Promoción del Arte Urbano 2022');

-- tabla premios_empresas
INSERT INTO PREMIOS_EMPRESAS (id_premio, id_empresa, fecha_p) VALUES
(1, 1, '2022-05-15'),
(2, 2, '2021-10-20'),
(3, 4, '2023-06-10'),
(4, 5, '2022-11-25');

-- tabla historial_propiedad: familia_activo se refiere si la empresa es familiar o no, asi que si es familiar, true, si ya no lo es, false
INSERT INTO HISTORIAL_PROPIEDAD (id_historial, id_propietario, id_empresa, fecha_inicio, fecha_fin, familia_activo) VALUES
(1, 1, 1, '2010-05-15', NULL, true),
(2, 2, 2, '2005-08-20', NULL, true),
(3, 3, 3, '2018-03-10', '2023-12-31', false),
(4, 4, 4, '2015-01-20', '2020-12-31', true),
(5, 5, 5, '2000-11-10', NULL, false);

-- tabla hitos
INSERT INTO HITOS (id_hito, id_empresa, descripcion, fecha_h, url) VALUES
(1, 1, 'Lanzamiento de la plataforma TechCloud', '2022-03-01', 'unUrlEjemplo'),
(2, 2, 'Expansión a mercados internacionales', '2020-09-10', 'unUrlEjemplo'),
(3, 3, 'Finalización del proyecto Torre Alta', '2023-11-15', 'unUrlEjemplo'),
(4, 4, 'Implementación de energías renovables', '2021-08-15', 'unUrlEjemplo'),
(5, 5, 'Apertura de nueva sede en Santa Cruz', '2022-05-10', 'unUrlEjemplo');

-- tabla empresas_sedes: true = sede principal, false = sucursal.
INSERT INTO EMPRESAS_SEDES (id_empresa, id_ubicacion, fecha_inicio, fecha_fin, tipo) VALUES
(1, 1, '2010-05-15', NULL, true),
(2, 3, '2005-08-20', NULL, true),
(3, 4, '2018-03-10', '2023-12-31', false),
(4, 5, '2015-01-20', '2020-12-31', true),
(5, 6, '2012-06-25', NULL, false);

-- Datos de prueba grupo base de datos 
-- El fin
