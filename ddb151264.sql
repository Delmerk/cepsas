-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: proxysql-01.dd.scip.local
-- Tiempo de generación: 01-02-2021 a las 11:51:41
-- Versión del servidor: 10.5.8-MariaDB-1:10.5.8+maria~buster
-- Versión de PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ddb151264`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(300) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'General', 1, NULL, '2020-05-29 06:09:22'),
(2, 'Prevención Salud', 1, NULL, '2020-05-29 10:44:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(450) COLLATE utf8_spanish2_ci NOT NULL,
  `categoria` int(11) NOT NULL,
  `tutor` int(11) NOT NULL,
  `duracion` int(11) NOT NULL,
  `tipo_duracion` varchar(300) COLLATE utf8_spanish2_ci NOT NULL,
  `img` varchar(450) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `valor` double DEFAULT 0,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `tipo` int(11) NOT NULL,
  `validez` int(11) NOT NULL,
  `tipo_validez` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `nombre`, `categoria`, `tutor`, `duracion`, `tipo_duracion`, `img`, `valor`, `estado`, `descripcion`, `tipo`, `validez`, `tipo_validez`, `created_at`, `updated_at`) VALUES
(3, 'DIPLOMADO EN SEGURIDAD Y SALUD EN EL TRABAJO', 1, 7, 120, '1', '1592096199.jpeg', 0, 1, 'El Diplomado en Seguridad y Salud en el Trabajo, es un programa diseñado por SURCOLOMBIANA DE ESTUDIOS SAS en base a los fundamentos básicos de la educación continua, y que tiene como objetivo fundamental suministrar información amplia y detallada para capacitar a los interesados, brindando orientación relacionada con los principios fundamentales de la Seguridad y Salud en el Trabajo Integral dentro del contexto laboral, a fin de preparar al personal del área para el normal desarrollo de sus respectivas funciones propias de la planificación, implementación y control de los programas y políticas operacionales conforme a las normativas técnicas establecidas y en base a las disposiciones legales y reglamentos exigidos por los organismos competentes.', 2, 60, 3, '2020-06-14 00:56:39', '2020-06-13 22:56:39'),
(4, 'DIPLOMADO EN GESTIÓN AMBIENTAL', 1, 7, 120, '1', '1592097764.jpeg', 400000, 1, 'El Diplomado en Gestión Ambiental, es un programa diseñado por SURCOLOMBIANA DE ESTUDIOS SAS en base a los fundamentos básicos de la educación continua, y que tiene como objetivo fundamental brindar al sector productivo industrial la posibilidad de incorporar personal con altas calidades laborales y profesionales que contribuyan al desarrollo económico, social y tecnológico de su entorno y del país, mediante la implementación y mejoramiento de las tecnologías limpias y conforme a la normatividad ambiental vigente y en base a las disposiciones legales y reglamentos exigidos por los organismos competentes.', 2, 60, 3, '2020-06-14 01:22:44', '2020-06-13 23:22:44'),
(5, 'GESTIÓN DEL TALENTO HUMANO', 1, 7, 120, '1', 'Diplomado Gestión del Talento Humano.jpg', 400000, 1, 'En mercados de alta y creciente rivalidad en la que se encuentran todos los negocios, la Gestión por competencias ha pasado a convertirse en un eje central para el desarrollo competitivo de las organizaciones a nivel mundial. Ya no se compite solamente por desarrollos tecnológicos, la base se amplía con la gestión humana, SURCOLOMBIANA DE ESTUDIOS SAS responde a esta creciente necesidad de las organizaciones y los profesionales con el Diplomado en Gestión del Talento Humano.\n\nLas competencias son todas aquellas capacidades humanas necesarias para lograr un desempeño de excelencia y resultados de alta calidad. Las ventajas competitivas de las organizaciones de éxito están sustentadas en la diferenciación y la innovación de sus servicios, cualidades que dependen cada vez más de las competencias de los colaboradores y de su compromiso con el propósito clave de la organización.\n\nDe otra parte, no solamente es necesario contar con un equipo humano competente dentro de las organizaciones sino saber administrar este recurso. Es por eso importante que temas como la contratación, el cumplimiento de todos los requisitos legales y reglamentarios, el manejo del ambiente laboral y todo lo relacionado con la compensación de los trabajadores se maneje de manera adecuada para garantizar un desempeño de alto nivel en cada uno de los trabajadores', 2, 36, 3, '2020-06-13 21:02:17', '2020-06-13 19:02:17'),
(6, 'DIPLOMADO EN ATENCIÓN AL CLIENTE', 1, 7, 120, '1', 'Diplomado Atención al Cliente.jpg', 400000, 1, 'El servicio al cliente, para las empresas, es una responsabilidad social y un factor estratégico diferenciador, que requiere indudablemente de un liderazgo sobresaliente, que aglutine, convoque y oriente a todas las personas de la organización hacia el cliente, hacia el servicio, trabajando con los mejores empleados.\n\nLa razón fundamental de las organizaciones es el cliente; el foco debe estar en satisfacer sus necesidades, solucionar efectivamente sus problemas y atender sus requerimientos y sugerencias. El cliente es la guía que orienta a las empresas y les permite la sostenibilidad, y la permanencia en el mercado.\n\nLo anterior debe articularse con la situación actual del mercado. Las empresas no se imponen ni dominan a sus clientes, ya que estos no se dejan explotar.  Estamos en la era del cliente, en la era del servicio, en un mercado de oferta, con una excesiva competencia que se multiplica diariamente y que proviene de todos los confines del mundo. El cliente decide e impone las condiciones y las empresas logran ser importantes, si los clientes las perciben y aceptan como la mejor oferta.\n\nEl servicio al cliente hace diferencia en este mercado tan competido. Por esto es necesario tener líderes preparados y actualizados para que, con responsabilidad social y moral, puedan liderar la empresa y llevarla hacia esa realidad, la del servicio, la de ser útiles y efectivos.\n\nPor las características propias del servicio y las necesidades individuales y específicas de los clientes, se requiere de otros conceptos fundamentales, técnicas, estrategias y habilidades especiales, para mercadear y comercializar con éxito los servicios. Se debe tener la capacidad de posicionar una propuesta de valor y tener la experticia para dicho intercambio, con un concepto y modelo de negocio estratégico, aplicado adecuadamente en la interacción personal del servicio con los clientes.', 2, 60, 3, '2020-06-13 21:06:11', '2020-06-13 19:06:11'),
(8, 'MANEJO DEFENSIVO', 1, 7, 8, '1', '1. Manejo Defensivo.jpg', 0, 1, 'En muchas organizaciones se utilizan vehículos, y es de vital importancia que se usen adecuadamente, para lograr un desplazamiento seguro y correcto, es clave que el conductor conozca el vehículo a utilizar, posea experiencia en el uso del mismo y tenga las habilidades necesarias para manejarlo.\n\nEn este curso se estudiará el factor humano, representado como persona como peatón, pasajero o conductor; el factor ambiental, entendiendo por esto ruta, calle, etc, y el factor vehículo; con el propósito de dar a conocer a los participantes los diferentes conceptos esenciales para la prevención de accidentes. \n\nDentro del enfoque preventivo se realiza una revisión de las principales sugerencias de tránsito que deben ser tenidas en cuenta. Identificaremos las medidas de mantenimiento necesarias para el normal funcionamiento del vehículo, y abordaremos diferentes aspectos de conducción defensiva importantes a la hora de conducir en condiciones normales o adversas.\n\nSEGURIDAD VIAL: El objetivo de este curso es lograr el reconocimiento y la apropiación de conceptos básicos, la normatividad y las recomendaciones para el peatón, el conductor de moto, bicicleta y de automóvil; así todos aportamos al esfuerzo de disminuir las lesiones y las muertes causadas por accidentes de tránsito.', 1, 12, 3, '2020-06-12 21:35:20', '2020-06-12 19:35:20'),
(10, 'MECÁNICA BÁSICA', 1, 7, 8, '1', '3. Mecánica Básica.jpg', 0, 1, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Mecánica Básica. ¿No tienes ni idea sobre mecánica automovilística? Hoy en SURCOESTUDIOS queremos proporcionarte información básica que te podrá servir para entender mejor tu vehículo.\nMuchas veces, cuando tenemos cualquier problema con nuestro carro lo llevamos lo más pronto posible al mecánico para que nos diga que es lo que pasa, pero a veces el problema es mucho más simple de lo que parece, por lo que con este curso básico de mecánica, podrás solucionar ciertos problemas sin tener que llevarlo a un taller.', 1, 12, 3, '2020-06-12 21:37:39', '2020-06-12 19:37:39'),
(11, 'MANEJO DE EXTINTORES Y CONTRAINCENDIOS', 1, 7, 8, '1', '4. Manejo de Extintores y Contraincendios.jpg', 0, 1, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de manejo de extintores y contraincendios. Al término del curso los participantes están en condiciones de:\nIdentificar riesgos de incendios y aplicar medidas para su prevención, identificar y aplicar los medios de control de incendios, aplicar la normativa vigente e identificar y utilizar extintores contra incendios.', 1, 12, 3, '2020-06-10 21:41:24', '2020-06-10 19:41:24'),
(14, 'ALISTAMIENTO VEHICULAR', 1, 7, 8, '1', '7. Alistamiento Vehicular.jpg', 0, 1, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de alistamiento vehicular, este se realizará de manera virtual buscando guiar al usuario, sobre el alistamiento de vehículos automotores. Usted como conductor debe siempre asegurarse de todo. La seguridad empieza desde el mismo estado del vehículo. Además usted es el responsable de las personas que lleva a bordo y es su deber garantizarles un vehículo en perfectas condiciones. \nRecuerde: Ellos confían ciegamente en usted.', 1, 12, 3, '2020-06-10 21:05:00', '2020-06-10 19:05:00'),
(15, 'CONTROL DE EMERGENCIAS EN DERRAME DE HIDROCARBUROS', 1, 7, 8, '1', '8. Control de Derrames.jpg', 0, 1, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Control de emergencia en derrame de hidrocarburos.  El curso permitirá a los participantes tener una visión amplia y global de las últimas tendencias en materia de remediación de suelos impactados por hidrocarburo, aprenderá a seleccionar la forma adecuada para los diferentes eventos que puedan presentarse en la industria petrolera y relacionará esto con los estándares de calidad ambiental o normativa internacionales. El participante distinguirá las ventajas y desventajas de cada una de las tecnologías, los criterios de un análisis de riesgo, por lo que ayudará a su empresa en la solución de problemas ambientales relacionados con derrames de hidrocarburos y conocerá de los principales costos asociados, lo cual representará ahorros y prestigio a la industria en la cual labora.', 1, 12, 3, '2020-06-10 21:23:54', '2020-06-10 19:23:54'),
(16, 'ATENCIÓN AL CLIENTE', 1, 7, 8, '1', '9. Atención al Cliente.jpg', 0, 1, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Atención al cliente, este se realizará de manera virtual buscando entregar al usuario una herramienta efectiva que le permita socializar de mejor manera con sus clientes y obteniendo mejores resultados económicos en su negocio.', 1, 12, 3, '2020-06-10 21:06:13', '2020-06-10 19:06:13'),
(17, 'COOPERATIVISMO', 1, 7, 20, '1', '10. Cooperativismo.jpg', 0, 1, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Cooperativismo. Brindar las herramientas conceptuales, metodológicas y normativas que permitan el acceso equitativo a las oportunidades y beneficios del modelo solidario por parte de las personas, grupos o comunidades interesadas en crear y fortalecer organizaciones solidarias.', 1, 12, 3, '2020-06-10 21:29:45', '2020-06-10 19:29:45'),
(18, 'ESPACIOS CONFINADOS', 1, 7, 8, '1', '11. Espacios Confinados.jpg', 0, 1, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Espacios Confinados. \nUno de los trabajos más peligrosos en la industria es el trabajo en espacios confinados. Es por eso que debemos proteger a nuestros empleados. \nEste curso está diseñado para proteger a los trabajadores que deben de entrar a espacios confinados.\nAlgunos de los peligros que podemos encontrar son atmósferas tóxicas, explosivas, o asfixiantes, también encontramos peligros de envolvimiento, atrapamiento, y muchos otros peligros. Durante el curso aprenderán a identificar los espacios confinados que requieren permiso, el prevenir la entrada a personal no autorizado, y a proteger a los trabajadores mediante un programa de permisos de entrada a espacios confinados.', 1, 12, 3, '2020-06-12 21:40:17', '2020-06-12 19:40:17'),
(19, 'BRIGADISTA (CONTRAINCENDIOS)', 1, 7, 8, '1', '14. Brigada Contraincendios.jpg', 0, 1, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Brigadistas (Contra Incendios); este se realizará de manera virtual buscando enseñar a los participantes, el uso adecuado de extintores portátiles que existen y su utilización mediante la práctica, y las diversas conductas adecuadas para enfrentar una situación de conato de incendio.', 1, 12, 3, '2020-06-12 21:36:23', '2020-06-12 19:36:23'),
(20, 'BRIGADISTA (EVACUACIÓN Y RESCATE)', 1, 7, 8, '1', '15. Brigadas de Evacuación.jpg', 0, 1, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Brigadista (Evacuación y rescate), curso para formar brigadistas integrales quienes responderán de acuerdo al incidente. Al finalizar el curso estarán en capacidad de responder frente a los escenarios de evacuación y rescate.', 1, 12, 3, '2020-06-12 21:36:00', '2020-06-12 19:36:00'),
(21, 'BRIGADISTA (PRIMEROS AUXILIOS)', 1, 7, 8, '1', '16. Brigada Primeros Auxilios.jpg', 0, 1, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Brigadistas (Primeros Auxilios); este se realizará de manera virtual buscando que os participantes estén en la capacidad de prestar los primeros auxilios a los lesionados por una emergencia, solicitar ayuda a los servicios médicos y seguir las instrucciones del coordinador(a) de la brigada.', 1, 12, 3, '2020-06-14 01:29:14', '2020-06-13 23:29:14'),
(24, 'ACTUALIZACIÓN DE NORMAS DE TRÁNSITO', 1, 7, 8, '1', '1592096061.jpeg', 0, 1, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Actualización de normas de tránsito; este se realizará de manera virtual buscando fomentar entre los participantes, un cambio positivo en su comportamiento vial y desarrollando hábitos seguros, en el momento de encontrarse tras el volante de su vehículo.', 1, 12, 3, '2020-06-14 00:54:21', '2020-06-13 22:54:21'),
(28, 'ENTRENAMIENTO EN SISTEMAS DE COMANDOS E INCIDENTES', 1, 7, 8, '1', '25. Sistema comando de incidentes.jpg', 0, 1, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Entrenamiento en sistemas de comando e incidentes. El Curso SCI capacita en el uso de una herramienta útil para lograr eficiencia en el comando, el control\ny la coordinación de las operaciones de respuesta a un incidente, como así también en la preparación\nante escenarios de riesgo. Esta herramienta es el Sistema de Comando de Incidentes. El Sistema de Comando de Incidentes (SCI) es la combinación de instalaciones, equipamiento,\npersonal, protocolos, procedimientos y comunicaciones, operando en una estructura\norganizacional común, con la responsabilidad de administrar los recursos asignados para lograr\nefectivamente los objetivos pertinentes a un evento, incidente u operativo.', 1, 12, 3, '2020-06-10 21:31:21', '2020-06-10 19:31:21'),
(29, 'PRIMERA RESPUESTA DE INCIDENTES CON MATERIALES PELIGROSOS', 1, 7, 8, '1', '26. Incidentes con Materiales Peligrosos.jpg', 0, 1, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Primera Respuesta a Incidentes con Materiales Peligrosos. Esta capacitación le muestra al participante los conocimientos y habilidades para reconocer la presencia de materiales peligrosos en un incidente, identificarlos y ejecutar acciones iniciales para garantizar la seguridad personal, de terceros, de bienes y del ambiente.', 1, 12, 3, '2020-06-10 22:09:58', '2020-06-10 20:09:58'),
(30, 'RESPUESTA Y ATENCIÓN DE EMERGENCIAS CON MATERIALES PELIGROSOS', 1, 7, 8, '1', '27. Respuesta y Atención de Emergencias con Materiales Peligrosos.jpg', 0, 1, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Respuesta y Atención De Emergencias Con Materiales Peligrosos. Durante cualquier etapa del ciclo de vida de las sustancias químicas peligrosas existe la posibilidadde enfrentarse asituaciones de emergencias,tales como incendios,explosiones,fugaso derrames. Estas emergencias se pueden prevenir aplicando normas legales y técnicas relacionadas conelmanejoadecuadode combustibles, equipos eléctricos,fuentes de calor y sustancias peligrosas, propias de la actividad económica de una organización Para dar pronta respuesta a una emergencia, la organización debe tener diseñado y planeado un Plan de Emergencia. Este es aquel en el cual se definen las políticas, la organización y los métodos, que indican la manera de enfrentar una situación de emergencia o desastre tanto en lo general como en lo particular. Su objetivo es proporcionar un conjunto de directrices e información destinadas a la adopción de procedimientos técnicos y administrativos estructurados para facilitar respuestas rápidas y eficientes en situaciones de emergencia. En términos generales, un plan debe tener las siguientes características.', 1, 12, 3, '2020-06-12 21:46:59', '2020-06-12 19:46:59'),
(31, 'ACONDICIONAMIENTO DE ANDAMIOS PARA TRABAJO EN ALTURAS', 1, 7, 8, '1', '28. Acondicionamiento de Andamios Certificados.jpg', 0, 1, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Acondicionamiento de andamios para trabajo en alturas. \n\nOtorgar al personal los conocimientos básicos en el montaje y desmontaje de Andamio Multidireccional Certificado y trabajo seguro en alturas, utilizando las destrezas necesarias para su correcto uso.\nIncluyendo normatividad nacional e internacional; componentes del andamio multidireccional, principios de un andamio seguro, diferentes tipos y usos del andamio.', 1, 12, 3, '2020-06-12 21:47:56', '2020-06-12 19:47:56'),
(32, 'ERGONOMÍA', 1, 7, 8, '1', '29. Ergonomía.jpg', 0, 1, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Ergonomía. La rápida difusión de las nuevas tecnologías ha introducido progresivamente en el mundo de las oficinas los ordenadores personales y, en general, toda una serie de equipos que configuran la llamada ofimática que, además de originar una verdadera revolución en el mundo de las oficinas, arrastra como secuela toda una serie de trastornos sobre la salud de los trabajadores derivados de su uso. Trastornos que se agudizan cuando el operario pasa gran parte de su jornada laboral delante de una pantalla de visualización de datos y maneja los distintos periféricos que conforman el área de actividad tipo.', 1, 12, 3, '2020-06-10 21:36:07', '2020-06-10 19:36:07'),
(33, 'OFFICE - WORD', 1, 7, 20, '1', '30. Microsoft Word.jpg', 0, 1, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida al curso Office Word.  El curso de Word tiene el propósito de que el estudiante descubra todas las funcionalidades que trae el software, aprendiendo a realizar trabajos profesionales facilitando su navegación, comprendiendo cómo optimizar el tiempo de su creación con herramientas para automatizar procesos, cómo corregir el documento, y compartir el trabajo finalizado, con el objetivo de que mejore en el manejo de la aplicación y de esta forma lograr mejorar sus oportunidades laborales.', 1, 12, 3, '2020-06-10 21:59:48', '2020-06-10 19:59:48'),
(34, 'OFFICE - EXCEL', 1, 7, 20, '1', '31. Microsoft Excel.jpg', 0, 1, 'Excel se ha convertido en una herramienta indispensable casi para cualquier sector profesional, con diferentes usos y numerosas opciones. Aprender o mejorar en el manejo las hojas de cálculo puede ser la clave que nos permita mejorar en nuestro trabajo.\n\nEl Excel es un programa ofimático, es decir, para uso en entornos de oficina, que conforman el paquete de Microsoft Office. Es básico en infinidad de oficinas, independientemente cual sea su campo de acción. Se considera requisito indispensable para optar a numerosas vacantes de trabajo y el nivel necesario dependerá de las labores a desempeñar.\n\nEsta permite calcular, escribir, almacenar, organizar,… información tanto numérica como de texto. Una gran ventaja de su uso es la posibilidad de interconectar celdas en base a funciones o fórmulas, lo que agiliza enormemente el trabajo.', 1, 12, 3, '2020-06-10 22:02:18', '2020-06-10 20:02:18'),
(35, 'OFFICE - POWER POINT', 1, 7, 20, '1', '32. Microsoft Power Point.jpg', 0, 1, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienbenida a su curso de Office Power Point. El curso de PowerPoint, le permitirá desarrollar presentaciones para la enunciación de ideas, conceptos o proyectos, mediante la utilización de diapositivas con imágenes, textos, videos, animaciones, entre otros.\n\nEste pograma del paquete office, es gran importancia en el mundo académico, comercial, social, entre otros ámbitos, gracias a que es posible exponer cualquier tipo de información de manera fácil y dinámica, lo cual hace parte de las competencias integrales de todo profesional.', 1, 12, 3, '2020-06-10 22:05:47', '2020-06-10 20:05:47'),
(38, 'SEGURIDAD VIAL Y NORMAS DE TRÁNSITO', 1, 7, 8, '1', '1592096018.jpeg', 0, 1, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Seguridad vial y\nNormas de Transito. El propósito de este curso es desarrollar y promover procesos formativos guiados al mejoramiento de comportamientos, actitudes y hábitos idóneos para moverse por las calles con seguridad. Dirigidas a toda persona que quiera participar desarrollando actividades relacionadas con la Seguridad Vial y la capacitación en normas de tránsito, participación en la vía, la sensibilización de conductores y demás actividades guiadas al fortalecimiento de conductas seguras en la vía.', 1, 12, 3, '2020-06-14 01:31:24', '2020-06-13 23:31:24'),
(39, 'PRIMEROS AUXILIOS - NIVEL AVANZADO', 1, 7, 60, '1', '1592088276.jpeg', 0, 1, 'SURCOLOMBIANA DE ESTUDIOS SAS la da la bienvenida a su curso de Primeros Auxilios. Nivel Avanzado.\n\nAfianzar los conocimientos previos de Primeros Auxilios Básico y los protocolos de atención de emergencias para la atención de pacientes con posibles traumas. Afianzamiento práctico de los conocimientos adquiridos en el curso básico, sistemas de emergencias médicas en situaciones de emergencia (cadena de socorro y custodia). Traumas en cabeza, cuello, tórax, abdomen y pelvis, como atender un parto de emergencia. Primeros Auxilios psicológicos. Técnicas de supervivencia.', 1, 12, 3, '2020-06-13 22:44:36', '2020-06-13 20:44:36'),
(40, 'RESCATE VERTICAL EN ALTURAS', 1, 7, 8, '1', '1592095895.jpeg', 0, 1, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Rescate Vertical En Alturas. Establecer las actividades para dar respuesta a una emergencia en alturas, de manera tal que se asegure el rescate en forma organizada y segura de un funcionario, contratista o subcontratistas que quede suspendido o atrapado, a una altura de 1.5 m (hacia abajo o hacia arriba), garantizado el acceso, estabilización, descenso y traslado al centro de atención.', 1, 12, 3, '2020-06-14 00:51:35', '2020-06-13 22:51:35'),
(41, 'PRIMEROS AUXILIOS Y ERGONOMÍA EN EL TRANSPORTE', 1, 7, 8, '1', '1592095806.jpeg', 0, 1, 'SURCOLOMBIANA DE ESTUDIOS SAS la da la bienvenida a su curso de Primeros Auxilios y ergonomía en el transporte.. \n\nLa conducción de vehículos para transporte público de pasajeros registra situaciones desfavorables para la salud de los trabajadores. Colesterol, presión arterial, trastornos renales, hemorroides, sobrepeso, patologías en columna, representan efectos negativos para el personal. Los sistemas de rotación de turnos alteran el reloj biológico del trabajador, no respetan los ritmos naturales del organismo. Exposiciones a vibraciones mecánicas considerables pueden favorecer micro-politrumatismos repetitivos. Dificultades por el tránsito, trabajo en turnos rotativos, elevados niveles de exigencia, llevan a mantener un estado de alerta crónica. Es lo que se conoce como “estrés psicofísico”. Si no se interrumpe a tiempo, dicho estado puede constituir una puerta de entrada a enfermedades cardiovasculares, digestivas e inmunológicas. Una conducción saludable responde a causas sistémicas, no a factores aislados. Las soluciones de diseño ergonómico propuestas en este trabajo resultan de un análisis que contempla la multiplicidad de factores que intervienen y el examen de sus interrelaciones. En la actualidad la concepción de productos, entre ellos los vehículos, se plantea desde un “enfoque antropotécnico”. Ello implica considerar las capacidades, limitaciones y necesidades humanas y los recursos tecnológicos disponibles en cada circunstancia. Por lo tanto, un diseño ergonómico ha de poder brindar un nivel de satisfacción adecuado frente a diferentes variables. Algunas de ellas son: bienestar, economía, tecnología aplicada, calidad estética, duración, sencillez operativa, fácil mantenimiento y reparaciones. Por lo expuesto, la Ergonomía es una herramienta eficaz para coadyuvar al mejoramiento de la relación entre las personas, los equipos que éstas operan y el ambiente en que desarrollan sus actividades.', 1, 12, 3, '2020-06-14 22:08:13', '2020-06-14 20:08:13'),
(42, 'PRIMEROS AUXILIOS', 1, 7, 8, '1', '5. Primeros Auxilios.jpg', 0, 1, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Primeros Auxilios, en este curso básico vamos a desarrollar las diferentes situaciones de los primeros auxilios; resaltaremos los principales tratamientos básicos de primeros auxilios y cómo manejar cada situación en caso de desastres', 1, 12, 3, '2020-06-14 16:30:32', '2020-06-14 14:30:32'),
(44, 'TRANSPORTE DE SUSTANCIAS PELIGROSAS Y MERCANCÍAS PELIGROSAS, PLAN DE CONTINGENCIA ANTE DERRAME, CLASIFICACIÓN, ETIQUETADO Y ROTULADO DE NACIONES UNIDAS', 1, 7, 8, '1', '1592096108.jpeg', 0, 1, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida al curso de Transporte de sustancias y mercancías peligrosas. Los conductores para el transporte de carga deben cumplir con un perfil en conducción que se caracteriza por tener una estructura que le permite prestar en el mercado nacional e internacional un servicio óptimo, de tal manera que esta formación se realiza para dar cumplimiento a lo dispuesto en la resolución 1223 del 12 de mayo de 2014, donde se establecen los elementos básicos para la ejecución de los procedimientos, la identificación de peligros, impactos, valoración y determinación de control de riesgos en la seguridad y salud del trabajo, lo que permitirá que el conductor y el equipo logístico que ha realizado toda la planificación de la operación, cuenten con objetivos, estrategias, metas y sistemas de evaluación y responsabilidades.\nA través de la formación, se busca que el participante mediante la práctica realice la validación de los conocimientos trasmitidos en cuanto a los requisitos técnicos y de seguridad que el conductor debe adquirir como habilidad en el manejo y transporte de mercancías peligrosas en vehículos automotores por las carreteras por del territorio nacional, lo que previene riesgos, garantiza la seguridad y protege la vida y el medio ambiente de acuerdo con lo establecido en el decreto 1609 de julio de 2002 y la Norma Técnica Colombiana 1692.', 1, 12, 3, '2020-06-14 00:55:08', '2020-06-13 22:55:08'),
(45, 'SEGURIDAD VIAL', 1, 7, 8, '1', '2. Seguridad Vial.jpg', NULL, 1, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Seguridad Vial; este se realizara de manera virtual buscando fomentar entre los participantes, un cambio positivo en su comportamiento vial y desarrollando hábitos seguros, en el momento de encontrarse tras el volante de su vehículo.', 1, 12, 3, '2020-06-12 22:28:11', '2020-06-12 18:05:12'),
(46, 'RESPUESTA Y ATENCIÓN DE EMERGENCIAS', 1, 7, 8, '1', '1592095934.jpeg', 0, 1, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvendida al curso de respuesta y atención de Emergencias. Adquirir conocimientos generales sobre prevención, buscando su aplicación en la vida diaria. Sensibilización y Prevención: reconocimiento, clasificación y legislación de los desastres durante, el antes y el después. Organización y Planeación: inventarios, sistema de alerta temprana, análisis retrospectivo para identificar las amenazas y determinar el riesgo. Estrategias para la respuesta: cadenas de socorro, cadenas de intervención, comando de incidentes, simulación de un desastre, teniendo en cuenta los procesos de rehabilitación y recuperación.', 1, 12, 3, '2020-06-14 18:03:39', '2020-06-14 16:03:39'),
(47, 'BIOSEGURIDAD Y SUS PROTOCOLOS', 1, 7, 8, '1', '1592095584.jpeg', 0, 1, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida al curso de Bioseguridad. \n\nEl objetivo de este curso es definir lineamientos relacionados con el protocolo de bioseguridad para adoptar medidas necesarias frente al impacto del COVID-19, orientadas a disminuir el riesgo de transmisión del virus, garantizar la continuidad de las actividades y a la protección integral de las personas.', 1, 12, 3, '2020-06-14 01:27:30', '2020-06-13 23:27:30'),
(48, 'RESCATE EN ESPACIOS CONFINADOS', 1, 7, 8, '1', '1592095848.jpeg', 0, 1, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida al curso de Rescate en Espacios Confinados. \n\nEl curso pretende desde un punto de vista eminentemente práctico, desarrollar los principales riesgos y procedimientos de trabajo en recintos/espacios confinados. Del mismo modo, se analizarán los protocolos de evacuación y emergencias dentro de los citados recintos.\nCurso teórico con el objetivo de dotar a alumno no sólo de los conocimientos necesarios en cuanto a normas generales y específicas de seguridad y prevención en trabajos realizados en espacios confinados sino también de una herramienta eficaz para la prevención de riesgos laborales.', 1, 12, 3, '2020-06-14 01:30:15', '2020-06-13 23:30:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos`
--

CREATE TABLE `documentos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(450) COLLATE utf8_spanish2_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish2_ci DEFAULT NULL,
  `id_modulo` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `documentos`
--

INSERT INTO `documentos` (`id`, `nombre`, `ruta`, `id_modulo`, `created_at`, `updated_at`) VALUES
(1, 'Primer documento', '1.1.1.pdf', 1, '2020-05-30 14:08:35', '2020-05-30 14:08:35'),
(3, 'Seguridad Vial', '02 Seguridad Vial.pdf', 20, '2020-06-08 06:54:08', '2020-06-02 03:48:56'),
(63, 'ANDAMIOS', '5ee68237ced14.pdf', 41, '2020-06-14 18:01:59', '2020-06-14 18:01:59'),
(65, 'DESCARGAR CONTENIDO PDF', '5ee684bd2ccb1.pdf', 34, '2020-06-14 18:12:45', '2020-06-14 18:12:45'),
(68, 'DESCARGAR CONTENIDO PDF', '5ee68610cf061.pdf', 25, '2020-06-14 18:18:24', '2020-06-14 18:18:24'),
(69, 'DESCARGAR CONTENIDO PDF', '5ee686a40921a.pdf', 27, '2020-06-14 18:20:52', '2020-06-14 18:20:52'),
(71, 'DESCARGAR CONTENIDO PDF', '5ee6873a12609.pdf', 52, '2020-06-14 18:23:22', '2020-06-14 18:23:22'),
(72, 'DESCARGAR CONTENIDO PDF', '5ee688119da9e.pdf', 30, '2020-06-14 18:26:57', '2020-06-14 18:26:57'),
(73, 'DESCARGAR CONTENIDO PDF', '5ee688c61fa58.pdf', 31, '2020-06-14 18:29:58', '2020-06-14 18:29:58'),
(77, 'DESCARGAR CONTENIDO  PDF', '5ee68eb42bbf3.pdf', 32, '2020-06-14 18:55:16', '2020-06-14 18:55:16'),
(78, 'DESCARGAR CONTENIDO PDF', '5ee68ee034166.pdf', 57, '2020-06-14 18:56:00', '2020-06-14 18:56:00'),
(79, 'DESCARGAR CONTENIDO PDF', '5ee68f48aa8a3.pdf', 26, '2020-06-14 18:57:44', '2020-06-14 18:57:44'),
(80, 'DESCARGAR CONTENIDO PDF', '5ee68fd50cec5.pdf', 28, '2020-06-14 19:00:05', '2020-06-14 19:00:05'),
(81, 'DESCARGAR CONTENIDO PDF', '5ee69032e0cc2.pdf', 38, '2020-06-14 19:01:38', '2020-06-14 19:01:38'),
(82, 'DESCARGAR CONTENIDO PDF', '5ee690c39fbc6.pdf', 42, '2020-06-14 19:04:03', '2020-06-14 19:04:03'),
(83, 'DESCARGAR CONTENIDO PDF', '5ee6913fd18ea.pdf', 29, '2020-06-14 19:06:07', '2020-06-14 19:06:07'),
(84, 'DESCARGAR CONTENIDO PDF', '5ee6924b6d725.pdf', 22, '2020-06-14 19:10:35', '2020-06-14 19:10:35'),
(85, 'DESCARGAR CONTENIDO PDF', '5ee692fb67a5b.pdf', 19, '2020-06-14 19:13:31', '2020-06-14 19:13:31'),
(86, 'DESCARGAR CONTENIDO PDF', '5ee6938d9bd41.pdf', 21, '2020-06-14 19:15:57', '2020-06-14 19:15:57'),
(87, 'DESCARGAR CONTENIDO PDF', '5ee694aa890f0.pdf', 44, '2020-06-14 19:20:42', '2020-06-14 19:20:42'),
(88, 'DESCARGAR CONTENIDO PDF', '5ee6961edcdf4.pdf', 45, '2020-06-14 19:26:54', '2020-06-14 19:26:54'),
(89, 'DESCARGAR CONTENIDO PDF', '5ee69724ee8c5.pdf', 43, '2020-06-14 19:31:16', '2020-06-14 19:31:16'),
(91, 'DESCARGAR CONTENIDO PDF', '5ee69ca8eef67.pdf', 39, '2020-06-14 19:54:48', '2020-06-14 19:54:48'),
(93, 'DESCARGAR CONTENIDO PDF', '5ee69e575550d.pdf', 54, '2020-06-14 20:01:59', '2020-06-14 20:01:59'),
(94, 'DESCARGAR CONTENIDO PDF', '5ee69ebcdd083.pdf', 47, '2020-06-14 20:03:40', '2020-06-14 20:03:40'),
(96, 'DESCARGAR CONTENIDO PDF', '5ee6a48458342.pdf', 53, '2020-06-14 20:28:20', '2020-06-14 20:28:20'),
(97, 'DESCARGAR CONTENIDO PDF', '5ee6a539f1adc.pdf', 49, '2020-06-14 20:31:21', '2020-06-14 20:31:21'),
(98, 'DESCARGAR CONTENIDO PDF', '5ee6a8213d61a.pdf', 40, '2020-06-14 20:43:45', '2020-06-14 20:43:45'),
(99, 'DESCARGAR CONTENIDO PDF', '5ee6aac40d9a2.pdf', 51, '2020-06-14 20:55:00', '2020-06-14 20:55:00'),
(100, 'DESCARGAR CONTENIDO PDF', '5ee6ab5b0e428.pdf', 46, '2020-06-14 20:57:31', '2020-06-14 20:57:31'),
(103, '0.1 GUÍA DE APRENDIZAJE', '5ee7a018998e6.pdf', 7, '2020-06-15 14:21:44', '2020-06-15 14:21:44'),
(104, '0.11 VIDEOS MÓDULO 1', '5ee7a0432d943.pdf', 7, '2020-06-15 14:22:27', '2020-06-15 14:22:27'),
(105, '1. INTRODUCCIÓN', '5ee7a07d0972d.pdf', 7, '2020-06-15 14:23:25', '2020-06-15 14:23:25'),
(106, '2. NORMATIVIDAD EN COLOMBIA', '5ee7a09c31963.pdf', 7, '2020-06-15 14:23:56', '2020-06-15 14:23:56'),
(107, '3. SISTEMA E.M.A.S.', '5ee7a0b403852.pdf', 7, '2020-06-15 14:24:20', '2020-06-15 14:24:20'),
(108, '4. EVALUACIONES DE IMPACTO AMBIENTAL', '5ee7a0cded6f9.pdf', 7, '2020-06-15 14:24:45', '2020-06-15 14:24:45'),
(109, '5. REVISIÓN AMBIENTAL', '5ee7a101c452d.pdf', 7, '2020-06-15 14:25:37', '2020-06-15 14:25:37'),
(110, '0.1 GUÍA DE APRENDIZAJE', '5ee7a190d8fac.pdf', 3, '2020-06-15 14:28:00', '2020-06-15 14:28:00'),
(111, '0.11 VIDEOS MÓDULO 1', '5ee7a2f88a863.pdf', 3, '2020-06-15 14:34:00', '2020-06-15 14:34:00'),
(112, '1. M1SST INTRODUCCIÓN', '5ee7a327d3326.pdf', 3, '2020-06-15 14:34:47', '2020-06-15 14:34:47'),
(113, '2. NORMATIVIDAD', '5ee7a359129a9.pdf', 3, '2020-06-15 14:35:37', '2020-06-15 14:35:37'),
(114, '3. SEGURIDAD SOCIAL EN COLOMBIA', '5ee7a38362974.pdf', 3, '2020-06-15 14:36:19', '2020-06-15 14:36:19'),
(115, '4. COPASST.', '5ee7a3a9ac810.pdf', 3, '2020-06-15 14:36:57', '2020-06-15 14:36:57'),
(116, '5. SG-SST.', '5ee7a3d5e0a67.pdf', 3, '2020-06-15 14:37:41', '2020-06-15 14:37:41'),
(117, 'DECRETO 1072 DE 2015', '5ee7a506d4c56.pdf', 3, '2020-06-15 14:42:46', '2020-06-15 14:42:46'),
(118, 'DECRETO 1607 DE 2002', '5ee7a5209f8d1.pdf', 3, '2020-06-15 14:43:12', '2020-06-15 14:43:12'),
(119, 'Decreto-1295-de-1994.', '5ee7a54468c11.pdf', 3, '2020-06-15 14:43:48', '2020-06-15 14:43:48'),
(120, '1. M2 INTRODUCCIÓN, ALCANCE, OBJETIVOS Y RESPONSABLES.', '5ee7a59513604.pdf', 4, '2020-06-15 14:45:09', '2020-06-15 14:45:09'),
(121, '0.1 VIDEOS MÓDULO 2', '5ee7a5a49fb5c.pdf', 8, '2020-06-15 14:45:24', '2020-06-15 14:45:24'),
(122, '0.1 VIDEOS MÓDULO 2.', '5ee7a5ae8d993.pdf', 4, '2020-06-15 14:45:34', '2020-06-15 14:45:34'),
(123, '1. PASOS PARA ELABORAR UN P.M.A.', '5ee7a5c18ae2f.pdf', 8, '2020-06-15 14:45:53', '2020-06-15 14:45:53'),
(124, '2. DEFINICIONES Y MARCO LEGAL.', '5ee7a5cadc765.pdf', 4, '2020-06-15 14:46:02', '2020-06-15 14:46:02'),
(125, '2. INFORME TÉCNICO', '5ee7a5e180484.pdf', 8, '2020-06-15 14:46:25', '2020-06-15 14:46:25'),
(126, '3. OPERACIÓN DEL PROGRAMA DE MEDICINA PREVENTIVA.', '5ee7a5ecd2623.pdf', 4, '2020-06-15 14:46:36', '2020-06-15 14:46:36'),
(127, '3. GUÍAS AMBIENTALES', '5ee7a5fddbf66.pdf', 8, '2020-06-15 14:46:53', '2020-06-15 14:46:53'),
(128, '4. MEDICINA PREVENTIVA.', '5ee7a61098925.pdf', 4, '2020-06-15 14:47:12', '2020-06-15 14:47:12'),
(129, '4. FORMATOS AMBIENTALES', '5ee7a621ad3cc.pdf', 8, '2020-06-15 14:47:29', '2020-06-15 14:47:29'),
(130, '5. PLAN DE MONITOREO', '5ee7a63c5e3de.pdf', 8, '2020-06-15 14:47:56', '2020-06-15 14:47:56'),
(131, '5. MEDICINA DEL TRABAJO.', '5ee7a6604fc9d.pdf', 4, '2020-06-15 14:48:32', '2020-06-15 14:48:32'),
(132, '0.1 VIDEOS MÓDULO 3', '5ee7a688ed008.pdf', 9, '2020-06-15 14:49:12', '2020-06-15 14:49:12'),
(133, '1. Estructurar un S.G.A.', '5ee7a6ac049da.pdf', 9, '2020-06-15 14:49:48', '2020-06-15 14:49:48'),
(134, '2. Factores para la implementación del S.G.A.', '5ee7a6c49fd33.pdf', 9, '2020-06-15 14:50:12', '2020-06-15 14:50:12'),
(135, '1. INTRODUCCIÓN', '5ee7a6d104cbd.pdf', 5, '2020-06-15 14:50:25', '2020-06-15 14:50:25'),
(136, '3. Normatividad del S.G.A.', '5ee7a6dc166b6.pdf', 9, '2020-06-15 14:50:36', '2020-06-15 14:50:36'),
(137, '0.1 VIDEOS MÓDULO', '5ee7a6f039438.pdf', 5, '2020-06-15 14:50:56', '2020-06-15 14:50:56'),
(138, '4. Implementación y Operación del SGA Final', '5ee7a6f5e0d1c.pdf', 9, '2020-06-15 14:51:01', '2020-06-15 14:51:01'),
(139, '2. HIGIENE INDUSTRIAL.', '5ee7a70316e2c.pdf', 5, '2020-06-15 14:51:15', '2020-06-15 14:51:15'),
(140, '5. Diagnóstico Ambiental de Alternativas Final', '5ee7a70a25ef4.pdf', 9, '2020-06-15 14:51:22', '2020-06-15 14:51:22'),
(141, '3. GTC_45_2012 MATRIZ PELIGROS.pdf', '5ee7a7223542d.pdf', 5, '2020-06-15 14:51:46', '2020-06-15 14:51:46'),
(142, '4. Resolución 1111 de 2017.', '5ee7a73c43361.pdf', 5, '2020-06-15 14:52:12', '2020-06-15 14:52:12'),
(143, '0.1 VIDEOS MÓDULO 4', '5ee7a75bbc35f.pdf', 10, '2020-06-15 14:52:43', '2020-06-15 14:52:43'),
(144, 'brigadas-emergencia ARL-Positiva.pdf', '5ee7a7784495f.pdf', 5, '2020-06-15 14:53:12', '2020-06-15 14:53:12'),
(145, '1. DEFINICIÓN Y PROCEDIMIENTOS DE UNA AUDITORÍA', '5ee7a784c7d0d.pdf', 10, '2020-06-15 14:53:24', '2020-06-15 14:53:24'),
(146, '2. RESULTADOS ESPERADOS EN UNA AUDITORÍA', '5ee7a7a375bbd.pdf', 10, '2020-06-15 14:53:55', '2020-06-15 14:53:55'),
(147, '3. CLASES DE AUDITORÍAS Y PERSONAL REQUERIDO', '5ee7a7ba7aca3.pdf', 10, '2020-06-15 14:54:18', '2020-06-15 14:54:18'),
(148, '4. TIPOS DE AUDITORÍAS', '5ee7a7d147df4.pdf', 10, '2020-06-15 14:54:41', '2020-06-15 14:54:41'),
(149, '5. FUNCIONES, RESPONSABILIDADES Y HABILIDADES DE UN AUDITOR', '5ee7a7f989af2.pdf', 10, '2020-06-15 14:55:21', '2020-06-15 14:55:21'),
(150, '0.1 GUÍA DE APRENDIZAJE', '5ee7a8547cf7a.pdf', 11, '2020-06-15 14:56:52', '2020-06-15 14:56:52'),
(151, '0.11 VIDEOS MÓDULO 1', '5ee7a86cea7c8.pdf', 11, '2020-06-15 14:57:16', '2020-06-15 14:57:16'),
(152, '1. INTRODUCCIÓN', '5ee7a88e19bf3.pdf', 11, '2020-06-15 14:57:50', '2020-06-15 14:57:50'),
(153, '2. LA ORGANIZACIÓN', '5ee7a8a574267.pdf', 11, '2020-06-15 14:58:13', '2020-06-15 14:58:13'),
(154, '3. LA GESTIÓN HUMANA EN LAS ORGANIZACIONES', '5ee7a8be7ad8a.pdf', 11, '2020-06-15 14:58:38', '2020-06-15 14:58:38'),
(155, '4. EL TALENTO HUMANO', '5ee7a8d47de79.pdf', 11, '2020-06-15 14:59:00', '2020-06-15 14:59:00'),
(156, '1. CONCEPTOS BÁSICOS', '5ee7a8ec489af.pdf', 6, '2020-06-15 14:59:24', '2020-06-15 14:59:24'),
(157, '0.1 VIDEOS MÓDULO 4.pdf', '5ee7a8fdb24fb.pdf', 6, '2020-06-15 14:59:41', '2020-06-15 14:59:41'),
(158, '0.1 VIDEOS MÓDULO 2', '5ee7a9006f79d.pdf', 12, '2020-06-15 14:59:44', '2020-06-15 14:59:44'),
(159, '1. CONCEPTOS', '5ee7a915113e2.pdf', 12, '2020-06-15 15:00:05', '2020-06-15 15:00:05'),
(160, '2. 8 REGLAS DE ORO DE LA SEGURIDAD INDUSTRIAL.', '5ee7a91fd0982.pdf', 6, '2020-06-15 15:00:15', '2020-06-15 15:00:15'),
(162, '3. CADENA DEL ACCIDENTE.', '5ee7a93367444.pdf', 6, '2020-06-15 15:00:35', '2020-06-15 15:00:35'),
(164, '4. ELEMENTOS DE PROTECCIÓN PERSONAL.', '5ee7a94f628e8.pdf', 6, '2020-06-15 15:01:03', '2020-06-15 15:01:03'),
(165, '5. PRIMEROS AUXILIOS.', '5ee7a96b36114.pdf', 6, '2020-06-15 15:01:31', '2020-06-15 15:01:31'),
(166, '2. CARACTERISTICAS DE LAS COMPETENCIAS', '5ee7a96c57dfc.pdf', 12, '2020-06-15 15:01:32', '2020-06-15 15:01:32'),
(167, '6. SEGURIDAD EN LAS OFICINAS - SINIESTROS.', '5ee7a982ec605.pdf', 6, '2020-06-15 15:01:54', '2020-06-15 15:01:54'),
(168, '7. PREVENCIÓN DE INCENDIOS - SEGURIDAD EN LA ELECTRICIDAD.', '5ee7a99f022fd.pdf', 6, '2020-06-15 15:02:23', '2020-06-15 15:02:23'),
(169, '8. SUSTANCIAS PELIGROSAS - ESPACIOS CONFINADOS.', '5ee7a9b86ca2d.pdf', 6, '2020-06-15 15:02:48', '2020-06-15 15:02:48'),
(170, '3. TIPOS DE COMPETENCIAS Y SU DESARROLLO', '5ee7a9bd7fbc6.pdf', 12, '2020-06-15 15:02:53', '2020-06-15 15:02:53'),
(171, '9. USO DE ESCALERAS - BARRERAS DE PROTECCIÓN.', '5ee7a9e6c979e.pdf', 6, '2020-06-15 15:03:34', '2020-06-15 15:03:34'),
(172, '4. EVALUACIÓN DE LAS COMPETENCIAS', '5ee7a9f55a394.pdf', 12, '2020-06-15 15:03:49', '2020-06-15 15:03:49'),
(173, '10  PROTECCIÓN DE LA ESPALDA Y PROTECCIÓN CONTRA CAIDAS.', '5ee7aa1b1e26f.pdf', 6, '2020-06-15 15:04:27', '2020-06-15 15:04:27'),
(174, '0.1 VIDEOS MÓDULO 3', '5ee7aa202d10e.pdf', 13, '2020-06-15 15:04:32', '2020-06-15 15:04:32'),
(176, '1. SELECCIÓN DE PERSONAL  POR COMPETENCIAS', '5ee7aa6dca328.pdf', 13, '2020-06-15 15:05:49', '2020-06-15 15:05:49'),
(178, '2. CONTRATACIÓN E INDUCCIÓN', '5ee7aa905f100.pdf', 13, '2020-06-15 15:06:24', '2020-06-15 15:06:24'),
(180, '3. GESTIÓN DEL DESEMPEÑO POR COMPETENCIAS', '5ee7aab202e8f.pdf', 13, '2020-06-15 15:06:58', '2020-06-15 15:06:58'),
(181, '4. FORMACIÓN Y DESARROLLO POR COMPETENCIAS', '5ee7aacd857ab.pdf', 13, '2020-06-15 15:07:25', '2020-06-15 15:07:25'),
(182, '0.1 GUÍA DE APRENDIZAJE.', '5ee7ab0a88261.pdf', 15, '2020-06-15 15:08:26', '2020-06-15 15:08:26'),
(183, '0.11 VIDEOS MÓDULO 1.', '5ee7ab1f9565b.pdf', 15, '2020-06-15 15:08:47', '2020-06-15 15:08:47'),
(184, '0.1 VIDEOS MÓDULO 4', '5ee7ab28b4932.pdf', 14, '2020-06-15 15:08:56', '2020-06-15 15:08:56'),
(185, '1. INTRODUCCION.', '5ee7ab3f5f0d9.pdf', 15, '2020-06-15 15:09:19', '2020-06-15 15:09:19'),
(186, '1. DELEGACIÓN DE FUNCIONES', '5ee7ab4175825.pdf', 14, '2020-06-15 15:09:21', '2020-06-15 15:09:21'),
(187, '2. MOTIVACIÓN CONCEPTO Y PRINCIPIOS', '5ee7ab58e91ef.pdf', 14, '2020-06-15 15:09:44', '2020-06-15 15:09:44'),
(188, '2. CULTURA DE L SEVICIO DE ATENCION AL CLIENTE.', '5ee7ab5d96d8d.pdf', 15, '2020-06-15 15:09:49', '2020-06-15 15:09:49'),
(189, '4. ESTUDIOS Y TÉCNICAS DE MOTIVACIÓN', '5ee7ab73c111f.pdf', 14, '2020-06-15 15:10:11', '2020-06-15 15:10:11'),
(190, '3. EL CLIENTE).', '5ee7ab7977ee3.pdf', 15, '2020-06-15 15:10:17', '2020-06-15 15:10:17'),
(191, '4. SERVICIO DE ATENCION AL CLIENTE.', '5ee7ab96a7cf2.pdf', 15, '2020-06-15 15:10:46', '2020-06-15 15:10:46'),
(192, '0.1 VIDEOS MÓDULO 2', '5ee7abf0c84ea.pdf', 16, '2020-06-15 15:12:16', '2020-06-15 15:12:16'),
(193, '1. TIPOS DE CLIENTES.', '5ee7ac0c797fb.pdf', 16, '2020-06-15 15:12:44', '2020-06-15 15:12:44'),
(194, '2. ELEMENTOS DEL SERVICIO DE ATENCION AL CLIENTE.', '5ee7ac3234903.pdf', 16, '2020-06-15 15:13:22', '2020-06-15 15:13:22'),
(195, '3. IMPORTANCIA DEL CLIENTE PARA LAS EMPRESAS.', '5ee7ac5694f9d.pdf', 16, '2020-06-15 15:13:58', '2020-06-15 15:13:58'),
(196, '0.1 VIDEOS MÓDULO 3', '5ee7ad2b8b898.pdf', 17, '2020-06-15 15:17:31', '2020-06-15 15:17:31'),
(197, '1. CARACTERISTICAS DE LA COMUNICACION.', '5ee7ad4d70b3c.pdf', 17, '2020-06-15 15:18:05', '2020-06-15 15:18:05'),
(198, '2. CANALES DE ATENCION AL CLIENTE.', '5ee7ad6e1fb4d.pdf', 17, '2020-06-15 15:18:38', '2020-06-15 15:18:38'),
(199, '3. DEPARTAMENTO DE ATENCIÓN AL CLIENTE.', '5ee7ad91bfca4.pdf', 17, '2020-06-15 15:19:13', '2020-06-15 15:19:13'),
(200, '4. CRM Y PQRS', '5ee7adb3192a5.pdf', 17, '2020-06-15 15:19:47', '2020-06-15 15:19:47'),
(208, '0.1 VIDEOS MÓDULO 4', '5ee7c59054f0a.pdf', 18, '2020-06-15 17:01:36', '2020-06-15 17:01:36'),
(209, '1. DELEGACIÓN DE FUNCIONES', '5ee7c5ae9eba5.pdf', 18, '2020-06-15 17:02:06', '2020-06-15 17:02:06'),
(210, '2. MOTIVACIÓN CONCEPTO Y PRINCIPIOS', '5ee7c5f2a22c8.pdf', 18, '2020-06-15 17:03:14', '2020-06-15 17:03:14'),
(211, '3. TEORÍAS DE MOTIVACIÓN', '5ee7c62403c58.pdf', 18, '2020-06-15 17:04:04', '2020-06-15 17:04:04'),
(212, '4. ESTUDIOS Y TÉCNICAS DE MOTIVACIÓN', '5ee7c64057b47.pdf', 18, '2020-06-15 17:04:32', '2020-06-15 17:04:32'),
(213, 'DESCARGAR CONTENIDO PDF', '5ef79f5cdf402.pdf', 58, '2020-06-27 17:34:52', '2020-06-27 17:34:52'),
(214, 'PRIMEROS AUXILIOS Y ERGONOMÍA EN EL TRANSPORTE', '5f11d42ea997b.pdf', 55, '2020-07-17 14:39:10', '2020-07-17 14:39:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` int(11) NOT NULL,
  `empresa` varchar(450) COLLATE utf8_spanish2_ci NOT NULL,
  `nit` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluaciones`
--

CREATE TABLE `evaluaciones` (
  `id` int(11) NOT NULL,
  `evaluacion` varchar(450) COLLATE utf8_spanish2_ci NOT NULL,
  `id_modulo` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `estado` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripciones`
--

CREATE TABLE `inscripciones` (
  `id` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `fec_activa` date DEFAULT NULL,
  `fec_termina` date DEFAULT NULL,
  `fec_cancela` date DEFAULT NULL,
  `fec_vence` date DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `resultado` double DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `inscripciones`
--

INSERT INTO `inscripciones` (`id`, `id_alumno`, `id_curso`, `fecha`, `fec_activa`, `fec_termina`, `fec_cancela`, `fec_vence`, `estado`, `resultado`, `created_at`, `updated_at`) VALUES
(1, 8, 31, '2020-06-01', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 11:11:52', '2020-06-14 09:11:52'),
(2, 9, 24, '2020-06-01', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 11:11:41', '2020-06-14 09:11:41'),
(3, 10, 31, '2020-06-02', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 11:11:30', '2020-06-14 09:11:30'),
(4, 1, 24, '2020-06-08', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 11:11:19', '2020-06-14 09:11:19'),
(5, 1, 24, '2020-06-08', '2020-06-08', '2020-06-14', NULL, NULL, 3, 80, '2020-06-14 19:15:09', '2020-06-14 17:15:09'),
(6, 10, 16, '2020-06-08', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 11:11:04', '2020-06-14 09:11:04'),
(7, 10, 24, '2020-06-08', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 11:10:46', '2020-06-14 09:10:46'),
(8, 11, 24, '2020-06-10', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 11:07:29', '2020-06-14 09:07:29'),
(9, 11, 4, '2020-06-10', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 11:07:19', '2020-06-14 09:07:19'),
(10, 12, 31, '2020-06-10', '2020-06-10', '2020-06-10', NULL, NULL, 3, 70, '2020-06-10 19:27:55', '2020-06-10 17:27:55'),
(11, 13, 31, '2020-06-10', '2020-06-10', '2020-06-14', NULL, NULL, 3, 100, '2020-06-14 20:02:29', '2020-06-14 18:02:29'),
(12, 13, 31, '2020-06-10', '2020-06-10', NULL, NULL, NULL, 2, NULL, '2020-06-10 21:51:06', '2020-06-10 19:51:06'),
(13, 13, 24, '2020-06-10', '2020-06-10', '2020-06-14', NULL, NULL, 3, 100, '2020-06-14 20:13:08', '2020-06-14 18:13:08'),
(14, 13, 16, '2020-06-10', '2020-06-10', '2020-06-14', NULL, NULL, 3, 100, '2020-06-14 20:22:12', '2020-06-14 18:22:12'),
(15, 10, 31, '2020-06-10', '2020-06-10', NULL, NULL, NULL, 2, NULL, '2020-06-10 23:25:36', '2020-06-10 21:25:36'),
(16, 13, 13, '2020-06-10', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 11:07:09', '2020-06-14 09:07:09'),
(17, 13, 22, '2020-06-10', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 11:06:57', '2020-06-14 09:06:57'),
(18, 13, 9, '2020-06-10', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 11:06:47', '2020-06-14 09:06:47'),
(19, 13, 30, '2020-06-10', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 11:06:36', '2020-06-14 09:06:36'),
(20, 13, 23, '2020-06-10', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 11:06:24', '2020-06-14 09:06:24'),
(21, 10, 6, '2020-06-10', '2020-06-10', NULL, NULL, NULL, 2, NULL, '2020-06-10 23:46:06', '2020-06-10 21:46:06'),
(22, 13, 23, '2020-06-10', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 11:06:05', '2020-06-14 09:06:05'),
(23, 10, 31, '2020-06-11', '2020-06-11', NULL, NULL, NULL, 2, NULL, '2020-06-11 03:02:23', '2020-06-11 01:02:23'),
(24, 10, 31, '2020-06-11', '2020-06-14', '2020-06-14', NULL, NULL, 2, NULL, '2020-06-15 05:41:14', '2020-06-14 09:05:52'),
(25, 1, 31, '2020-06-11', '2020-06-11', NULL, NULL, NULL, 2, NULL, '2020-06-11 04:13:12', '2020-06-11 02:13:12'),
(26, 1, 31, '2020-06-11', '2020-06-11', NULL, NULL, NULL, 2, NULL, '2020-06-11 04:13:09', '2020-06-11 02:13:09'),
(27, 1, 31, '2020-06-11', '2020-06-11', NULL, NULL, NULL, 2, NULL, '2020-06-11 04:12:51', '2020-06-11 02:12:51'),
(28, 10, 31, '2020-06-11', '2020-06-11', NULL, NULL, NULL, 2, NULL, '2020-06-11 04:13:05', '2020-06-11 02:13:05'),
(29, 10, 31, '2020-06-11', '2020-06-11', NULL, NULL, NULL, 2, NULL, '2020-06-11 04:13:01', '2020-06-11 02:13:01'),
(30, 10, 31, '2020-06-11', '2020-06-11', NULL, NULL, NULL, 2, NULL, '2020-06-11 04:12:58', '2020-06-11 02:12:58'),
(31, 10, 31, '2020-06-11', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 11:05:41', '2020-06-14 09:05:41'),
(32, 10, 31, '2020-06-11', '2020-06-11', NULL, NULL, NULL, 2, NULL, '2020-06-11 04:12:01', '2020-06-11 02:12:01'),
(33, 1, 31, '2020-06-11', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 11:05:29', '2020-06-14 09:05:29'),
(34, 10, 31, '2020-06-11', '2020-06-11', NULL, NULL, NULL, 2, NULL, '2020-06-11 04:11:55', '2020-06-11 02:11:55'),
(35, 13, 31, '2020-06-11', '2020-06-11', NULL, NULL, NULL, 2, NULL, '2020-06-11 03:50:36', '2020-06-11 01:50:36'),
(36, 1, 15, '2020-06-11', '2020-06-11', NULL, NULL, NULL, 2, NULL, '2020-06-11 03:54:23', '2020-06-11 01:54:23'),
(37, 13, 6, '2020-06-11', '2020-06-11', NULL, NULL, NULL, 2, NULL, '2020-06-11 03:55:19', '2020-06-11 01:55:19'),
(38, 1, 15, '2020-06-11', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 11:05:18', '2020-06-14 09:05:18'),
(39, 10, 31, '2020-06-11', '2020-06-11', NULL, NULL, NULL, 2, NULL, '2020-06-11 04:03:37', '2020-06-11 02:03:37'),
(40, 13, 31, '2020-06-11', '2020-06-11', NULL, NULL, NULL, 2, NULL, '2020-06-11 04:11:41', '2020-06-11 02:11:41'),
(41, 1, 15, '2020-06-11', '2020-06-11', NULL, NULL, NULL, 2, NULL, '2020-06-11 04:11:48', '2020-06-11 02:11:48'),
(42, 10, 31, '2020-06-11', NULL, '2020-06-11', NULL, NULL, 3, 70, '2020-06-11 04:06:56', '2020-06-11 02:06:56'),
(43, 13, 3, '2020-06-11', '2020-06-11', NULL, NULL, NULL, 2, NULL, '2020-06-11 04:23:45', '2020-06-11 02:23:45'),
(44, 10, 34, '2020-06-11', '2020-06-11', '2020-06-11', NULL, NULL, 3, 100, '2020-06-11 11:29:16', '2020-06-11 09:29:16'),
(45, 13, 38, '2020-06-11', '2020-06-11', NULL, NULL, NULL, 2, NULL, '2020-06-11 16:09:25', '2020-06-11 14:09:25'),
(46, 13, 38, '2020-06-11', '2020-06-11', NULL, NULL, NULL, 2, NULL, '2020-06-11 16:32:38', '2020-06-11 14:32:38'),
(47, 11, 39, '2020-06-11', '2020-06-11', NULL, NULL, NULL, 2, NULL, '2020-06-11 19:15:16', '2020-06-11 17:15:16'),
(48, 13, 39, '2020-06-11', '2020-06-11', NULL, NULL, NULL, 2, NULL, '2020-06-11 19:27:38', '2020-06-11 17:27:38'),
(49, 13, 38, '2020-06-11', '2020-06-11', NULL, NULL, NULL, 2, NULL, '2020-06-11 19:50:08', '2020-06-11 17:50:08'),
(50, 13, 40, '2020-06-11', '2020-06-11', '2020-06-14', NULL, NULL, 3, 100, '2020-06-14 22:33:23', '2020-06-14 20:33:23'),
(51, 13, 41, '2020-06-11', '2020-06-12', NULL, NULL, NULL, 2, NULL, '2020-06-12 19:29:51', '2020-06-12 17:29:51'),
(52, 10, 43, '2020-06-12', '2020-06-12', NULL, NULL, NULL, 2, NULL, '2020-06-12 19:30:04', '2020-06-12 17:30:04'),
(53, 10, 31, '2020-06-12', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 11:04:59', '2020-06-14 09:04:59'),
(54, 11, 31, '2020-06-12', '2020-06-12', NULL, NULL, NULL, 2, NULL, '2020-06-12 19:42:14', '2020-06-12 17:42:14'),
(55, 11, 14, '2020-06-12', '2020-06-12', NULL, NULL, NULL, 2, NULL, '2020-06-12 19:42:24', '2020-06-12 17:42:24'),
(56, 11, 16, '2020-06-12', '2020-06-12', NULL, NULL, NULL, 2, NULL, '2020-06-12 19:42:30', '2020-06-12 17:42:30'),
(57, 11, 19, '2020-06-12', '2020-06-12', NULL, NULL, NULL, 2, NULL, '2020-06-12 19:43:16', '2020-06-12 17:43:16'),
(58, 11, 20, '2020-06-12', '2020-06-12', NULL, NULL, NULL, 2, NULL, '2020-06-12 19:43:25', '2020-06-12 17:43:25'),
(59, 11, 21, '2020-06-12', '2020-06-12', NULL, NULL, NULL, 2, NULL, '2020-06-12 19:45:31', '2020-06-12 17:45:31'),
(60, 11, 17, '2020-06-12', '2020-06-12', NULL, NULL, NULL, 2, NULL, '2020-06-12 19:45:38', '2020-06-12 17:45:38'),
(61, 11, 32, '2020-06-12', '2020-06-12', NULL, NULL, NULL, 2, NULL, '2020-06-12 19:45:44', '2020-06-12 17:45:44'),
(62, 11, 18, '2020-06-12', '2020-06-12', NULL, NULL, NULL, 2, NULL, '2020-06-12 19:45:57', '2020-06-12 17:45:57'),
(63, 11, 11, '2020-06-12', '2020-06-12', NULL, NULL, NULL, 2, NULL, '2020-06-12 19:46:11', '2020-06-12 17:46:11'),
(64, 11, 8, '2020-06-12', '2020-06-12', NULL, NULL, NULL, 2, NULL, '2020-06-12 19:46:21', '2020-06-12 17:46:21'),
(65, 11, 10, '2020-06-12', '2020-06-12', NULL, NULL, NULL, 2, NULL, '2020-06-12 19:46:33', '2020-06-12 17:46:33'),
(66, 11, 34, '2020-06-12', '2020-06-12', NULL, NULL, NULL, 2, NULL, '2020-06-12 19:46:49', '2020-06-12 17:46:49'),
(67, 11, 35, '2020-06-12', '2020-06-12', NULL, NULL, NULL, 2, NULL, '2020-06-12 19:47:07', '2020-06-12 17:47:07'),
(68, 11, 33, '2020-06-12', '2020-06-12', NULL, NULL, NULL, 2, NULL, '2020-06-12 19:47:17', '2020-06-12 17:47:17'),
(69, 11, 29, '2020-06-12', '2020-06-12', NULL, NULL, NULL, 2, NULL, '2020-06-12 19:47:34', '2020-06-12 17:47:34'),
(70, 11, 42, '2020-06-12', '2020-06-12', NULL, NULL, NULL, 2, NULL, '2020-06-12 19:47:53', '2020-06-12 17:47:53'),
(71, 11, 39, '2020-06-12', '2020-06-12', NULL, NULL, NULL, 2, NULL, '2020-06-12 19:48:02', '2020-06-12 17:48:02'),
(72, 11, 41, '2020-06-12', '2020-06-12', NULL, NULL, NULL, 2, NULL, '2020-06-12 19:48:16', '2020-06-12 17:48:16'),
(73, 11, 40, '2020-06-12', '2020-06-12', NULL, NULL, NULL, 2, NULL, '2020-06-12 19:48:25', '2020-06-12 17:48:25'),
(74, 11, 30, '2020-06-12', '2020-06-12', NULL, NULL, NULL, 2, NULL, '2020-06-12 19:48:42', '2020-06-12 17:48:42'),
(75, 11, 38, '2020-06-12', '2020-06-12', NULL, NULL, NULL, 2, NULL, '2020-06-12 19:53:26', '2020-06-12 17:53:26'),
(76, 11, 43, '2020-06-12', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 11:04:49', '2020-06-14 09:04:49'),
(77, 11, 15, '2020-06-12', '2020-06-12', NULL, NULL, NULL, 2, NULL, '2020-06-12 19:56:36', '2020-06-12 17:56:36'),
(78, 11, 24, '2020-06-12', '2020-06-12', NULL, NULL, NULL, 2, NULL, '2020-06-12 19:56:43', '2020-06-12 17:56:43'),
(79, 11, 28, '2020-06-12', '2020-06-12', NULL, NULL, NULL, 2, NULL, '2020-06-12 19:57:31', '2020-06-12 17:57:31'),
(80, 11, 45, '2020-06-12', '2020-06-12', NULL, NULL, NULL, 2, NULL, '2020-06-12 20:25:39', '2020-06-12 18:25:39'),
(81, 11, 47, '2020-06-13', '2020-06-13', NULL, NULL, NULL, 2, NULL, '2020-06-13 14:21:21', '2020-06-13 12:21:21'),
(82, 11, 48, '2020-06-13', '2020-06-13', NULL, NULL, NULL, 2, NULL, '2020-06-13 14:25:09', '2020-06-13 12:25:09'),
(83, 11, 44, '2020-06-13', '2020-06-13', NULL, NULL, NULL, 2, NULL, '2020-06-13 14:25:12', '2020-06-13 12:25:12'),
(84, 11, 31, '2020-06-13', '2020-06-13', NULL, NULL, NULL, 2, NULL, '2020-06-13 21:19:58', '2020-06-13 19:19:58'),
(85, 11, 14, '2020-06-13', '2020-06-13', NULL, NULL, NULL, 2, NULL, '2020-06-13 21:23:30', '2020-06-13 19:23:30'),
(86, 11, 16, '2020-06-13', '2020-06-13', NULL, NULL, NULL, 2, NULL, '2020-06-13 21:34:00', '2020-06-13 19:34:00'),
(87, 11, 19, '2020-06-13', '2020-06-13', NULL, NULL, NULL, 2, NULL, '2020-06-13 21:37:49', '2020-06-13 19:37:49'),
(88, 11, 20, '2020-06-13', '2020-06-13', NULL, NULL, NULL, 2, NULL, '2020-06-13 21:39:03', '2020-06-13 19:39:03'),
(89, 11, 21, '2020-06-13', '2020-06-13', NULL, NULL, NULL, 2, NULL, '2020-06-13 21:45:10', '2020-06-13 19:45:10'),
(90, 11, 17, '2020-06-13', '2020-06-13', NULL, NULL, NULL, 2, NULL, '2020-06-13 21:51:39', '2020-06-13 19:51:39'),
(91, 11, 32, '2020-06-13', '2020-06-13', NULL, NULL, NULL, 2, NULL, '2020-06-13 22:00:59', '2020-06-13 20:00:59'),
(92, 11, 18, '2020-06-13', '2020-06-13', NULL, NULL, NULL, 2, NULL, '2020-06-13 22:02:28', '2020-06-13 20:02:28'),
(93, 11, 11, '2020-06-13', '2020-06-13', NULL, NULL, NULL, 2, NULL, '2020-06-13 22:03:43', '2020-06-13 20:03:43'),
(94, 11, 8, '2020-06-13', '2020-06-13', NULL, NULL, NULL, 2, NULL, '2020-06-13 22:08:12', '2020-06-13 20:08:12'),
(95, 11, 10, '2020-06-13', '2020-06-13', NULL, NULL, NULL, 2, NULL, '2020-06-13 22:09:37', '2020-06-13 20:09:37'),
(96, 11, 34, '2020-06-13', '2020-06-13', NULL, NULL, NULL, 2, NULL, '2020-06-13 22:10:35', '2020-06-13 20:10:35'),
(97, 11, 35, '2020-06-13', '2020-06-13', NULL, NULL, NULL, 2, NULL, '2020-06-13 22:12:44', '2020-06-13 20:12:44'),
(98, 11, 33, '2020-06-13', '2020-06-13', NULL, NULL, NULL, 2, NULL, '2020-06-13 22:14:10', '2020-06-13 20:14:10'),
(99, 11, 29, '2020-06-13', '2020-06-13', NULL, NULL, NULL, 2, NULL, '2020-06-13 22:15:40', '2020-06-13 20:15:40'),
(100, 11, 42, '2020-06-13', '2020-06-13', '2020-06-15', NULL, NULL, 3, 100, '2020-06-15 16:14:47', '2020-06-15 14:14:47'),
(101, 11, 41, '2020-06-13', '2020-06-13', NULL, NULL, NULL, 2, NULL, '2020-06-13 22:20:28', '2020-06-13 20:20:28'),
(102, 11, 48, '2020-06-13', '2020-06-13', NULL, NULL, NULL, 2, NULL, '2020-06-13 22:21:23', '2020-06-13 20:21:23'),
(103, 1, 19, '2020-06-13', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 11:04:33', '2020-06-14 09:04:33'),
(104, 1, 19, '2020-06-13', '2020-06-14', NULL, NULL, NULL, 0, NULL, '2020-06-18 04:44:02', '2020-06-18 02:44:01'),
(105, 1, 19, '2020-06-13', '2020-06-14', NULL, NULL, NULL, 0, NULL, '2020-06-18 04:43:19', '2020-06-18 02:43:18'),
(106, 1, 3, '2020-06-13', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-15 01:05:42', '2020-06-14 09:01:14'),
(107, 13, 14, '2020-06-14', '2020-06-14', '2020-06-14', NULL, NULL, 3, 100, '2020-06-14 20:19:45', '2020-06-14 18:19:45'),
(108, 13, 47, '2020-06-14', '2020-06-14', '2020-06-14', NULL, NULL, 3, 100, '2020-06-14 20:25:08', '2020-06-14 18:25:08'),
(109, 13, 19, '2020-06-14', '2020-06-14', '2020-06-14', NULL, NULL, 3, 90, '2020-06-14 20:28:37', '2020-06-14 18:28:37'),
(110, 13, 20, '2020-06-14', '2020-06-14', '2020-06-14', NULL, NULL, 3, 80, '2020-06-14 20:37:45', '2020-06-14 18:37:45'),
(111, 13, 21, '2020-06-14', '2020-06-14', '2020-06-14', NULL, NULL, 3, 90, '2020-06-14 20:56:42', '2020-06-14 18:56:42'),
(112, 13, 15, '2020-06-14', '2020-06-14', '2020-06-14', NULL, NULL, 3, 100, '2020-06-14 20:58:49', '2020-06-14 18:58:49'),
(113, 13, 17, '2020-06-14', '2020-06-14', '2020-06-14', NULL, NULL, 3, 100, '2020-06-14 21:01:08', '2020-06-14 19:01:08'),
(114, 13, 28, '2020-06-14', '2020-06-14', '2020-06-14', NULL, NULL, 3, 100, '2020-06-14 21:03:09', '2020-06-14 19:03:09'),
(115, 13, 32, '2020-06-14', '2020-06-14', '2020-06-15', NULL, NULL, 3, 100, '2020-06-15 21:03:48', '2020-06-15 19:03:48'),
(116, 13, 18, '2020-06-14', '2020-06-14', '2020-06-14', NULL, NULL, 3, 100, '2020-06-14 21:09:06', '2020-06-14 19:09:06'),
(117, 13, 11, '2020-06-14', '2020-06-14', '2020-06-14', NULL, NULL, 3, 100, '2020-06-14 21:12:17', '2020-06-14 19:12:17'),
(118, 13, 8, '2020-06-14', '2020-06-14', '2020-06-14', NULL, NULL, 3, 100, '2020-06-14 21:14:42', '2020-06-14 19:14:42'),
(119, 13, 10, '2020-06-14', '2020-06-14', '2020-06-14', NULL, NULL, 3, 100, '2020-06-14 21:16:42', '2020-06-14 19:16:42'),
(120, 13, 34, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 03:32:34', '2020-06-14 01:32:34'),
(121, 13, 35, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 03:32:38', '2020-06-14 01:32:38'),
(122, 13, 33, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 03:32:45', '2020-06-14 01:32:45'),
(123, 13, 29, '2020-06-14', '2020-06-14', '2020-06-14', NULL, NULL, 3, 100, '2020-06-14 22:00:42', '2020-06-14 20:00:42'),
(124, 13, 42, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 03:54:51', '2020-06-14 01:54:51'),
(125, 13, 39, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 04:04:39', '2020-06-14 02:04:39'),
(126, 13, 41, '2020-06-14', '2020-06-14', '2020-06-14', NULL, NULL, 3, 85, '2020-06-14 22:12:34', '2020-06-14 20:12:34'),
(127, 13, 48, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 11:00:10', '2020-06-14 09:00:10'),
(128, 13, 48, '2020-06-14', '2020-06-14', '2020-06-14', NULL, NULL, 3, 100, '2020-06-14 22:30:37', '2020-06-14 20:30:37'),
(129, 13, 40, '2020-06-14', '2020-06-14', '2020-06-14', NULL, NULL, 3, 100, '2020-06-14 22:35:50', '2020-06-14 20:35:50'),
(130, 13, 46, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 04:55:05', '2020-06-14 02:55:05'),
(131, 13, 30, '2020-06-14', '2020-06-14', '2020-06-14', NULL, NULL, 3, 100, '2020-06-14 22:51:52', '2020-06-14 20:51:52'),
(132, 13, 45, '2020-06-14', '2020-06-14', '2020-06-14', NULL, NULL, 3, 100, '2020-06-14 22:56:53', '2020-06-14 20:56:53'),
(133, 13, 38, '2020-06-14', '2020-06-14', '2020-06-14', NULL, NULL, 3, 100, '2020-06-14 23:15:04', '2020-06-14 21:15:04'),
(134, 13, 44, '2020-06-14', '2020-06-14', '2020-06-14', NULL, NULL, 3, 100, '2020-06-14 23:18:01', '2020-06-14 21:18:01'),
(135, 13, 6, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 05:58:21', '2020-06-14 03:58:21'),
(136, 13, 4, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 05:58:27', '2020-06-14 03:58:27'),
(137, 13, 3, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 05:58:31', '2020-06-14 03:58:31'),
(138, 13, 5, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 05:58:35', '2020-06-14 03:58:35'),
(139, 10, 24, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 10:59:39', '2020-06-14 08:59:39'),
(140, 10, 14, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 10:59:29', '2020-06-14 08:59:29'),
(141, 10, 16, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 10:59:18', '2020-06-14 08:59:18'),
(142, 10, 19, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 10:59:09', '2020-06-14 08:59:09'),
(143, 10, 20, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 10:58:59', '2020-06-14 08:58:59'),
(144, 10, 21, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 10:58:49', '2020-06-14 08:58:49'),
(145, 10, 15, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 10:58:39', '2020-06-14 08:58:39'),
(146, 10, 17, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 10:58:25', '2020-06-14 08:58:25'),
(147, 10, 28, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 10:57:27', '2020-06-14 08:57:27'),
(148, 10, 32, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 10:57:23', '2020-06-14 08:57:23'),
(149, 10, 18, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 10:57:17', '2020-06-14 08:57:17'),
(150, 10, 11, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 10:57:12', '2020-06-14 08:57:12'),
(151, 10, 8, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 10:57:07', '2020-06-14 08:57:07'),
(152, 10, 10, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 10:57:02', '2020-06-14 08:57:02'),
(153, 10, 34, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 10:56:55', '2020-06-14 08:56:55'),
(154, 10, 35, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 10:56:50', '2020-06-14 08:56:50'),
(155, 10, 33, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 10:56:45', '2020-06-14 08:56:45'),
(156, 10, 29, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 10:56:40', '2020-06-14 08:56:40'),
(157, 10, 42, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 10:56:35', '2020-06-14 08:56:35'),
(158, 10, 39, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 10:56:31', '2020-06-14 08:56:31'),
(159, 10, 41, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 10:56:26', '2020-06-14 08:56:26'),
(160, 10, 48, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 10:56:21', '2020-06-14 08:56:21'),
(161, 10, 40, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 10:56:17', '2020-06-14 08:56:17'),
(162, 10, 46, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 10:56:12', '2020-06-14 08:56:12'),
(163, 10, 30, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 10:56:06', '2020-06-14 08:56:06'),
(164, 10, 45, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 10:56:02', '2020-06-14 08:56:02'),
(165, 10, 38, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 10:55:57', '2020-06-14 08:55:57'),
(166, 10, 44, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 10:55:52', '2020-06-14 08:55:52'),
(167, 10, 6, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 19:40:32', '2020-06-14 17:40:32'),
(168, 10, 4, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 23:18:35', '2020-06-14 21:18:35'),
(169, 10, 3, '2020-06-14', '2020-06-14', NULL, NULL, NULL, 2, NULL, '2020-06-14 23:18:42', '2020-06-14 21:18:42'),
(170, 10, 5, '2020-06-14', '2020-06-15', NULL, NULL, NULL, 2, NULL, '2020-06-15 00:19:34', '2020-06-14 22:19:34'),
(171, 13, 21, '2020-06-15', '2020-06-15', NULL, NULL, NULL, 2, NULL, '2020-06-15 13:33:00', '2020-06-15 11:33:00'),
(172, 13, 42, '2020-06-15', '2020-06-15', '2020-06-16', NULL, NULL, 3, 100, '2020-06-16 14:39:51', '2020-06-16 12:39:51'),
(173, 17, 42, '2020-06-15', '2020-06-15', '2020-06-15', NULL, NULL, 3, 90, '2020-06-15 15:46:53', '2020-06-15 13:46:53'),
(174, 17, 6, '2020-06-15', '2020-06-15', NULL, NULL, NULL, 2, NULL, '2020-06-15 17:57:35', '2020-06-15 15:57:35'),
(175, 17, 4, '2020-06-15', '2020-06-15', NULL, NULL, NULL, 2, NULL, '2020-06-15 17:57:32', '2020-06-15 15:57:32'),
(176, 17, 3, '2020-06-15', '2020-06-15', NULL, NULL, NULL, 2, NULL, '2020-06-15 17:57:30', '2020-06-15 15:57:29'),
(177, 17, 5, '2020-06-15', '2020-06-15', NULL, NULL, NULL, 2, NULL, '2020-06-15 17:57:26', '2020-06-15 15:57:26'),
(178, 17, 14, '2020-06-15', '2020-06-15', NULL, NULL, NULL, 2, NULL, '2020-06-15 18:59:18', '2020-06-15 16:59:18'),
(179, 19, 32, '2020-06-15', '2020-06-15', '2020-06-15', NULL, NULL, 3, 100, '2020-06-15 21:08:35', '2020-06-15 19:08:35'),
(180, 18, 47, '2020-06-15', '2020-06-15', NULL, NULL, NULL, 2, NULL, '2020-06-15 21:00:06', '2020-06-15 19:00:06'),
(181, 18, 6, '2020-06-15', '2020-06-15', NULL, NULL, NULL, 2, NULL, '2020-06-15 21:14:36', '2020-06-15 19:14:36'),
(182, 19, 6, '2020-06-15', '2020-06-15', NULL, NULL, NULL, 2, NULL, '2020-06-15 21:14:39', '2020-06-15 19:14:39'),
(183, 10, 21, '2020-06-16', '2020-06-16', NULL, NULL, NULL, 2, NULL, '2020-06-16 14:35:09', '2020-06-16 12:35:09'),
(184, 13, 4, '2020-06-16', '2020-06-16', NULL, NULL, NULL, 2, NULL, '2020-06-16 21:22:16', '2020-06-16 19:22:16'),
(185, 23, 4, '2020-06-16', '2020-06-16', NULL, NULL, NULL, 2, NULL, '2020-06-16 22:14:05', '2020-06-16 20:14:05'),
(186, 13, 42, '2020-06-16', '2020-06-16', '2020-06-16', NULL, NULL, 3, 100, '2020-06-16 23:39:31', '2020-06-16 21:39:31'),
(187, 13, 31, '2020-06-16', '2020-06-16', NULL, NULL, NULL, 2, NULL, '2020-06-16 23:43:44', '2020-06-16 21:43:44'),
(188, 24, 24, '2020-06-17', '2020-06-17', '2020-06-22', NULL, NULL, 3, 90, '2020-06-22 02:28:19', '2020-06-22 00:28:19'),
(189, 24, 14, '2020-06-17', '2020-06-17', '2020-06-22', NULL, NULL, 3, 100, '2020-06-22 02:13:55', '2020-06-22 00:13:55'),
(190, 24, 8, '2020-06-17', '2020-06-17', '2020-07-13', NULL, NULL, 3, 100, '2020-07-13 23:10:15', '2020-07-13 21:10:15'),
(191, 24, 10, '2020-06-17', '2020-06-17', '2020-06-22', NULL, NULL, 3, 90, '2020-06-22 02:04:02', '2020-06-22 00:04:02'),
(192, 24, 45, '2020-06-17', '2020-06-17', '2020-07-10', NULL, NULL, 3, 100, '2020-07-10 18:57:13', '2020-07-10 16:57:13'),
(193, 24, 38, '2020-06-17', '2020-06-17', '2020-07-09', NULL, NULL, 3, 100, '2020-07-09 13:59:42', '2020-07-09 11:59:42'),
(194, 24, 44, '2020-06-17', '2020-06-17', '2020-07-15', NULL, NULL, 3, 90, '2020-07-15 23:37:55', '2020-07-15 21:37:55'),
(195, 24, 24, '2020-06-17', '2020-06-17', NULL, NULL, NULL, 2, NULL, '2020-06-17 20:13:12', '2020-06-17 18:13:12'),
(196, 23, 4, '2020-06-17', '2020-06-17', NULL, NULL, NULL, 2, NULL, '2020-06-17 20:13:17', '2020-06-17 18:13:17'),
(197, 18, 15, '2020-06-18', '2020-06-18', NULL, NULL, NULL, 2, NULL, '2020-06-18 20:21:12', '2020-06-18 18:21:12'),
(198, 18, 34, '2020-06-18', '2020-06-18', NULL, NULL, NULL, 2, NULL, '2020-06-18 20:18:41', '2020-06-18 18:18:41'),
(199, 18, 35, '2020-06-18', '2020-06-18', NULL, NULL, NULL, 2, NULL, '2020-06-18 20:18:45', '2020-06-18 18:18:45'),
(200, 18, 33, '2020-06-18', '2020-06-18', NULL, NULL, NULL, 2, NULL, '2020-06-18 20:18:48', '2020-06-18 18:18:48'),
(201, 19, 16, '2020-06-18', '2020-06-18', NULL, NULL, NULL, 2, NULL, '2020-06-18 20:18:53', '2020-06-18 18:18:53'),
(202, 19, 6, '2020-06-18', '2020-06-18', NULL, NULL, NULL, 2, NULL, '2020-06-18 20:18:57', '2020-06-18 18:18:57'),
(203, 19, 5, '2020-06-18', '2020-06-18', NULL, NULL, NULL, 2, NULL, '2020-06-18 20:19:01', '2020-06-18 18:19:01'),
(204, 25, 21, '2020-06-19', '2020-06-19', NULL, NULL, NULL, 2, NULL, '2020-06-19 14:53:17', '2020-06-19 12:53:17'),
(205, 26, 47, '2020-06-19', '2020-06-19', '2020-06-19', NULL, NULL, 3, 92, '2020-06-19 15:38:18', '2020-06-19 13:38:18'),
(206, 26, 6, '2020-06-19', '2020-06-19', NULL, NULL, NULL, 2, NULL, '2020-06-19 15:41:45', '2020-06-19 13:41:45'),
(207, 27, 4, '2020-06-19', '2020-06-19', NULL, NULL, NULL, 2, NULL, '2020-06-19 20:18:37', '2020-06-19 18:18:37'),
(208, 28, 30, '2020-06-19', '2020-06-20', NULL, NULL, NULL, 2, NULL, '2020-06-20 00:45:47', '2020-06-19 22:45:47'),
(209, 28, 20, '2020-06-19', '2020-06-20', NULL, NULL, NULL, 2, NULL, '2020-06-20 00:45:51', '2020-06-19 22:45:51'),
(210, 28, 19, '2020-06-20', '2020-06-20', NULL, NULL, NULL, 2, NULL, '2020-06-20 01:49:25', '2020-06-19 23:49:25'),
(211, 28, 20, '2020-06-20', '2020-06-20', NULL, NULL, NULL, 2, NULL, '2020-06-20 01:49:20', '2020-06-19 23:49:20'),
(212, 28, 21, '2020-06-20', '2020-06-20', NULL, NULL, NULL, 2, NULL, '2020-06-20 01:49:24', '2020-06-19 23:49:24'),
(213, 28, 15, '2020-06-20', '2020-06-20', NULL, NULL, NULL, 2, NULL, '2020-06-20 01:49:29', '2020-06-19 23:49:29'),
(214, 28, 15, '2020-06-20', '2020-06-20', NULL, NULL, NULL, 2, NULL, '2020-06-20 01:49:36', '2020-06-19 23:49:36'),
(215, 28, 28, '2020-06-20', '2020-06-20', NULL, NULL, NULL, 2, NULL, '2020-06-20 01:49:33', '2020-06-19 23:49:33'),
(216, 28, 18, '2020-06-20', '2020-06-20', NULL, NULL, NULL, 2, NULL, '2020-06-20 01:49:16', '2020-06-19 23:49:16'),
(217, 28, 11, '2020-06-20', '2020-06-20', NULL, NULL, NULL, 2, NULL, '2020-06-20 01:49:12', '2020-06-19 23:49:12'),
(218, 28, 29, '2020-06-20', '2020-06-20', NULL, NULL, NULL, 2, NULL, '2020-06-20 01:49:12', '2020-06-19 23:49:12'),
(219, 28, 42, '2020-06-20', '2020-06-20', NULL, NULL, NULL, 2, NULL, '2020-06-20 01:49:12', '2020-06-19 23:49:12'),
(220, 28, 39, '2020-06-20', '2020-06-20', NULL, NULL, NULL, 2, NULL, '2020-06-20 01:49:12', '2020-06-19 23:49:12'),
(221, 28, 48, '2020-06-20', '2020-06-20', NULL, NULL, NULL, 2, NULL, '2020-06-20 01:49:12', '2020-06-19 23:49:12'),
(222, 28, 40, '2020-06-20', '2020-06-20', NULL, NULL, NULL, 2, NULL, '2020-06-20 01:49:11', '2020-06-19 23:49:11'),
(223, 28, 46, '2020-06-20', '2020-06-20', NULL, NULL, NULL, 2, NULL, '2020-06-20 01:49:12', '2020-06-19 23:49:12'),
(224, 28, 30, '2020-06-20', '2020-06-20', NULL, NULL, NULL, 2, NULL, '2020-06-20 01:49:05', '2020-06-19 23:49:05'),
(225, 28, 44, '2020-06-20', '2020-06-20', NULL, NULL, NULL, 2, NULL, '2020-06-20 01:49:05', '2020-06-19 23:49:05'),
(226, 25, 31, '2020-06-20', NULL, NULL, NULL, NULL, 1, NULL, '2020-06-20 15:22:48', '2020-06-20 15:22:48'),
(227, 25, 14, '2020-06-20', NULL, NULL, NULL, NULL, 1, NULL, '2020-06-20 15:38:38', '2020-06-20 15:38:38'),
(228, 25, 19, '2020-06-20', '2020-06-20', NULL, NULL, NULL, 2, NULL, '2020-06-20 19:13:05', '2020-06-20 17:13:05'),
(229, 25, 28, '2020-06-20', '2020-06-20', NULL, NULL, NULL, 2, NULL, '2020-06-20 19:13:09', '2020-06-20 17:13:09'),
(230, 29, 20, '2020-06-20', '2020-06-21', NULL, NULL, NULL, 2, NULL, '2020-06-21 00:08:31', '2020-06-20 22:08:31'),
(231, 29, 42, '2020-06-20', '2020-06-21', NULL, NULL, NULL, 2, NULL, '2020-06-21 00:09:16', '2020-06-20 22:09:16'),
(232, 29, 28, '2020-06-20', '2020-06-21', NULL, NULL, NULL, 2, NULL, '2020-06-21 00:08:41', '2020-06-20 22:08:41'),
(233, 29, 19, '2020-06-20', '2020-06-21', NULL, NULL, NULL, 2, NULL, '2020-06-21 00:09:00', '2020-06-20 22:09:00'),
(234, 29, 19, '2020-06-20', '2020-06-21', NULL, NULL, NULL, 2, NULL, '2020-06-21 00:09:03', '2020-06-20 22:09:03'),
(235, 29, 42, '2020-06-20', '2020-06-21', NULL, NULL, NULL, 2, NULL, '2020-06-21 00:09:14', '2020-06-20 22:09:14'),
(236, 29, 21, '2020-06-20', '2020-06-21', NULL, NULL, NULL, 2, NULL, '2020-06-21 00:09:10', '2020-06-20 22:09:10'),
(237, 30, 4, '2020-06-22', '2020-06-22', NULL, NULL, NULL, 2, NULL, '2020-06-22 16:08:09', '2020-06-22 14:08:09'),
(238, 30, 29, '2020-06-22', '2020-06-22', NULL, NULL, NULL, 2, NULL, '2020-06-22 16:08:12', '2020-06-22 14:08:12'),
(239, 30, 15, '2020-06-22', '2020-06-22', NULL, NULL, NULL, 2, NULL, '2020-06-22 16:08:16', '2020-06-22 14:08:16'),
(240, 30, 15, '2020-06-22', NULL, NULL, NULL, NULL, 0, NULL, '2020-06-22 16:30:12', '2020-06-22 14:30:12'),
(241, 31, 24, '2020-06-22', NULL, NULL, NULL, NULL, 0, NULL, '2020-06-22 16:30:28', '2020-06-22 14:30:28'),
(242, 31, 24, '2020-06-22', '2020-06-22', NULL, NULL, NULL, 2, NULL, '2020-06-22 16:30:52', '2020-06-22 14:30:52'),
(243, 31, 8, '2020-06-22', '2020-06-22', NULL, NULL, NULL, 2, NULL, '2020-06-22 16:30:56', '2020-06-22 14:30:56'),
(244, 30, 15, '2020-06-22', '2020-06-23', NULL, NULL, NULL, 2, NULL, '2020-06-23 14:38:53', '2020-06-23 12:38:53'),
(245, 50, 6, '2020-06-23', '2020-06-30', NULL, NULL, NULL, 2, NULL, '2020-06-30 14:52:08', '2020-06-30 12:52:08'),
(246, 50, 5, '2020-06-23', '2020-06-30', NULL, NULL, NULL, 2, NULL, '2020-06-30 14:52:19', '2020-06-30 12:52:19'),
(247, 50, 3, '2020-06-23', '2020-06-30', NULL, NULL, NULL, 2, NULL, '2020-06-30 14:52:22', '2020-06-30 12:52:22'),
(248, 50, 6, '2020-06-23', '2020-06-30', NULL, NULL, NULL, 2, NULL, '2020-06-30 14:52:26', '2020-06-30 12:52:26'),
(249, 13, 19, '2020-06-25', '2020-07-07', NULL, NULL, NULL, 2, NULL, '2020-07-07 00:55:45', '2020-07-06 22:55:45'),
(250, 18, 4, '2020-07-03', '2020-07-07', NULL, NULL, NULL, 2, NULL, '2020-07-07 00:55:59', '2020-07-06 22:55:59'),
(251, 216, 15, '2020-07-06', '2020-07-07', NULL, NULL, NULL, 2, NULL, '2020-07-07 01:13:49', '2020-07-06 23:13:49'),
(252, 217, 15, '2020-07-06', '2020-07-07', NULL, NULL, NULL, 2, NULL, '2020-07-07 01:13:54', '2020-07-06 23:13:54'),
(253, 218, 15, '2020-07-06', '2020-07-07', NULL, NULL, NULL, 2, NULL, '2020-07-07 01:13:59', '2020-07-06 23:13:59'),
(254, 219, 15, '2020-07-06', '2020-07-07', '2020-07-09', NULL, NULL, 3, 90, '2020-07-09 13:45:00', '2020-07-09 11:45:00'),
(255, 220, 15, '2020-07-06', '2020-07-07', '2020-07-09', NULL, NULL, 3, 80, '2020-07-09 13:47:36', '2020-07-09 11:47:36'),
(256, 221, 15, '2020-07-06', '2020-07-07', '2020-07-10', NULL, NULL, 3, 90, '2020-07-10 22:24:23', '2020-07-10 20:24:23'),
(257, 222, 15, '2020-07-06', '2020-07-07', '2020-07-09', NULL, NULL, 3, 80, '2020-07-09 13:50:20', '2020-07-09 11:50:20'),
(258, 223, 15, '2020-07-06', '2020-07-07', '2020-07-09', NULL, NULL, 3, 90, '2020-07-09 13:57:12', '2020-07-09 11:57:12'),
(259, 207, 15, '2020-07-06', '2020-07-07', '2020-07-08', NULL, NULL, 3, 70, '2020-07-08 19:00:37', '2020-07-08 17:00:37'),
(260, 208, 15, '2020-07-06', '2020-07-07', '2020-07-09', NULL, NULL, 3, 80, '2020-07-09 13:22:16', '2020-07-09 11:22:16'),
(261, 209, 15, '2020-07-06', '2020-07-07', '2020-07-09', NULL, NULL, 3, 90, '2020-07-09 02:23:40', '2020-07-09 00:23:40'),
(262, 210, 15, '2020-07-06', '2020-07-07', '2020-07-09', NULL, NULL, 3, 90, '2020-07-09 02:40:49', '2020-07-09 00:40:49'),
(263, 211, 15, '2020-07-06', '2020-07-07', '2020-07-09', NULL, NULL, 3, 80, '2020-07-09 13:27:09', '2020-07-09 11:27:09'),
(264, 212, 15, '2020-07-06', '2020-07-07', '2020-07-09', NULL, NULL, 3, 100, '2020-07-09 13:31:30', '2020-07-09 11:31:30'),
(265, 213, 15, '2020-07-07', '2020-07-07', '2020-07-09', NULL, NULL, 3, 80, '2020-07-09 13:34:14', '2020-07-09 11:34:14'),
(266, 214, 15, '2020-07-07', '2020-07-07', '2020-07-08', NULL, NULL, 3, 90, '2020-07-08 23:43:00', '2020-07-08 21:43:00'),
(267, 215, 15, '2020-07-07', '2020-07-07', '2020-07-09', NULL, NULL, 3, 80, '2020-07-09 01:57:18', '2020-07-08 23:57:18'),
(268, 216, 15, '2020-07-07', NULL, '2020-07-09', NULL, NULL, 3, 80, '2020-07-09 13:42:09', '2020-07-09 11:42:08'),
(269, 217, 15, '2020-07-07', NULL, '2020-07-09', NULL, NULL, 3, 90, '2020-07-09 12:52:12', '2020-07-09 10:52:12'),
(270, 218, 15, '2020-07-07', NULL, '2020-07-17', NULL, NULL, 3, 90, '2020-07-17 20:58:32', '2020-07-17 18:58:32'),
(271, 207, 15, '2020-07-07', NULL, '2020-07-08', NULL, NULL, 3, 70, '2020-07-08 00:18:26', '2020-07-07 22:18:26'),
(272, 230, 15, '2020-07-07', '2020-07-07', '2020-07-09', NULL, NULL, 3, 90, '2020-07-09 02:46:15', '2020-07-09 00:46:15'),
(273, 234, 15, '2020-07-07', '2020-07-07', '2020-07-09', NULL, NULL, 3, 90, '2020-07-09 13:15:04', '2020-07-09 11:15:04'),
(274, 235, 15, '2020-07-07', '2020-07-07', '2020-07-09', NULL, NULL, 3, 90, '2020-07-09 13:10:34', '2020-07-09 11:10:34'),
(275, 210, 21, '2020-07-07', NULL, NULL, NULL, NULL, 1, NULL, '2020-07-07 21:11:55', '2020-07-07 21:11:55'),
(276, 263, 15, '2020-07-08', NULL, '2020-07-09', NULL, NULL, 3, 90, '2020-07-09 13:54:14', '2020-07-09 11:54:14'),
(277, 11, 15, '2020-07-08', NULL, NULL, NULL, NULL, 1, NULL, '2020-07-08 21:52:29', '2020-07-08 21:52:29'),
(278, 274, 15, '2020-07-09', NULL, '2020-07-24', NULL, NULL, 3, 80, '2020-07-24 20:48:22', '2020-07-24 18:48:22'),
(279, 240, 15, '2020-07-09', NULL, '2020-07-09', NULL, NULL, 3, 80, '2020-07-09 14:13:45', '2020-07-09 12:13:45'),
(280, 235, 45, '2020-07-09', NULL, '2020-07-13', NULL, NULL, 3, 90, '2020-07-13 15:25:08', '2020-07-13 13:25:08'),
(281, 234, 45, '2020-07-09', NULL, '2020-07-13', NULL, NULL, 3, 100, '2020-07-13 15:49:31', '2020-07-13 13:49:31'),
(282, 207, 45, '2020-07-09', NULL, NULL, NULL, NULL, 1, NULL, '2020-07-09 19:01:16', '2020-07-09 19:01:16'),
(283, 208, 45, '2020-07-09', NULL, '2020-07-11', NULL, NULL, 3, 90, '2020-07-11 00:06:10', '2020-07-10 22:06:10'),
(284, 209, 45, '2020-07-09', NULL, '2020-07-11', NULL, NULL, 3, 100, '2020-07-11 02:34:29', '2020-07-11 00:34:29'),
(285, 210, 45, '2020-07-09', NULL, '2020-07-11', NULL, NULL, 3, 100, '2020-07-11 02:28:18', '2020-07-11 00:28:18'),
(286, 207, 45, '2020-07-09', NULL, '2020-07-13', NULL, NULL, 3, 90, '2020-07-13 16:18:17', '2020-07-13 14:18:17'),
(287, 230, 45, '2020-07-09', NULL, '2020-07-11', NULL, NULL, 3, 100, '2020-07-11 02:16:38', '2020-07-11 00:16:38'),
(288, 212, 45, '2020-07-09', NULL, '2020-07-13', NULL, NULL, 3, 100, '2020-07-13 18:53:08', '2020-07-13 16:53:08'),
(289, 213, 45, '2020-07-09', NULL, '2020-07-11', NULL, NULL, 3, 100, '2020-07-11 02:05:19', '2020-07-11 00:05:19'),
(290, 214, 45, '2020-07-09', NULL, '2020-07-13', NULL, NULL, 3, 100, '2020-07-13 18:57:49', '2020-07-13 16:57:49'),
(291, 215, 45, '2020-07-09', NULL, '2020-07-11', NULL, NULL, 3, 70, '2020-07-11 23:15:43', '2020-07-11 21:15:43'),
(292, 216, 45, '2020-07-09', NULL, '2020-07-13', NULL, NULL, 3, 90, '2020-07-13 19:01:44', '2020-07-13 17:01:44'),
(293, 217, 45, '2020-07-09', NULL, '2020-07-13', NULL, NULL, 3, 90, '2020-07-13 19:05:33', '2020-07-13 17:05:33'),
(294, 218, 45, '2020-07-09', NULL, '2020-07-17', NULL, NULL, 3, 100, '2020-07-17 20:58:28', '2020-07-17 18:58:28'),
(295, 219, 45, '2020-07-09', NULL, '2020-07-13', NULL, NULL, 3, 90, '2020-07-13 19:09:07', '2020-07-13 17:09:06'),
(296, 220, 45, '2020-07-09', NULL, '2020-07-13', NULL, NULL, 3, 90, '2020-07-13 19:13:22', '2020-07-13 17:13:22'),
(297, 240, 45, '2020-07-09', NULL, '2020-07-13', NULL, NULL, 3, 90, '2020-07-13 19:16:35', '2020-07-13 17:16:35'),
(298, 221, 45, '2020-07-09', NULL, '2020-07-13', NULL, NULL, 3, 100, '2020-07-13 19:19:27', '2020-07-13 17:19:27'),
(299, 222, 45, '2020-07-09', NULL, NULL, NULL, NULL, 1, NULL, '2020-07-09 19:22:05', '2020-07-09 19:22:05'),
(300, 263, 45, '2020-07-09', NULL, '2020-07-13', NULL, NULL, 3, 90, '2020-07-13 19:23:08', '2020-07-13 17:23:08'),
(301, 223, 45, '2020-07-09', NULL, '2020-07-13', NULL, NULL, 3, 100, '2020-07-13 19:38:01', '2020-07-13 17:38:01'),
(302, 274, 45, '2020-07-09', NULL, '2020-07-13', NULL, NULL, 3, 90, '2020-07-13 19:42:08', '2020-07-13 17:42:08'),
(303, 290, 45, '2020-07-10', NULL, '2020-07-13', NULL, NULL, 3, 90, '2020-07-13 19:21:22', '2020-07-13 17:21:22'),
(304, 290, 15, '2020-07-10', NULL, '2020-07-10', NULL, NULL, 3, 90, '2020-07-10 15:54:05', '2020-07-10 13:54:05'),
(305, 291, 4, '2020-07-10', NULL, NULL, NULL, NULL, 1, NULL, '2020-07-10 14:05:23', '2020-07-10 14:05:23'),
(306, 13, 31, '2020-07-10', NULL, NULL, NULL, NULL, 1, NULL, '2020-07-10 19:06:38', '2020-07-10 19:06:38'),
(307, 230, 6, '2020-07-11', NULL, NULL, NULL, NULL, 0, NULL, '2020-07-13 15:38:29', '2020-07-13 13:38:29'),
(308, 311, 4, '2020-07-13', '2020-07-13', NULL, NULL, NULL, 2, NULL, '2020-07-13 15:38:43', '2020-07-13 13:38:43'),
(309, 211, 45, '2020-07-13', NULL, '2020-07-13', NULL, NULL, 3, 100, '2020-07-13 16:33:26', '2020-07-13 14:33:26'),
(310, 318, 15, '2020-07-13', '2020-07-13', NULL, NULL, NULL, 2, NULL, '2020-07-13 23:56:06', '2020-07-13 21:56:06'),
(311, 318, 45, '2020-07-13', NULL, '2020-07-13', NULL, NULL, 3, 100, '2020-07-13 19:29:06', '2020-07-13 17:29:06'),
(312, 319, 15, '2020-07-13', NULL, NULL, NULL, NULL, 1, NULL, '2020-07-13 17:33:10', '2020-07-13 17:33:10'),
(313, 319, 45, '2020-07-13', NULL, '2020-07-13', NULL, NULL, 3, 90, '2020-07-13 19:34:12', '2020-07-13 17:34:12'),
(314, 319, 15, '2020-07-13', NULL, NULL, NULL, NULL, 1, NULL, '2020-07-13 17:35:15', '2020-07-13 17:35:15'),
(315, 235, 8, '2020-07-13', '2020-07-13', '2020-07-15', NULL, NULL, 3, 100, '2020-07-15 15:47:08', '2020-07-15 13:47:08'),
(316, 234, 8, '2020-07-13', '2020-07-13', '2020-07-15', NULL, NULL, 3, 80, '2020-07-15 15:33:54', '2020-07-15 13:33:54'),
(317, 207, 8, '2020-07-13', '2020-07-14', '2020-07-15', NULL, NULL, 3, 100, '2020-07-15 15:49:59', '2020-07-15 13:49:59'),
(318, 208, 8, '2020-07-13', '2020-07-13', '2020-07-15', NULL, NULL, 3, 90, '2020-07-15 15:52:10', '2020-07-15 13:52:10'),
(319, 209, 8, '2020-07-13', '2020-07-13', '2020-07-15', NULL, NULL, 3, 90, '2020-07-15 02:32:54', '2020-07-15 00:32:54'),
(320, 211, 8, '2020-07-13', '2020-07-13', '2020-07-15', NULL, NULL, 3, 90, '2020-07-15 15:57:13', '2020-07-15 13:57:13'),
(321, 230, 8, '2020-07-13', '2020-07-13', '2020-07-15', NULL, NULL, 3, 100, '2020-07-15 02:59:30', '2020-07-15 00:59:30'),
(322, 212, 8, '2020-07-13', '2020-07-13', '2020-07-15', NULL, NULL, 3, 90, '2020-07-15 19:44:56', '2020-07-15 17:44:56'),
(323, 213, 8, '2020-07-13', '2020-07-13', '2020-07-15', NULL, NULL, 3, 100, '2020-07-15 02:35:00', '2020-07-15 00:35:00'),
(324, 214, 8, '2020-07-13', '2020-07-13', '2020-07-15', NULL, NULL, 3, 100, '2020-07-15 19:51:46', '2020-07-15 17:51:46'),
(325, 215, 8, '2020-07-13', '2020-07-14', '2020-07-15', NULL, NULL, 3, 90, '2020-07-15 15:02:02', '2020-07-15 13:02:02'),
(326, 216, 8, '2020-07-13', '2020-07-14', '2020-07-15', NULL, NULL, 3, 90, '2020-07-15 19:57:19', '2020-07-15 17:57:19'),
(327, 217, 8, '2020-07-13', '2020-07-14', '2020-07-15', NULL, NULL, 3, 90, '2020-07-15 20:00:24', '2020-07-15 18:00:24'),
(328, 218, 8, '2020-07-13', '2020-07-14', '2020-07-17', NULL, NULL, 3, 90, '2020-07-17 20:58:25', '2020-07-17 18:58:25'),
(329, 219, 8, '2020-07-13', '2020-07-13', '2020-07-15', NULL, NULL, 3, 80, '2020-07-15 20:05:55', '2020-07-15 18:05:55'),
(330, 220, 8, '2020-07-13', '2020-07-14', '2020-07-15', NULL, NULL, 3, 100, '2020-07-15 20:09:09', '2020-07-15 18:09:09'),
(331, 240, 8, '2020-07-13', '2020-07-14', '2020-07-15', NULL, NULL, 3, 90, '2020-07-15 20:15:11', '2020-07-15 18:15:11'),
(332, 221, 8, '2020-07-13', '2020-07-14', '2020-07-15', NULL, NULL, 3, 90, '2020-07-15 20:16:29', '2020-07-15 18:16:29'),
(333, 290, 8, '2020-07-13', '2020-07-14', '2020-07-15', NULL, NULL, 3, 100, '2020-07-15 20:18:01', '2020-07-15 18:18:01'),
(334, 263, 8, '2020-07-13', '2020-07-14', '2020-07-15', NULL, NULL, 3, 90, '2020-07-15 20:23:49', '2020-07-15 18:23:49'),
(335, 223, 8, '2020-07-13', '2020-07-13', '2020-07-15', NULL, NULL, 3, 80, '2020-07-15 20:33:24', '2020-07-15 18:33:24'),
(336, 274, 8, '2020-07-13', '2020-07-14', '2020-07-15', NULL, NULL, 3, 100, '2020-07-15 20:35:18', '2020-07-15 18:35:18'),
(337, 210, 8, '2020-07-13', '2020-07-14', '2020-07-15', NULL, NULL, 3, 100, '2020-07-15 02:23:28', '2020-07-15 00:23:28'),
(338, 344, 8, '2020-07-14', NULL, NULL, NULL, NULL, 1, NULL, '2020-07-14 20:04:35', '2020-07-14 20:04:35'),
(339, 13, 3, '2020-07-15', NULL, NULL, NULL, NULL, 1, NULL, '2020-07-15 14:06:15', '2020-07-15 14:06:15'),
(340, 13, 4, '2020-07-15', NULL, NULL, NULL, NULL, 1, NULL, '2020-07-15 14:08:47', '2020-07-15 14:08:47'),
(341, 318, 8, '2020-07-15', NULL, '2020-07-15', NULL, NULL, 3, 80, '2020-07-15 20:26:05', '2020-07-15 18:26:05'),
(342, 319, 8, '2020-07-15', NULL, '2020-07-15', NULL, NULL, 3, 90, '2020-07-15 20:31:41', '2020-07-15 18:31:41'),
(343, 235, 44, '2020-07-15', NULL, '2020-07-17', NULL, NULL, 3, 100, '2020-07-17 04:37:57', '2020-07-17 02:37:57'),
(344, 234, 44, '2020-07-15', NULL, '2020-07-17', NULL, NULL, 3, 90, '2020-07-17 04:40:03', '2020-07-17 02:40:03'),
(345, 207, 44, '2020-07-15', NULL, '2020-07-17', NULL, NULL, 3, 90, '2020-07-17 04:43:07', '2020-07-17 02:43:07'),
(346, 208, 44, '2020-07-15', NULL, '2020-07-17', NULL, NULL, 3, 80, '2020-07-17 04:45:26', '2020-07-17 02:45:26'),
(347, 209, 44, '2020-07-15', NULL, '2020-07-17', NULL, NULL, 3, 90, '2020-07-17 02:31:48', '2020-07-17 00:31:48'),
(348, 210, 44, '2020-07-15', NULL, '2020-07-17', NULL, NULL, 3, 100, '2020-07-17 02:14:05', '2020-07-17 00:14:05'),
(349, 211, 44, '2020-07-15', NULL, '2020-07-17', NULL, NULL, 3, 90, '2020-07-17 04:51:01', '2020-07-17 02:51:01'),
(350, 230, 44, '2020-07-15', NULL, '2020-07-17', NULL, NULL, 3, 90, '2020-07-17 02:51:19', '2020-07-17 00:51:19'),
(351, 212, 44, '2020-07-15', NULL, '2020-07-17', NULL, NULL, 3, 90, '2020-07-17 04:58:41', '2020-07-17 02:58:41'),
(352, 213, 44, '2020-07-15', NULL, '2020-07-17', NULL, NULL, 3, 90, '2020-07-17 02:34:16', '2020-07-17 00:34:16'),
(353, 214, 44, '2020-07-15', NULL, '2020-07-17', NULL, NULL, 3, 90, '2020-07-17 05:02:39', '2020-07-17 03:02:39'),
(354, 215, 44, '2020-07-15', NULL, '2020-07-17', NULL, NULL, 3, 90, '2020-07-17 15:51:18', '2020-07-17 13:51:18'),
(355, 216, 44, '2020-07-15', NULL, '2020-07-17', NULL, NULL, 3, 80, '2020-07-17 05:06:32', '2020-07-17 03:06:32'),
(356, 218, 44, '2020-07-15', NULL, '2020-07-17', NULL, NULL, 3, 100, '2020-07-17 20:58:10', '2020-07-17 18:58:10'),
(357, 219, 44, '2020-07-15', NULL, '2020-07-17', NULL, NULL, 3, 90, '2020-07-17 05:13:28', '2020-07-17 03:13:28'),
(358, 220, 44, '2020-07-15', NULL, '2020-07-17', NULL, NULL, 3, 90, '2020-07-17 05:15:12', '2020-07-17 03:15:12'),
(359, 240, 44, '2020-07-15', NULL, '2020-07-17', NULL, NULL, 3, 80, '2020-07-17 05:18:15', '2020-07-17 03:18:15'),
(360, 221, 44, '2020-07-15', NULL, '2020-07-17', NULL, NULL, 3, 90, '2020-07-17 05:19:53', '2020-07-17 03:19:53'),
(361, 290, 44, '2020-07-15', NULL, '2020-07-17', NULL, NULL, 3, 90, '2020-07-17 05:21:34', '2020-07-17 03:21:34'),
(362, 263, 44, '2020-07-15', NULL, '2020-07-17', NULL, NULL, 3, 80, '2020-07-17 05:23:26', '2020-07-17 03:23:26'),
(363, 318, 44, '2020-07-15', NULL, '2020-07-17', NULL, NULL, 3, 90, '2020-07-17 05:25:23', '2020-07-17 03:25:23'),
(364, 319, 44, '2020-07-15', NULL, '2020-07-17', NULL, NULL, 3, 90, '2020-07-17 05:27:03', '2020-07-17 03:27:03'),
(365, 223, 44, '2020-07-15', NULL, '2020-07-17', NULL, NULL, 3, 80, '2020-07-17 05:28:44', '2020-07-17 03:28:44'),
(366, 274, 44, '2020-07-15', NULL, '2020-07-17', NULL, NULL, 3, 100, '2020-07-17 05:30:19', '2020-07-17 03:30:19'),
(367, 13, 44, '2020-07-16', NULL, NULL, NULL, NULL, 1, NULL, '2020-07-16 18:36:23', '2020-07-16 18:36:23'),
(368, 235, 41, '2020-07-17', NULL, '2020-07-21', NULL, NULL, 3, 100, '2020-07-21 11:11:38', '2020-07-21 09:11:38'),
(369, 234, 41, '2020-07-17', NULL, '2020-07-21', NULL, NULL, 3, 100, '2020-07-21 11:23:03', '2020-07-21 09:23:03'),
(370, 207, 41, '2020-07-17', NULL, '2020-07-21', NULL, NULL, 3, 100, '2020-07-21 11:27:25', '2020-07-21 09:27:25'),
(371, 208, 41, '2020-07-17', NULL, '2020-07-21', NULL, NULL, 3, 90, '2020-07-21 11:31:28', '2020-07-21 09:31:28'),
(372, 209, 41, '2020-07-17', NULL, '2020-07-21', NULL, NULL, 3, 80, '2020-07-21 02:31:47', '2020-07-21 00:31:47'),
(373, 210, 41, '2020-07-17', NULL, '2020-07-21', NULL, NULL, 3, 100, '2020-07-21 02:47:02', '2020-07-21 00:47:02'),
(374, 211, 41, '2020-07-17', NULL, '2020-07-21', NULL, NULL, 3, 80, '2020-07-21 11:42:10', '2020-07-21 09:42:10'),
(375, 230, 41, '2020-07-17', NULL, '2020-07-21', NULL, NULL, 3, 100, '2020-07-21 11:46:28', '2020-07-21 09:46:28'),
(376, 212, 41, '2020-07-17', NULL, '2020-07-21', NULL, NULL, 3, 90, '2020-07-21 11:50:56', '2020-07-21 09:50:56'),
(377, 213, 41, '2020-07-17', NULL, '2020-07-21', NULL, NULL, 3, 90, '2020-07-21 02:45:36', '2020-07-21 00:45:36'),
(378, 214, 41, '2020-07-17', NULL, '2020-07-21', NULL, NULL, 3, 90, '2020-07-21 11:57:05', '2020-07-21 09:57:05'),
(379, 215, 41, '2020-07-17', NULL, '2020-07-21', NULL, NULL, 3, 100, '2020-07-21 12:01:41', '2020-07-21 10:01:41'),
(380, 216, 41, '2020-07-17', NULL, '2020-07-21', NULL, NULL, 3, 90, '2020-07-21 12:08:08', '2020-07-21 10:08:08'),
(381, 217, 41, '2020-07-17', NULL, '2020-07-21', NULL, NULL, 3, 90, '2020-07-21 12:12:32', '2020-07-21 10:12:32'),
(382, 217, 44, '2020-07-17', NULL, '2020-07-17', NULL, NULL, 3, 90, '2020-07-17 05:09:56', '2020-07-17 03:09:56'),
(383, 218, 46, '2020-07-17', NULL, NULL, NULL, NULL, 1, NULL, '2020-07-17 03:10:56', '2020-07-17 03:10:56'),
(384, 218, 41, '2020-07-17', NULL, '2020-07-21', NULL, NULL, 3, 100, '2020-07-21 01:45:26', '2020-07-20 23:45:26'),
(385, 219, 41, '2020-07-17', NULL, '2020-07-21', NULL, NULL, 3, 100, '2020-07-21 12:20:08', '2020-07-21 10:20:08'),
(386, 220, 41, '2020-07-17', NULL, '2020-07-21', NULL, NULL, 3, 90, '2020-07-21 12:23:17', '2020-07-21 10:23:17'),
(387, 240, 41, '2020-07-17', NULL, '2020-07-21', NULL, NULL, 3, 100, '2020-07-21 12:28:38', '2020-07-21 10:28:38'),
(388, 221, 41, '2020-07-17', '2020-07-21', '2020-07-21', NULL, NULL, 3, 100, '2020-07-21 14:10:03', '2020-07-21 12:10:03'),
(389, 290, 41, '2020-07-17', '2020-07-21', '2020-07-21', NULL, NULL, 3, 90, '2020-07-21 14:28:49', '2020-07-21 12:28:49'),
(390, 263, 41, '2020-07-17', '2020-07-21', '2020-07-21', NULL, NULL, 3, 100, '2020-07-21 12:47:13', '2020-07-21 10:47:13'),
(391, 318, 41, '2020-07-17', '2020-07-21', '2020-07-21', NULL, NULL, 3, 90, '2020-07-21 12:56:05', '2020-07-21 10:56:04'),
(392, 319, 41, '2020-07-17', '2020-07-21', '2020-07-21', NULL, NULL, 3, 100, '2020-07-21 13:00:08', '2020-07-21 11:00:08'),
(393, 223, 41, '2020-07-17', '2020-07-21', '2020-07-21', NULL, NULL, 3, 90, '2020-07-21 13:09:11', '2020-07-21 11:09:11'),
(394, 274, 41, '2020-07-17', '2020-07-21', '2020-07-21', NULL, NULL, 3, 90, '2020-07-21 13:05:36', '2020-07-21 11:05:36'),
(395, 531, 21, '2020-07-27', NULL, NULL, NULL, NULL, 1, NULL, '2020-07-27 10:38:06', '2020-07-27 10:38:06'),
(396, 30, 34, '2020-08-06', NULL, NULL, NULL, NULL, 1, NULL, '2020-08-06 00:51:26', '2020-08-06 00:51:26'),
(397, 11, 34, '2020-09-11', NULL, NULL, NULL, NULL, 1, NULL, '2020-09-11 01:17:00', '2020-09-11 01:17:00'),
(398, 1172, 34, '2020-09-11', NULL, '2020-09-11', NULL, NULL, 3, 100, '2020-09-11 03:40:16', '2020-09-11 01:40:16'),
(399, 1174, 34, '2020-09-11', NULL, '2020-09-11', NULL, NULL, 3, 100, '2020-09-11 03:46:55', '2020-09-11 01:46:55'),
(400, 1175, 34, '2020-09-11', NULL, '2020-09-11', NULL, NULL, 3, 100, '2020-09-11 03:50:33', '2020-09-11 01:50:33'),
(401, 1176, 34, '2020-09-11', NULL, '2020-09-11', NULL, NULL, 3, 100, '2020-09-11 03:53:55', '2020-09-11 01:53:55'),
(402, 1177, 34, '2020-09-11', NULL, '2020-09-11', NULL, NULL, 3, 100, '2020-09-11 03:57:27', '2020-09-11 01:57:27'),
(403, 1178, 34, '2020-09-11', NULL, '2020-09-11', NULL, NULL, 3, 100, '2020-09-11 04:03:10', '2020-09-11 02:03:10'),
(404, 1180, 3, '2020-09-11', NULL, NULL, NULL, NULL, 1, NULL, '2020-09-11 02:29:33', '2020-09-11 02:29:33'),
(405, 1200, 34, '2020-09-12', NULL, '2020-09-12', NULL, NULL, 3, 100, '2020-09-12 04:32:11', '2020-09-12 02:32:11'),
(406, 1201, 34, '2020-09-12', NULL, '2020-09-12', NULL, NULL, 3, 100, '2020-09-12 04:39:05', '2020-09-12 02:39:05'),
(407, 1202, 34, '2020-09-12', NULL, '2020-09-12', NULL, NULL, 3, 100, '2020-09-12 04:48:43', '2020-09-12 02:48:43'),
(408, 1203, 34, '2020-09-12', NULL, '2020-09-12', NULL, NULL, 3, 100, '2020-09-12 05:00:51', '2020-09-12 03:00:51'),
(409, 1204, 34, '2020-09-12', NULL, '2020-09-12', NULL, NULL, 3, 100, '2020-09-12 05:05:29', '2020-09-12 03:05:29'),
(410, 1205, 34, '2020-09-12', NULL, '2020-09-12', NULL, NULL, 3, 100, '2020-09-12 05:11:08', '2020-09-12 03:11:08'),
(411, 1207, 34, '2020-09-12', NULL, NULL, NULL, NULL, 1, NULL, '2020-09-12 03:15:37', '2020-09-12 03:15:37'),
(412, 1207, 34, '2020-09-12', NULL, '2020-09-12', NULL, NULL, 3, 100, '2020-09-12 05:16:41', '2020-09-12 03:16:41'),
(413, 1223, 34, '2020-09-14', NULL, '2020-09-14', NULL, NULL, 3, 100, '2020-09-14 15:35:21', '2020-09-14 13:35:21'),
(414, 1227, 24, '2020-09-14', NULL, NULL, NULL, NULL, 0, NULL, '2020-11-19 11:51:08', '2020-11-19 10:51:08'),
(415, 1227, 3, '2020-09-14', '2020-09-14', '2020-11-19', NULL, NULL, 3, 96, '2020-11-19 13:29:49', '2020-11-19 12:29:49'),
(416, 1227, 5, '2020-09-14', '2020-09-14', NULL, NULL, NULL, 0, NULL, '2020-12-14 20:50:28', '2020-12-14 19:50:28'),
(417, 1228, 34, '2020-09-14', NULL, '2020-09-14', NULL, NULL, 3, 100, '2020-09-14 17:03:53', '2020-09-14 15:03:53'),
(418, 1229, 34, '2020-09-14', NULL, '2020-09-14', NULL, NULL, 3, 100, '2020-09-14 17:12:24', '2020-09-14 15:12:24'),
(419, 1230, 34, '2020-09-14', NULL, '2020-09-14', NULL, NULL, 3, 100, '2020-09-14 17:28:10', '2020-09-14 15:28:10'),
(420, 1231, 34, '2020-09-14', NULL, '2020-09-14', NULL, NULL, 3, 100, '2020-09-14 17:33:23', '2020-09-14 15:33:23'),
(421, 1232, 34, '2020-09-14', NULL, '2020-09-14', NULL, NULL, 3, 100, '2020-09-14 17:37:38', '2020-09-14 15:37:38'),
(422, 1233, 34, '2020-09-14', NULL, '2020-09-14', NULL, NULL, 3, 100, '2020-09-14 17:43:14', '2020-09-14 15:43:14'),
(423, 1235, 34, '2020-09-14', NULL, '2020-09-14', NULL, NULL, 3, 100, '2020-09-14 17:47:56', '2020-09-14 15:47:56'),
(424, 1236, 34, '2020-09-14', NULL, '2020-09-14', NULL, NULL, 3, 100, '2020-09-14 17:56:48', '2020-09-14 15:56:48'),
(425, 1237, 34, '2020-09-14', NULL, '2020-09-14', NULL, NULL, 3, 100, '2020-09-14 18:00:03', '2020-09-14 16:00:03'),
(426, 1238, 34, '2020-09-14', NULL, '2020-09-14', NULL, NULL, 3, 100, '2020-09-14 18:14:22', '2020-09-14 16:14:22'),
(427, 1239, 34, '2020-09-14', NULL, '2020-09-14', NULL, NULL, 3, 100, '2020-09-14 18:18:24', '2020-09-14 16:18:24'),
(428, 1752, 4, '2020-10-06', NULL, NULL, NULL, NULL, 0, NULL, '2020-12-14 20:50:05', '2020-12-14 19:50:05'),
(429, 1754, 5, '2020-10-06', '2020-11-19', NULL, NULL, NULL, 0, NULL, '2020-12-14 20:49:57', '2020-12-14 19:49:57'),
(430, 11, 3, '2020-11-19', '2020-11-19', '2020-11-19', NULL, NULL, 3, 87, '2020-11-19 14:41:35', '2020-11-19 13:41:35'),
(431, 2158, 34, '2020-12-15', NULL, '2020-12-15', NULL, NULL, 3, 100, '2020-12-15 14:02:54', '2020-12-15 13:02:54'),
(432, 2159, 34, '2020-12-15', NULL, '2020-12-15', NULL, NULL, 3, 94, '2020-12-15 14:13:16', '2020-12-15 13:13:16'),
(433, 2160, 34, '2020-12-15', NULL, '2020-12-15', NULL, NULL, 3, 94, '2020-12-15 14:27:23', '2020-12-15 13:27:23'),
(434, 2161, 34, '2020-12-15', NULL, '2020-12-15', NULL, NULL, 3, 100, '2020-12-15 14:33:11', '2020-12-15 13:33:11');
INSERT INTO `inscripciones` (`id`, `id_alumno`, `id_curso`, `fecha`, `fec_activa`, `fec_termina`, `fec_cancela`, `fec_vence`, `estado`, `resultado`, `created_at`, `updated_at`) VALUES
(435, 2162, 34, '2020-12-15', NULL, '2020-12-15', NULL, NULL, 3, 100, '2020-12-15 14:36:57', '2020-12-15 13:36:57'),
(436, 2163, 34, '2020-12-15', NULL, '2020-12-15', NULL, NULL, 3, 100, '2020-12-15 14:39:50', '2020-12-15 13:39:50'),
(437, 2164, 34, '2020-12-15', NULL, '2020-12-15', NULL, NULL, 3, 100, '2020-12-15 14:42:34', '2020-12-15 13:42:34'),
(438, 2165, 34, '2020-12-15', NULL, '2020-12-15', NULL, NULL, 3, 100, '2020-12-15 14:46:00', '2020-12-15 13:46:00'),
(439, 2168, 4, '2020-12-17', '2020-12-17', NULL, NULL, NULL, 2, NULL, '2020-12-17 15:43:45', '2020-12-17 14:43:45'),
(440, 2207, 6, '2021-01-18', NULL, '2021-01-18', NULL, NULL, 3, 98, '2021-01-18 15:16:40', '2021-01-18 14:16:40'),
(441, 2214, 6, '2021-01-22', '2021-01-22', '2021-01-29', NULL, NULL, 3, 100, '2021-01-29 15:45:19', '2021-01-29 14:45:19'),
(442, 2214, 34, '2021-01-22', NULL, '2021-01-25', NULL, NULL, 3, 100, '2021-01-25 20:41:16', '2021-01-25 19:41:16'),
(443, 2224, 14, '2021-02-01', NULL, NULL, NULL, NULL, 1, NULL, '2021-02-01 09:30:31', '2021-02-01 09:30:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulos`
--

CREATE TABLE `modulos` (
  `id` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `contenido` text COLLATE utf8_spanish2_ci NOT NULL,
  `modulo` varchar(450) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `video` varchar(450) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `texto_prueba` text COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `modulos`
--

INSERT INTO `modulos` (`id`, `id_curso`, `contenido`, `modulo`, `estado`, `created_at`, `updated_at`, `video`, `texto_prueba`) VALUES
(3, 3, 'En Colombia y en el Mundo la Seguridad y Salud Ocupacional es un tema primordial porque de ello depende que un país que tenga un sistema enfocado a la protección y seguridad  de  los  trabajadores sea un país más desarrollado y por ende creando una sociedad con mucho más progreso, con empresas más competitivas en Calidad, productividad y con trabajadores con mejor calidad de vida. Según la Organización Internacional del Trabajo (O.I.T.) “Cada 15 segundos, un trabajador muere a causa de accidentes o enfermedades relacionadas con el trabajo. Cada 15 segundos, 153 trabajadores tienen un accidente laboral. Cada día mueren 6.300 personas a causa de accidentes o enfermedades relacionadas con el trabajo – más de 2,3 millones de muertes por año. Anualmente ocurren más de 317 millones de accidentes en el trabajo, muchos de estos accidentes resultan en ausentismo laboral” (Organización Internacional del Trabajo (O.I.T.). Seguridad y Salud en el Trabajo Agosto 25 de 2014).', 'MÓDULO 1:  NOCIONES SOBRE SEGURIDAD Y SALUD EN EL TRABAJO', 1, '2020-06-15 18:19:37', '2020-06-15 16:19:37', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/7QSTgjabAfc\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación modulo 1 Diplomado en Seguridad y Salud en el Trabajo'),
(4, 3, 'La medicina preventiva y del trabajo, se enfoca en la protección de la salud del empleado y el cuidado de su seguridad, éste constituye una herramienta, que en su sentido más general, debe tender al fomento y el mantenimiento del grado más elevado posible de bienestar físico, mental y social de los trabajadores, sea cual fuere su ocupación.\n\nEstá enfocado en la prevención de las consecuencias negativas que puedan afectar a los trabajadores según sus condiciones de trabajo; también a la protección de los mismos en su lugar de empleo frente a los riesgos a los que están expuestos; y a la colocación y mantenimiento de los trabajadores en un entorno laboral adaptado a sus necesidades físicas o mentales ya que las malas condiciones de trabajo influyen en la salud y la seguridad del trabajador.', 'MÓDULO 2: MEDICINA PREVENTIVA Y DEL TRABAJO', 1, '2020-06-15 18:20:33', '2020-06-15 16:20:33', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/nUDAat0TW6A\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Examen del módulo 2 del Diplomado en Seguridad y Salud en el Trabajo'),
(5, 3, 'Las personas que actúan en el campo de la prevención de los riesgos en el trabajo, con frecuencia  se  desalientan  porque  no  encuentran  el  eco  necesario  a  sus  esfuerzos  y muchas veces es preciso poner el incentivo de una mayor producción para que se adopten medidas de seguridad en los centros de trabajo, como si los mandatos  de la ley fuesen solo reglas de cortesía industrial y no de necesidades para proteger la mayor riqueza, que son sus trabajadores\n\n\nEs necesario estimular y recetar con recursos de administración para que se implanten los más eficientes medios de producción en el trabajo, pero hay que pensar al mismo tiempo, que  una  administración  laboral  verdaderamente  responsable,  tiene  la  obligación  de tomar, en primer término, las medidas necesarias para garantizar   la seguridad de los trabajadores.', 'MÓDULO 3: HIGIENE INDUSTRIAL', 1, '2020-06-15 18:21:53', '2020-06-15 16:21:53', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/3mjDWR3Huto\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación módulo 3 Diplomado en Seguridad y Salud en el Trabajo'),
(6, 3, 'La Seguridad Industrial es un campo necesario y obligatorio en toda empresa en el que se estudian,  aplican  y  renuevas  constantemente  los  procesos  mediante  los  cuales se minimizan los riesgos en la industria. Toda industria debe tener la responsabilidad para cumplir con una serie de normas y condiciones que deben prestarle a sus trabajadores con el fin de darles garantía de su seguridad y protección. Por ejemplo, en una empresa en la que se elaboren productos químicos el empleado debe estar protegido contra radiación, alguna fuga de un líquido toxico o inhalaciones de gases contaminantes. Toda empresa de químicos debe proveer a sus trabajadores de las máximas protecciones para evitar algún accidente. Esa es básicamente la función de la seguridad industrial.', 'MÓDULO 4: SEGURIDAD INDUSTRIAL', 1, '2020-06-15 18:23:37', '2020-06-15 16:23:37', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/3tOXor13c3g\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación módulo 4 Diplomado en Seguridad y Salud en el Trabajo'),
(7, 4, 'Gestión ambiental reúne un conjunto de diligencias que nos llevan a manejar de manera integral el Sistema Ambiental haciendo realidad el concepto de desarrollo sostenible o sustentable, es la forma en que se organizan las actividades antrópicas que afectan el medio ambiente, con el fin de conservar la armonía y mejorar la calidad de vida; evitando o mitigando los problemas ambientales.', 'MÓDULO 1: NOCIONES SOBRE GESTIÓN AMBIENTAL', 1, '2020-06-15 17:54:50', '2020-06-15 15:54:50', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/TMPRFPWEGko\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación módulo 1 Diplomado en Gestión Ambiental'),
(8, 4, 'Un Plan de Manejo Ambiental (PMA) es, “el conjunto detallado de actividades, que resultan del producto de una evaluación ambiental y que están orientadas a prevenir, mitigar, corregir o compensar los impactos y efectos ambientales que se causen por el desarrollo de un proyecto, obra o actividad. Incluye los planes de seguimiento, monitoreo, contingencia, y abandono según la naturaleza del proyecto, obra o actividad”.', 'MÓDULO 2: PLAN DE MANEJO AMBIENTAL', 1, '2020-06-15 17:55:52', '2020-06-15 15:55:52', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/BJH9_lVK4ds\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación módulo 2 Diplomado en Gestión Ambiental'),
(9, 4, 'Es un sistema estructurado de gestión que incluye la estructura organizativa, la planificación de las actividades, las responsabilidades, las prácticas, los procesos, los procedimientos y los recursos para desarrollar, implantar, llevar a efecto, revisar y mantener al día los compromisos en materia de protección ambiental que suscribe una Empresa.', 'MÓDULO 3: SISTEMAS DE GESTIÓN AMBIENTAL', 1, '2020-06-15 17:56:29', '2020-06-15 15:56:29', '<iframe title=\"vimeo-player\" src=\"https://player.vimeo.com/video/80053935\" width=\"640\" height=\"360\" frameborder=\"0\" allowfullscreen></iframe>', 'Evaluación módulo Diplomado en Gestión Ambiental'),
(10, 4, 'Según establece la norma ISO 14001 se puede definir auditoría como un proceso sistemático, independiente y documentado para obtener las evidencias de la auditoría, y evaluarlas de forma objetiva con el fin de determinar la extensión en que se cumplen todos los criterios de auditoría.', 'MÓDULO 4: AUDITORÍA AMBIENTAL', 1, '2020-06-15 17:57:02', '2020-06-15 15:57:02', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/i6pwCBrmN8Q\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación módulo 4 Diplomado en Gestión Ambiental'),
(11, 5, 'La Gestión del Talento Humano consiste en la planeación, organización, desarrollo y coordinación, así como también como control de técnicas, capaces de promover el desempeño eficiente del personal, a la vez que el medio que permite a las personas que colaboran en ella alcanzar los objetivos individuales relacionados directamente o indirectamente con el trabajo.', 'MÓDULO 1 INTRODUCCIÓN Y CONCEPTOS GENERALES', 1, '2020-06-15 18:24:29', '2020-06-15 16:24:29', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Q_eWHDfij1I\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación módulo 1 Gestión Del Talento Humano'),
(12, 5, 'La gestión por competencias es el enfoque organizacional que busca alinear los talentos y habilidades de sus colaboradores con la visión y el objetivo final de una empresa. Parte de la idea de identificar el perfil perfecto del trabajador para cierto puesto específico y con base en ello crear una dinámica de reclutamiento y capacitación.', 'MÓDULO 2 GESTIÓN POR COMPETENCIAS', 1, '2020-06-15 18:26:19', '2020-06-15 16:26:19', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/qVwEGjkgjy8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación módulo 2 Gestión Del Talento Humano'),
(13, 5, 'La Selección de Personal no implica elegir al mejor, sino a aquellas personas cuyos perfiles\nse adecuen mejor a las necesidades actuales y futuras de su trabajo en un determinado\nambiente.\n\nLa persona seleccionada no solo tendrá que realizar una tarea precisa, sino que deberá\nintegrarse a un entorno, en un clima laboral que le permita un trabajo armónico y\neficiente con los compañeros, con los clientes, con la dirección, acoplándose a la cultura\nde la empresa, ya que de todo esto va a depender la eficacia con que se desarrollará su', 'MÓDULO 3: PROCESO DE LA GESTIÓN DEL TALENTO HUMANO', 1, '2020-06-15 18:29:01', '2020-06-15 16:29:01', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/6um0pFn69SA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación módulo 3 Gestión Del Talento Humano'),
(14, 5, 'Delegar consiste en dar a un trabajador el poder, la autoridad, la autonomía, la facultad o\nla responsabilidad para que pueda tomar decisiones, resolver problemas,\ndesempeñar funciones o ejecutar tareas, sin necesidad de consultar u obtener aprobación\n\nSe ha comprobado que una sola persona no puede llevar el peso de todas las decisiones y\noperaciones de una empresa; por eso, delegar es una alternativa viable y conveniente.\nDelegar resulta más importante de lo que podría pensarse, porque no siempre los líderes\ntienen la posibilidad de cumplir con todas las responsabilidades o funciones de una\nempresa.', 'MÓDULO 4: BUENAS PRÁCTICAS DEL TALENTO HUMANO', 1, '2020-06-15 18:29:48', '2020-06-15 16:29:48', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/cMRENPfmxL4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación módulo 4 Gestión Del Talento Humano'),
(15, 6, 'En la actualidad las empresas dan gran importancia a la administración de los recursos económicos, humanos y materiales, dejando de lado el servicio de atención al cliente, ignorando que a medida que pasa el tiempo, se hace más urgente y necesaria la aplicación correcta y efectiva de este servicio.\nSi analizamos las condiciones en que se desarrolla el mundo moderno, encontramos que cada día se generan nuevas ideas relacionadas con la adquisición y venta de servicios, convirtiendo en una necesidad innegable el desarrollo del servicio de atención al cliente.', 'MÓDULO 1', 1, '2020-06-15 18:24:50', '2020-06-15 16:24:50', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/dVclS0mS1ao\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación modulo 1 del Diplomado En Atención Al Cliente'),
(16, 6, 'Son aquellos (personas, empresas u organizaciones) que realizan compras a la empresa de forma periódica o que lo hicieron en una fecha reciente. Este tipo de clientes es el que genera el volumen de ventas actual, por tanto, es la fuente de los ingresos que percibe la empresa en la actualidad y es la que le permite tener una determinada participación en el mercado. Son personas o instituciones que concurren con asiduidad a un local o comercio, por lo que son clientes que, al hacer constantes y periódicas visitas para adquirir un bien o servicio, generan ventas actuales o en fechas vigentes.', 'MÓDULO 2', 1, '2020-06-15 18:25:40', '2020-06-15 16:25:40', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tiCIO0y7GgA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación modulo 2 del Diplomado En Atención Al Cliente'),
(17, 6, 'La atención al cliente es un elemento imprescindible para la existencia de una empresa y constituye el centro de interés fundamental y la clave de su éxito o fracaso.\nLa comunicación entre los actores que forman parte de este servicio, debe ser fluida para que ésta sea eficaz y satisfactoria para los usuarios. Las expectativas y la prestación recibida deben ir de la mano.\nDe nada sirve una buena publicidad sobre una empresa si a la hora de la verdad no ofrece lo que promete. Los paraísos ficticios de la publicidad pasaron a la historia. El cliente hoy no quiere oír mensajes alejados de la realidad.', 'MÓDULO 3', 1, '2020-06-15 18:26:22', '2020-06-15 16:26:22', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/KInGGKXfNDY\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación módulo 3 del Diplomado En Atención Al Cliente'),
(18, 6, 'El tiempo lo es todo en la atención al cliente, pero ¿qué tan puntual debe ser la empresa? Si se tienen en cuenta las estadísticas, cuanto más rápido, mejor. Forrester Research descubrió que el 77% de los adultos estadounidenses usuarios de Internet afirman que creen que el aspecto más importante que una empresa puede ofrecerles para darles una excelente atención, es valorar su tiempo. Y no olvidemos la demanda de las redes sociales: Según Social Media Research, el 75% de clientes que contactan con una empresa para recibir soporte en las redes sociales esperan una respuesta en una hora, como mucho.', 'MÓDULO 4', 1, '2020-06-15 18:27:33', '2020-06-15 16:27:33', '.<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Ypc9fCF4A3M\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación modulo 4 del Diplomado En Atención Al Cliente'),
(19, 8, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Manejo Defensivo; este se realizará de manera virtual buscando fomentar entre los ciudadanos participantes, un cambio positivo en su comportamiento vial y desarrollando hábitos seguros, en el momento de encontrarse tras el volante de su vehículo.', 'MODULO MANEJO DEFENSIVO', 1, '2020-06-14 03:13:28', '2020-06-14 01:13:28', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/1IZmE5eGhbg\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación Manejo Defensivo'),
(20, 9, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Seguridad Vial; este se realizara de manera virtual buscando fomentar entre los participantes, un cambio positivo en su comportamiento vial y desarrollando hábitos seguros, en el momento de encontrarse tras el volante de su vehículo', 'MODULO SEGURIDAD VIAL', 1, '2020-06-02 05:50:42', '2020-06-02 03:50:42', '.', 'Evaluación Seguridad Vial'),
(21, 10, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Mecánica básica ; este se realizara de manera virtual buscando fomentar entre los ciudadanos participantes,un conocimiento básico pero practico  buscando dar solución a problemas básicos', 'MODULO MECANICA BASICA', 1, '2020-06-14 03:30:28', '2020-06-14 01:30:28', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/UX_GyiwtwAQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación Mecánica Básica'),
(22, 11, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Uso y Manejo de Extintores; este se realizará de manera virtual buscando enseñar a los participantes, el manejo básico de un extintor y como poder identificar los tipos de fuego y los respectivos extintores que se deben usar para contrarrestar a los mismos.', 'MODULO MANEJO DE EXTINTORES Y CONTRAINCENDIOS', 1, '2020-06-14 03:07:02', '2020-06-14 01:07:02', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YdQndqfwX0c\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación Manejo de Extintores y contraincendios'),
(23, 12, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Primeros Auxilios, en este curso básico vamos a desarrollar las diferentes situaciones de los primeros auxilios; resaltaremos los principales tratamientos básicos de primeros auxilios y cómo manejar cada situación en caso de desastres.', 'MODULO PRIMEROS AUXILIOS', 1, '2020-06-02 04:25:11', '2020-06-02 04:25:11', '.', 'Evaluación Primeros Auxilios'),
(24, 13, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de manejo y almacenamiento de sustancias peligrosas,  este se realizará, con el fin de explicar al usuario, las normas y correctos manejos de las sustancias peligrosas, según su actividad.', 'MODULO TRANSPORTE DE SUSTANCIAS Y MERCANCÍAS PELIGROSAS, PLAN DE CONTINGENCIA ANTE DERRAME, CLASIFICACIÓN, ETIQUETADO Y ROTULADO DE NACIONAES UNIDAS', 1, '2020-06-02 04:39:03', '2020-06-02 04:39:03', '.', 'Evaluación Transporte de Sustancias y Mercancías Peligrosas Plan de Contingencia Ante Derrame, Clasificación, Etiquetado y Rotulado de Naciones Unidas'),
(25, 14, 'SURCOLOMBIANA DE ESTUDIOS SAS  le da la bienvenida a su curso de alistamiento vehicular,  este se realizará de manera virtual buscando guiar al usuario, sobre el alistamiento de  vehículos automotores, para prevenir supuestos inconvenientes de ese tipo en su día a día.', 'MODULO ALISTAMIENTO VEHICULAR', 1, '2020-06-14 00:49:39', '2020-06-13 22:49:39', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/LgvqzVGcnKc\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación Alistamiento Vehicular'),
(26, 15, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Control  de Emergencias en Derrames de Hidrocarburos este se realizará de manera virtual buscando entregar al usuario una herramienta efectiva  para el aprendizaje y las buenas practicas en caso de emergencia', 'MODULO CONTROL DE EMERGENCIAS EN DERRAMES DE HIDRCARBUROS', 1, '2020-06-14 15:12:23', '2020-06-14 13:12:23', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/orNKz_-Unr8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación Control de Emergencias en Derrames de Hidrocarburos'),
(27, 16, 'SURCOLOMBIANA DE ESTUDIOS S.A.S. le da la bienvenida a su curso de Atención al cliente,  este se realizará de manera virtual buscando entregar al usuario una herramienta efectiva que le permita socializar de mejor manera con sus clientes y obteniendo mejores resultados económicos en su negocio.', 'MODULO ATENCION AL CLIENTE', 1, '2020-06-14 14:32:20', '2020-06-14 12:32:20', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ejD34cB36aQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluacion Atención al Cliente'),
(28, 17, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Cooperativismo. Brindar las herramientas conceptuales, metodológicas y normativas que permitan el acceso equitativo a las oportunidades y beneficios del modelo solidario por parte de las personas, grupos o comunidades interesadas en crear y fortalecer organizaciones solidarias.', 'MODULO COOPERATIVISMO', 1, '2020-06-14 15:15:34', '2020-06-14 13:15:34', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/rfxO51Jw6OU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación Cooperativismo'),
(29, 18, 'SURCOLOMBIANA DE ESTUDIOS le da la bienvenida a su curso de Espacios Confinados; este se realizara de manera virtual buscando enseñar a los participantes, los aspectos básicos de un espacio confinado,  las normas necesarias para trabajar en un lugar así y el equipo adecuado para cumplir con dicha labor.', 'MODULO ESPACIOS CONFINADOS', 1, '2020-06-14 02:58:17', '2020-06-14 00:58:17', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/wPSogAbLmFY\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación Espacios Confinados'),
(30, 19, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Brigadistas (Contra Incendios); este se realizará de manera virtual buscando enseñar a los participantes, el uso adecuado de extintores portátiles que existen y su utilización mediante la práctica, y las diversas conductas adecuadas para enfrentar una situación de conato de incendio', 'MODULO BRIGADISTA (CONTRAINCENDIOS)', 1, '2020-06-14 01:44:21', '2020-06-13 23:44:21', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/IYcZf9uEJj8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación Brigadista (Contraincendios)'),
(31, 20, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Brigadista (Evacuación y rescate), curso para formar brigadistas integrales quienes responderán de acuerdo al incidente. Al finalizar el curso estarán en capacidad de responder frente a los escenarios de evacuación y rescate.', 'MODULO BRIGADISTA (EVACUACION Y RESCATE)', 1, '2020-06-14 20:32:17', '2020-06-14 18:32:17', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YWGRUqWwuRk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación Brigadista (Evacuación y Rescate)'),
(32, 21, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Brigadistas (Primeros Auxilios); este se realizará de manera virtual buscando enseñar a los participantes, prestar los primeros auxilios a los lesionados por la emergencia, solicitar ayuda a los servicios médicos y seguir las instrucciones del coordinador(a) de la brigada.', 'MODULO BRIGADISTA (PRIMEROS AUXILIOS)', 1, '2020-06-14 01:50:31', '2020-06-13 23:50:31', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/hBR8IeWVeLs\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación Brigadista (Primeros Auxilios)'),
(33, 22, 'SURCOLOMBIANA DE ESTUDIOS SAS  le da la bienvenida a su curso de Seguridad vial y Normas de Transito; este se realizará de manera virtual buscando enseñar a los participantes, Desde la comprensión y aplicación de ambos conceptos se puede repensar la seguridad vial con la intención de evitar la mortandad, morbilidad, gastos económicos privados y públicos, pérdidas potenciales de horas de vida, trabajo, estudio.', 'MODULO SEGURIDAD VIAL Y NORMAS DE TRANSITO', 1, '2020-06-02 12:58:46', '2020-06-02 12:58:46', 'https://www.youtube.com/watch?v=eWYs01QIiJc', 'Evaluación Seguridad Vial y Normas de Transito'),
(34, 24, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Actualización de normas de tránsito; este se realizará de manera virtual buscando fomentar entre los participantes, un cambio positivo en su comportamiento vial y desarrollando hábitos seguros, en el momento de encontrarse tras el volante de su vehículo.', 'MODULO ACTUALIZACION DE NORMAS DE TRANSITO', 1, '2020-06-10 22:27:47', '2020-06-10 20:27:47', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CeYi3tdUtZE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación Actualización de Normas de Transito'),
(35, 25, 'Por EMERGENCIA MÉDICA entendemos aquella situación en la que la falta de asistencia médica producirá la muerte del accidentado en muy pocos minutos.\nCualquier parada cardiorrespiratoria (fracaso de las funciones cardiaca y respiratoria, con la consiguiente incapacidad para hacer llegar sangre oxigenada a las células) es una situación de máxima emergencia ya que del tratamiento inmediato dependerá la vida del paciente.', 'MODULO PRIMEROS AUXILIOS - NIVEL AVANZADO', 1, '2020-06-02 13:39:35', '2020-06-02 13:39:35', '.', 'Evaluación Primeros Auxilios - Nivel Avanzado'),
(36, 26, 'La conducción de vehículos para transporte público de pasajeros registra situaciones desfavorables para la salud de los trabajadores. Colesterol, presión arterial, trastornos renales, hemorroides, sobrepeso, patologías en columna, representan efectos negativos para el personal.\nLos sistemas de rotación de turnos alteran el reloj biológico del trabajador, no respetan los ritmos naturales del organismo. Exposiciones a vibraciones mecánicas considerables pueden favorecer micro-politrumatismos repetitivos.', 'MODULO PRIMEROS AUXILIOS Y ERGONOMIA EN EL TRANSPORTE', 1, '2020-06-02 19:22:45', '2020-06-02 19:22:45', 'https://www.youtube.com/watch?v=sojGgs0Ye-8', 'Evaluación Primeros Auxilios y Ergonómica en el Transporte'),
(37, 27, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Rescate vertical en alturas; este se realizando de manera presencial l buscando fomentar los procedimiento y estándares establecido para un debido rescate', 'MODULO RESCATE VERTICAL EN ALTURAS', 1, '2020-06-03 03:54:17', '2020-06-03 03:54:17', 'https://www.arlsura.com/files/res1409_2012.pdf', 'Evaluación Rescate Vertical en Alturas'),
(38, 28, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Entrenamiento en sistemas de comando e incidentes; este se realizará de manera virtual buscando fomentar entre los ciudadanos participantes aplicando la combinación de instalaciones, equipamiento, personal, procedimientos, protocolos y comunicaciones, operado en una estructura organizacional común, con la responsabilidad de administrar los recursos asignados para lograr efectivamente los objetivos pertinentes a un evento, incidente u operativo.', 'MODULO ENTRENAMIENTO EN SISTEMAS DE COMANDOS E INCIDENTES', 1, '2020-06-14 02:33:10', '2020-06-14 00:33:10', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/BP2ZtfaIDOg\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación Entrenamiento en Sistemas de Comandos e Incidentes'),
(39, 29, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Primera Respuesta a Incidentes con Materiales Peligrosos. Esta capacitación le muestra al participante los conocimientos y habilidades para reconocer la presencia de materiales peligrosos en un incidente, identificarlos y ejecutar acciones iniciales para garantizar la seguridad personal, de terceros, de bienes y del ambiente.', 'MODULO PRIMERA RESPUESTA DE INCIDENTES CON MATERIALES PELIGROSOS', 1, '2020-06-14 21:57:49', '2020-06-14 19:57:49', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/JRN4dfwbd0I\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación Primera Respuesta de Incidentes con Materiales Peligrosos'),
(40, 30, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Respuesta y Atención De Emergencias Con Materiales Peligrosos. Durante cualquier etapa del ciclo de vida de las sustancias químicas peligrosas existe la posibilidadde enfrentarse asituaciones de emergencias,tales como incendios,explosiones,fugaso derrames. Estas emergencias se pueden prevenir aplicando normas legales y técnicas relacionadas conelmanejoadecuadode combustibles, equipos eléctricos,fuentes de calor y sustancias peligrosas, propias de la actividad económica de una organización Para dar pronta respuesta a una emergencia, la organización debe tener diseñado y planeado un Plan de Emergencia. Este es aquel en el cual se definen las políticas, la organización y los métodos, que indican la manera de enfrentar una situación de emergencia o desastre tanto en lo general como en lo particular. Su objetivo es proporcionar un conjunto de directrices e información destinadas a la adopción de procedimientos técnicos y administrativos estructurados para facilitar respuestas rápidas y eficientes en situaciones de emergencia. En términos generales, un plan debe tener las siguientes características.', 'MODULO RESPUESTA Y ATENCION DE EMERGENCIAS CON MATERIAL', 1, '2020-06-14 22:41:05', '2020-06-14 20:41:05', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/kboPKK1LYus\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación Respuesta y Atención de Emergencias con Materiales Peligrosos'),
(41, 31, 'SURCOLOMBIANA DE ESTUDIOS SAS  le da la bienvenida a su curso de Acondicionamiento de andamios para trabajo en alturas; este se realizará de manera virtual buscando enseñar a los participantes, que el Andamiero se define por su capacidad para medir el riesgo y cuidar de su seguridad y la de sus compañeros en todo momento, la rapidez de la toma de decisiones en las alturas y el razonamiento intuitivo que le evita cometer errores', 'MODULO ACONDICIONAMIENTO DE ANDAMIOS PARA TRABAJO EN ALTURAS', 1, '2020-06-10 19:26:11', '2020-06-03 04:57:03', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/jm2uQp1g3Z4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación Acondicionamiento de Andamios para Trabajo en Alturas'),
(42, 32, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Ergonomía; este se realizando de manera presencial y virtual buscando fomentar los procedimiento y estándares establecidos.', 'MODULO ERGONOMIA', 1, '2020-06-14 02:43:58', '2020-06-14 00:43:58', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sojGgs0Ye-8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evauación Ergonomía'),
(43, 33, 'El procesador de textos es una herramienta que permite crear todo tipo de documentos, aplicando distintos formatos, tipos de letras, colores y además permite darle un sello personal a los trabajos.\nEn este curso aprenderá a manejar las herramientas básicas del procesador de textos Word, al final del mismo usted deberá desarrollar con soltura y fluidez los distintos procedimientos para: Crear, almacenar y recuperar documentos, Editar textos, Incluir y modificar formatos de texto y párrafo, Utilizar y modificar tablas, Insertar imágenes e Imprimir documentos.', 'MODULO OFFICE  WORD', 1, '2020-06-14 03:43:16', '2020-06-14 01:43:16', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/pbvwCTld8BA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación Office - Word'),
(44, 34, 'Excel se ha convertido en una herramienta indispensable casi para cualquier sector profesional, con diferentes usos y numerosas opciones. Aprender o mejorar en el manejo las hojas de cálculo puede ser la clave que nos permita mejorar en nuestro trabajo. El Excel es un programa ofimático, es decir, para uso en entornos de oficina, que conforman el paquete de Microsoft Office. Es básico en infinidad de oficinas, independientemente cual sea su campo de acción. Se considera requisito indispensable para optar a numerosas vacantes de trabajo y el nivel necesario dependerá de las labores a desempeñar. Esta permite calcular, escribir, almacenar, organizar,… información tanto numérica como de texto. Una gran ventaja de su uso es la posibilidad de interconectar celdas en base a funciones o fórmulas, lo que agiliza enormemente el trabajo.', 'MODULO OFFICE - EXCEL', 1, '2020-06-14 21:23:17', '2020-06-14 19:23:17', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/yKWFMgurUnU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación Office - Excel'),
(45, 35, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienbenida a su curso de Office Power Point. El curso de PowerPoint, le permitirá desarrollar presentaciones para la enunciación de ideas, conceptos o proyectos, mediante la utilización de diapositivas con imágenes, textos, videos, animaciones, entre otros. Este pograma del paquete office, es gran importancia en el mundo académico, comercial, social, entre otros ámbitos, gracias a que es posible exponer cualquier tipo de información de manera fácil y dinámica, lo cual hace parte de las competencias integrales de todo profesional.', 'MODULO OFFICE POWER POINT', 1, '2020-06-14 21:26:19', '2020-06-14 19:26:19', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/pDfZOFtdF-A\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Evaluación Office - Power Point'),
(46, 38, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Seguridad vial y\nNormas de Transito; este se realizará de manera virtual buscando enseñar a los\nparticipantes, Desde la comprensión y aplicación de ambos conceptos se puede\nrepensar la seguridad vial con la intención de evitar la mortandad, morbilidad, gastos\neconómicos privados y públicos, pérdidas potenciales de horas de vida, trabajo, estudio.', 'SEGURIDAD VIAL Y NORMAS DE TRANSITO', 1, '2020-06-14 17:53:30', '2020-06-14 15:53:30', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/eWYs01QIiJc\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'PRUEBA DE CONOCIMIENTOS'),
(47, 39, 'SSURCOLOMBIANA DE ESTUDIOS SAS la da la bienvenida a su curso de Primeros Auxilios. Nivel Avanzado. Afianzar los conocimientos previos de Primeros Auxilios Básico y los protocolos de atención de emergencias para la atención de pacientes con posibles traumas. Afianzamiento práctico de los conocimientos adquiridos en el curso básico, sistemas de emergencias médicas en situaciones de emergencia (cadena de socorro y custodia). Traumas en cabeza, cuello, tórax, abdomen y pelvis, como atender un parto de emergencia. Primeros Auxilios psicológicos. Técnicas de supervivencia.', 'PRIMEROS AUXILIOS NIVEL AVANZADO', 1, '2020-06-14 22:04:09', '2020-06-14 20:04:09', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/29sJOBH_3mI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'PRIMEROS AUXILIOS NIVEL AVANZADO'),
(49, 40, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Rescate Vertical En Alturas. Establecer las actividades para dar respuesta a una emergencia en alturas, de manera tal que se asegure el rescate en forma organizada y segura de un funcionario, contratista o subcontratistas que quede suspendido o atrapado, a una altura de 1.5 m (hacia abajo o hacia arriba), garantizado el acceso, estabilización, descenso y traslado al centro de atención.', 'RESCATE VERTICAL EN ALTURAS', 1, '2020-06-14 22:32:45', '2020-06-14 20:32:45', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/wv1TvyLPNvw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'RESCATE VERTICAL EN ALTURAS'),
(50, 43, 'Señalización en General\n	Concepto.\n	Normas Generales.\n	Obediencia de las señales.\n	Prioridad de las señales sobre las normas y la prioridad de las señales entre sí.\nSeñalización Vertical Luminosa\n	Distintos tipos de señalización vertical luminosa\n	Qué debemos saber sobre las luces de los semáforos.\nRecomendaciones para una Conducción Segura\n	Factores que influyen en las aptitudes psicofísicas del conductor. \n	Efectos del alcohol.\n	Otras sustancias que afectan a la conducción. \n	Posición confortable y segura para la conducción. \n	Preparación de un viaje.\n	Desarrollo de un viaje. \n	Paradas, descansos, comidas. \n	Salidas al extranjero.\nAccidentes\n	Definición.\n	Obligaciones en caso de accidente.\n Primeros Auxilios\n	Socorrer.\n	Shock o colapso.\n	Asfixia.\n	Hemorragia.\n	Traslado de los heridos.', 'SEGURIDAD VIAL Y NORMAS DE TRANSITO', 1, '2020-06-12 17:27:03', '2020-06-12 17:27:03', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/eWYs01QIiJc\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'h'),
(51, 45, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Seguridad Vial; este se realizará de manera virtual buscando fomentar entre los participantes, un cambio positivo en su comportamiento vial y desarrollando hábitos seguros, en el momento de encontrarse tras el volante de su vehículo.', 'SEGURIDAD VIAL', 1, '2020-06-14 22:55:37', '2020-06-14 20:55:37', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CeYi3tdUtZE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'SEGURIDAD VIAL'),
(52, 47, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida al curso de Bioseguridad. El objetivo de este curso es definir lineamientos relacionados con el protocolo de bioseguridad para adoptar medidas necesarias frente al impacto del COVID-19, orientadas a disminuir el riesgo de transmisión del virus, garantizar la continuidad de las actividades y a la protección integral de las personas.', 'BIOSEGURIDAD', 1, '2020-06-14 14:39:51', '2020-06-14 12:39:51', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/x1xvTiZpkv0\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'BIOSEGURIDAD'),
(53, 48, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida al curso de Rescate en Espacios Confinados. El curso pretende desde un punto de vista eminentemente práctico, desarrollar los principales riesgos y procedimientos de trabajo en recintos/espacios confinados. Del mismo modo, se analizarán los protocolos de evacuación y emergencias dentro de los citados recintos. Curso teórico con el objetivo de dotar a alumno no sólo de los conocimientos necesarios en cuanto a normas generales y específicas de seguridad y prevención en trabajos realizados en espacios confinados sino también de una herramienta eficaz para la prevención de riesgos laborales.', 'RESCATE EN ESPACIOS CONFINADOS', 1, '2020-06-14 22:29:27', '2020-06-14 20:29:27', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/6HoABQ_i31M\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'RESCATE EN ESPACIOS CONFINADOS'),
(54, 42, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida a su curso de Primeros Auxilios, en este curso básico vamos a desarrollar las diferentes situaciones de los primeros auxilios; resaltaremos los principales tratamientos básicos de primeros auxilios y cómo manejar cada situación en caso de desastres', 'PRIMEROS AUXILIOS', 1, '2020-06-14 16:30:05', '2020-06-14 14:30:05', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-MTq2sZOCIs\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'PRIMEROS AUXILIOS'),
(55, 41, 'SURCOLOMBIANA DE ESTUDIOS SAS la da la bienvenida a su curso de Primeros Auxilios y ergonomía en el transporte.. La conducción de vehículos para transporte público de pasajeros registra situaciones desfavorables para la salud de los trabajadores. Colesterol, presión arterial, trastornos renales, hemorroides, sobrepeso, patologías en columna, representan efectos negativos para el personal. Los sistemas de rotación de turnos alteran el reloj biológico del trabajador, no respetan los ritmos naturales del organismo. Exposiciones a vibraciones mecánicas considerables pueden favorecer micro-politrumatismos repetitivos. Dificultades por el tránsito, trabajo en turnos rotativos, elevados niveles de exigencia, llevan a mantener un estado de alerta crónica. Es lo que se conoce como “estrés psicofísico”. Si no se interrumpe a tiempo, dicho estado puede constituir una puerta de entrada a enfermedades cardiovasculares, digestivas e inmunológicas. Una conducción saludable responde a causas sistémicas, no a factores aislados. Las soluciones de diseño ergonómico propuestas en este trabajo resultan de un análisis que contempla la multiplicidad de factores que intervienen y el examen de sus interrelaciones. En la actualidad la concepción de productos, entre ellos los vehículos, se plantea desde un “enfoque antropotécnico”. Ello implica considerar las capacidades, limitaciones y necesidades humanas y los recursos tecnológicos disponibles en cada circunstancia. Por lo tanto, un diseño ergonómico ha de poder brindar un nivel de satisfacción adecuado frente a diferentes variables. Algunas de ellas son: bienestar, economía, tecnología aplicada, calidad estética, duración, sencillez operativa, fácil mantenimiento y reparaciones. Por lo expuesto, la Ergonomía es una herramienta eficaz para coadyuvar al mejoramiento de la relación entre las personas, los equipos que éstas operan y el ambiente en que desarrollan sus actividades.', 'PRIMEROS AUXILIOS Y ERGONÓMICA EN EL TRANSPORTE', 1, '2020-06-14 22:09:31', '2020-06-14 20:09:31', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sojGgs0Ye-8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'PRIMEROS AUXILIOS Y ERGONÓMICA EN EL TRANSPORTE'),
(57, 46, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvendida al curso de respuesta y atención de Emergencias. Adquirir conocimientos generales sobre prevención, buscando su aplicación en la vida diaria. Sensibilización y Prevención: reconocimiento, clasificación y legislación de los desastres durante, el antes y el después. Organización y Planeación: inventarios, sistema de alerta temprana, análisis retrospectivo para identificar las amenazas y determinar el riesgo. Estrategias para la respuesta: cadenas de socorro, cadenas de intervención, comando de incidentes, simulación de un desastre, teniendo en cuenta los procesos de rehabilitación y recuperación.', 'RESPUESTA Y ATENCIÓN DE EMERGENCIAS', 1, '2020-06-14 22:37:30', '2020-06-14 20:37:30', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sRjSpRMqt6k\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'RESPUESTA Y ATENCIÓN DE EMERGENCIAS'),
(58, 44, 'SURCOLOMBIANA DE ESTUDIOS SAS le da la bienvenida al curso de Transporte de sustancias y mercancías peligrosas. Los conductores para el transporte de carga deben cumplir con un perfil en conducción que se caracteriza por tener una estructura que le permite prestar en el mercado nacional e internacional un servicio óptimo, de tal manera que esta formación se realiza para dar cumplimiento a lo dispuesto en la resolución 1223 del 12 de mayo de 2014, donde se establecen los elementos básicos para la ejecución de los procedimientos, la identificación de peligros, impactos, valoración y determinación de control de riesgos en la seguridad y salud del trabajo, lo que permitirá que el conductor y el equipo logístico que ha realizado toda la planificación de la operación, cuenten con objetivos, estrategias, metas y sistemas de evaluación y responsabilidades. A través de la formación, se busca que el participante mediante la práctica realice la validación de los conocimientos trasmitidos en cuanto a los requisitos técnicos y de seguridad que el conductor debe adquirir como habilidad en el manejo y transporte de mercancías peligrosas en vehículos automotores por las carreteras por del territorio nacional, lo que previene riesgos, garantiza la seguridad y protege la vida y el medio ambiente de acuerdo con lo establecido en el decreto 1609 de julio de 2002 y la Norma Técnica Colombiana 1692.', 'TRANSPORTE DE SUSTANCIAS PELIGROSAS Y MERCANCÍAS PELIGROSAS, PLAN DE CONTINGENCIA ANTE DERRAME, CLASIFICACIÓN, ETIQUETADO Y ROTULADO DE NACIONES UNIDAS', 1, '2020-06-30 15:09:50', '2020-06-30 13:09:50', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/kVIp_Z-oaN8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'TRANSPORTE DE SUSTANCIAS PELIGROSAS Y MERCANCÍAS PELIGROSAS, PLAN DE CONTINGENCIA ANTE DERRAME, CLASIFICACIÓN, ETIQUETADO Y ROTULADO DE NACIONES UNIDAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, 1, 'sfgsdgsdfg asdf asdf', 'BdISy9U6ZxTkTBHtUbtItxx466CExQwssMCkqqhD', 'http://jdflsdjflsdf.com', 0, 0, 0, '2020-05-14 08:20:31', '2020-05-14 08:20:31'),
(2, 1, 'prueba_cliente', 'TPF1FECedEYE4pJlwFNq4FbNsoiVK0jmxoZxDKQp', 'http://localhost/sssss.php', 0, 0, 0, '2020-05-28 10:53:21', '2020-05-28 10:53:21'),
(3, NULL, 'Laravel Personal Access Client', 'SBQH725f1ezShD6nhfPHzE0veejKo7bsppD2j1KD', 'http://localhost', 1, 0, 0, '2020-05-28 17:49:10', '2020-05-28 17:49:10'),
(4, NULL, 'Laravel Password Grant Client', 'V3aTYAvLqHn8L5Lgw5d3znvqvu9CHxAwtDYpvfMy', 'http://localhost', 0, 1, 0, '2020-05-28 17:49:11', '2020-05-28 17:49:11'),
(5, NULL, 'Laravel Personal Access Client', 'YU4k47tyxdglhvVTJSb6MDmCLeLko5CoxnVbSF8N', 'http://localhost', 1, 0, 0, '2020-05-28 19:44:33', '2020-05-28 19:44:33'),
(6, NULL, 'Laravel Password Grant Client', 'x4IKwYmYSNmLFlOAF3wem3nICQL4Hsd4ZteEWRpZ', 'http://localhost', 0, 1, 0, '2020-05-28 19:44:33', '2020-05-28 19:44:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 3, '2020-05-28 17:49:10', '2020-05-28 17:49:10'),
(2, 5, '2020-05-28 19:44:33', '2020-05-28 19:44:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('dalilab86@hotmail.com', '$2y$10$Bj4S4BuX/S2tzawAdFiQD.oA2T0MkYfEWpie/9lnQd8Qy4c8xre/y', '2020-06-10 22:32:23'),
('jaimepazos751@gmail.com', '$2y$10$mWfF0G9PUkruSt.iWz7/tuN/4UiFXLlj6imhvIKPKMuINaUIHOd4W', '2020-07-07 22:19:49'),
('jhordi96@hotmail.com', '$2y$10$/t4VZ.FGw3lPqOTwTVmERuUb0Rkh9J76jX2KAQeEmKMe/3U2HXsuK', '2020-10-14 14:35:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL,
  `id_modulo` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  `pregunta` text COLLATE utf8_spanish2_ci NOT NULL,
  `a` text COLLATE utf8_spanish2_ci NOT NULL,
  `b` text COLLATE utf8_spanish2_ci NOT NULL,
  `c` text COLLATE utf8_spanish2_ci NOT NULL,
  `d` text COLLATE utf8_spanish2_ci NOT NULL,
  `e` text COLLATE utf8_spanish2_ci NOT NULL,
  `f` text COLLATE utf8_spanish2_ci NOT NULL,
  `respuesta` varchar(1) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `id_modulo`, `tipo`, `pregunta`, `a`, `b`, `c`, `d`, `e`, `f`, `respuesta`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Primera pregunta de prueba tipo seleccion multiple', 'Primera opción', 'Segunda opción', 'Tercera opción', 'Cuarta opción', '', '', 'b', '2020-05-30 14:46:26', '2020-05-30 14:46:26'),
(2, 1, 2, 'Esta es una pregunta falso verdadero', '', '', '', '', '', '', 'V', '2020-05-30 14:46:26', '2020-05-30 14:46:26'),
(4, 2, 1, 'Esta es una pregunta de seleccion multiple', 'Opcion de respuesta A', 'Opcion de respuesta A', 'Opcion de respuesta C', 'Opcion de respuesta D', '', '', 'b', '2020-05-31 19:31:46', '2020-05-31 19:31:46'),
(6, 2, 2, 'Primera pregunta false o verdadero', '', '', '', '', '', '', 'F', '2020-05-31 20:00:17', '2020-05-31 20:00:17'),
(7, 3, 1, '¿Qué es el COPASST?', 'Es el comité paritario y su obligación es eliminar los riesgos', 'Identifica los accidentes de trabajo y las enfermedades profesionales', 'Completo bienestar de los trabajadores y reglamenta la medicina y la higiene según la norma', 'El comité paritario de Seguridad y Salud en el Trabajo es el organismo que debe velar por la promoción y vigilancia de las normas y reglamentos de salud ocupacional dentro de la empresa minimizando los riesgos profesionales', '', '', 'd', '2020-06-06 23:17:42', '2020-06-01 04:16:31'),
(8, 3, 1, 'Todas las empresas e instituciones públicas o privadas que tengan a su servicio 10 o más trabajadores, están obligadas a conformar un Comité Paritario de Salud Ocupacional (COPASST). Según la resolución', 'Resolución 2013 de 1986', 'Resolución 1295 de 1994', 'Resolución 1016 de 1989', 'Resolución 1072 de 2015', '', '', 'a', '2020-06-06 23:18:24', '2020-06-01 04:17:48'),
(9, 3, 1, '¿Cuál es el periodo de vigencia del Copasst?', '3 años', '2 años', '1 año', '6 meses', '', '', 'b', '2020-06-06 23:19:03', '2020-06-01 04:19:04'),
(10, 3, 1, '¿Cuál de las siguientes NO es una función que cumple el comité paritario de seguridad y salud en el trabajo?', 'Participar de las actividades de promoción, divulgación e información, del sistema de gestión de la seguridad y salud en el trabajo y de las actividades sobre medicina, higiene y seguridad industrial entre patronos y trabajadores, para obtener su participación activa en el desarrollo de los programas y actividades de Seguridad y Salud en el Trabajo de la empresa', 'Recibir copias, por derecho propio, de las conclusiones sobre inspecciones e investigaciones que realicen las autoridades de Seguridad y Salud en el Trabajo en los sitios de trabajo', 'Archivar y administrar toda la documentación del Sistema de Gestión de Seguridad y Salud en el Trabajo garantizando su disponibilidad y conservación en conjunto con el área administrativa', 'Vigilar el desarrollo de las actividades que en materia de medicina, higiene y seguridad industrial debe realizar la empresa de acuerdo con el Reglamento de Higiene y Seguridad Industrial y las normas vigentes; promover su divulgación y observancia', '', '', 'c', '2020-06-06 23:19:43', '2020-06-01 04:20:14'),
(11, 3, 1, '¿Cuál es la sanción para las empresas que no conformen el COPASST?', '(500) salarios mínimos mensuales legales vigentes', '(200) salarios mínimos mensuales legales vigentes', '(100) salarios mínimos mensuales legales vigentes', '(50) salarios mínimos mensuales legales vigentes', '', '', 'a', '2020-06-06 23:20:22', '2020-06-01 04:23:26'),
(12, 3, 1, 'El siguiente enunciado “Tramitar ante la administración de la empresa las recomendaciones aprobadas en el seno del Comité y darle a conocer todas sus actividades” hace parte de las funciones de:', 'Presidente', 'Secretario', 'Vicepresidente', 'Gerente', '', '', 'a', '2020-06-06 23:20:41', '2020-06-01 04:25:32'),
(13, 3, 1, 'Suceso ocurrido en el curso del trabajo o en relación con este, que tuvo el potencial de ser un accidente, el cual hubo personas involucradas sin que sufrieran lesiones o se presentaran daños a la prioridad y/o perdida en los procesos, es la definición de:', 'Incidente de trabajo', 'enfermedad laboral', 'Accidente laboral', 'Accidente grave', '', '', 'a', '2020-06-06 23:21:16', '2020-06-01 04:26:55'),
(14, 3, 1, 'Suceso repentino que se sobrevenga por causa o con ocasión del trabajo, que produzca en el trabajador una lesión orgánica, una perturbación funcional o psiquiátrica, una invalidez o la muerte', 'Incidente de trabajo', 'Enfermedad profesional', 'Enfermedad laboral', 'Accidente de trabajo', '', '', 'd', '2020-06-06 23:21:55', '2020-06-01 04:45:07'),
(15, 3, 1, 'El comité de investigación de accidentes se encuentra conformado por', 'Jefe inmediato o supervisor de área', 'Responsable del COPASST o vigía', 'Encargado del SG-SST', 'Todos los anteriores', '', '', 'd', '2020-06-06 23:22:31', '2020-06-01 04:47:30'),
(16, 3, 1, 'Cuáles son las fases que permite desarrollar el SG-SST?', 'Planear, cumplir, verificar, actuar', 'Planear, hacer, cumplir, verificar', 'Planear, hacer, verificar y actuar', 'Cumplir, hacer, actuar, verificar', '', '', 'c', '2020-06-06 23:22:55', '2020-06-01 04:48:42'),
(17, 3, 1, 'El siguiente enunciado “Es un conjunto de normas que rigen la vinculación de los individuos y las familias al sistema general de seguridad social en salud, cuando tal vinculación se hace a través del pago de una cotización, individual y familiar, o un aporte económico previo financiados directamente por el afiliado o entre este y su empleador” pertenece a:', 'Régimen contributivo', 'Régimen subsidiado', 'Régimen gubernamental', '', '', '', 'a', '2020-06-06 23:23:36', '2020-06-01 04:49:44'),
(18, 3, 1, 'Aclara la necesidad de evaluar la tabla de enfermedades profesionales cada tres años, según el Fondo de Riesgos Laborales y el Consejo de Riesgos Laborales. Incluye además la posibilidad de encontrar enfermedades profesionales no incluidas en la tabla reglamentada, pero que guardan relación de causalidad con el medio o los factores de riesgo en los que trabaja el afiliado.', 'Incidente de trabajo', 'Enfermedad profesional', 'Enfermedad laboral', 'Accidente de trabajo', '', '', 'c', '2020-06-06 23:24:02', '2020-06-01 04:50:56'),
(19, 3, 1, '¿Cuáles son las fases del sistema de gestión de seguridad y salud en el trabajo?', 'Fase de evaluación inicial, Plan de mejoramiento, Ejecución del SG-SST, Seguimiento y plan de mejora, Inspección, vigilancia y control', ' Fase de evaluación inicial, Plan de mejoramiento, Ejecución del SG-SST, Seguimiento y plan de mejora, Inspección, vigilancia y prevención', 'Fase de evaluación inicial, Plan de mejoramiento, Ejecución del SG-SST, Seguimiento y plan de mejora, verificación , vigilancia y control', 'Fase de evaluación inicial, Plan de mejoramiento, Ejecución del SG-SST, Seguimiento y plan de mejora, verificación, vigilancia y prevención', '', '', 'a', '2020-06-06 23:24:55', '2020-06-01 04:51:57'),
(20, 3, 1, '¿Qué es SG-SST?', 'Disciplina que trata de prevenir las lesiones y las enfermedades causadas por las condiciones de trabajo, además de la protección y promoción de la salud de los empleados.', 'Actividades de promoción, divulgación e información, del sistema de gestión de la seguridad y salud en el trabajo y de las actividades sobre medicina, higiene y seguridad industrial entre patronos y trabajadores, para obtener su participación activa en el desarrollo de los programas y actividades de Seguridad y Salud en el Trabajo de la empresa', 'Multidisciplina en asuntos de protección, seguridad, salud y bienestar de las personas involucradas en el trabajo. Los programas de seguridad e higiene industrial buscan fomentar un ambiente de trabajo seguro y saludable. El SySO también incluye protección a los compañeros de trabajo, familiares, empleadores, clientes, y otros que podan ser afectados por el ambiente de trabajo.', '', '', '', 'a', '2020-06-06 23:25:51', '2020-06-01 04:54:08'),
(21, 3, 1, '¿En temas de Seguridad y Salud en el Trabajo, qué significa la sigla PILA?', 'Planilla integrada de liquidación de aportes', 'Planilla integra de liquidación de accidentes', 'Plan Internacional de Lugares de Accidentes', 'Planilla Integrada de Accidentes Laborales', '', '', 'a', '2020-06-06 23:26:25', '2020-06-01 04:55:18'),
(22, 3, 2, 'las reuniones del Comité solo asistirán los miembros principales, los suplentes asistirán por ausencia de los principales y serán citados a las reuniones por el Presidente del Comité Paritario de Seguridad y Salud en el Trabajo COPASST', '', '', '', '', '', '', 'V', '2020-06-01 04:56:00', '2020-06-01 04:56:00'),
(23, 3, 2, 'Los miembros del Comité Paritario de Seguridad y Salud en el Trabajo COPASST se reunirán cada 2 meses en la empresa y durante el horario de trabajo, adicional a ello el empleador se obligará a proporcionar, cuando menos, cuatro horas semanales dentro de la jornada normal de trabajo de cada uno de sus miembros para el funcionamiento del comité (actividades, inspecciones, etc.).', '', '', '', '', '', '', 'F', '2020-06-01 04:56:30', '2020-06-01 04:56:30'),
(24, 3, 2, 'Las empresas de menos de 10 trabajadores deben tener comité paritario de Seguridad y Salud en el Trabajo (Copasst), quien cumplirá las diferentes funciones', '', '', '', '', '', '', 'F', '2020-06-01 04:56:49', '2020-06-01 04:56:49'),
(25, 3, 2, 'Los estudiantes que realizan su pasantía y cuyo trabajo significa ingresos para la institución educativa o que es necesario para su grado, se consideran nuevos cotizantes.', '', '', '', '', '', '', 'V', '2020-06-01 04:57:46', '2020-06-01 04:57:46'),
(26, 3, 2, 'Según el decreto 1703 de 2002, todo trabajador dependiente, o independiente debe afiliarse al Sistema de Seguridad Social.', '', '', '', '', '', '', 'V', '2020-06-01 04:58:35', '2020-06-01 04:58:35'),
(27, 4, 1, 'Para identificar el estado de salud de los trabajadores durante la ejecución de sus labores se hace necesario realizar', 'Exámenes médicos ocupacionales de ingreso', ' Exámenes médicos ocupacionales periodos', 'Encuesta sociodemográfica', 'Exámenes médicos', '', '', 'b', '2020-06-06 23:29:12', '2020-06-01 05:10:14'),
(28, 4, 1, 'Aclara la necesidad de evaluar la tabla de enfermedades profesionales cada tres años, según el Fondo de Riesgos Laborales y el Consejo de Riesgos Laborales. Incluye además la posibilidad de encontrar enfermedades profesionales no incluidas en la tabla reglamentada, pero que guardan relación de causalidad con el medio o los factores de riesgo en los que trabaja el afiliado', 'Incidente de trabajo', 'Enfermedad profesional', 'Enfermedad laboral', 'Accidente Laboral', '', '', 'c', '2020-06-06 23:29:28', '2020-06-01 05:11:10'),
(29, 4, 1, 'Los accidentes no ocupacionales podrían entenderse como:', 'Son aquellos que no son producidos directamente por la realización de un trabajo específico, sino como consecuencia posterior del mismo (por ejemplo intoxicaciones por inhalación de sustancias nocivas, afecciones respiratorias, afecciones en la piel, etc.).', 'Aquellos accidentes que ocurren dentro del horario laboral.', 'El incumplimiento de utilizar los EPP al momento de realizar sus actividades en el trabajo.', 'B y C son correctas.', '', '', 'a', '2020-06-06 23:29:49', '2020-06-01 05:13:26'),
(30, 4, 1, 'Es la especialidad médica que estudia los medios para conseguir el más alto grado posible de bienestar físico, psíquico y social de los trabajadores, en relación con la capacidad de estos, con los características y riesgos de su trabajo, el ambiente laboral y la influencia de este su entorno; así como promueve los medios para el diagnóstico, tratamiento, adaptación, rehabilitación.', 'Medicina del trabajo', 'Medicina preventiva', 'Enfermedad profesional', 'Enfermedad laboral', '', '', 'a', '2020-06-06 23:30:08', '2020-06-01 05:14:21'),
(31, 4, 1, 'Especialidad médica reconocida por la Junta Americana de Especialidades Médicas (ABMS).', 'Medicina del trabajo', 'Medicina preventiva', 'Enfermedad profesional', 'Enfermedad laboral', '', '', 'b', '2020-06-06 23:30:28', '2020-06-01 05:15:50'),
(32, 4, 1, 'Por medio de la cual se adoptan medidas para prevenir, corregir y sancionar el acoso laboral y otros hostigamientos en el marco de las relaciones de trabajo', 'Ley 1010 de 2006', 'Resolución 1075 de 1992', 'Res. 1918 de 2009', 'Decreto 1010 de 2016', '', '', 'a', '2020-06-06 23:30:50', '2020-06-01 05:16:43'),
(33, 4, 1, 'Las siguientes siglas (ABMS) significan', 'Junta americana de especialidades médicas', 'Junta mundial de especialidades médicas', 'Junta americana de especialidades preventivas', 'Junta americana de especialidad en salud', '', '', 'a', '2020-06-06 23:31:34', '2020-06-01 05:17:49'),
(34, 4, 1, 'La medicina del trabajo es:', 'Es la especialidad médica que estudia los medios preventivos para conseguir el más alto grado posible de bienestar físico, psíquico y social de los trabajadores, en relación con la capacidad de estos, con los características y riesgos de su trabajo, el ambiente laboral y la influencia de este su entorno; así como promueve los medios para el diagnóstico, tratamiento, adaptación, rehabilitación y calificación de la patología producida o condicionada por el trabajo (OMS).', 'Se define como las prácticas médicas que están diseñados para prevenir y evitar la enfermedad. Por ejemplo, detectar precozmente la hipertensión y tratarla antes de que cause la enfermedad es una buena medicina preventiva. La medicina preventiva tiene un enfoque proactivo para la atención al paciente', 'Mediante actividades de Promoción de la Salud y Prevención de la Enfermedad como dos conceptos inseparables y complementarios que son; pues, la promoción hace referencia al estímulo de los factores protectores para la salud en la población, representados en el fomento de Estilos de Vida Saludables y Seguros, y la Prevención está relacionada con el control e intervención de los Factores de Riesgo de las enfermedades, se pretende contribuir al bienestar de los miembros de la comunidad universitaria', '', '', '', 'a', '2020-06-06 23:32:00', '2020-06-01 05:30:49'),
(35, 4, 1, '¿De qué se encarga la medicina preventiva y del trabajo?', 'Esta se ocupa de la evolución, promoción, prevención y mejoramiento de salud de los trabajadores.', 'Esta se ocupa de la evolución, promoción, mantenimiento y mejoramiento de salud de los trabajadores.', 'Esta se ocupa de la prevención, promoción, mantenimiento y mejoramiento de salud de los trabajadores', 'Esta se ocupa de la evolución, promoción, y mejoramiento de salud de los trabajadores', '', '', 'b', '2020-06-06 23:32:38', '2020-06-01 05:32:42'),
(36, 4, 1, 'Cuando hablamos de reubicación laboral nos referimos a:', 'La empresa en coordinación con la ARL, adelantara los trámites para reubicar al trabajador con directorio de la salud por exposición a un determinado factor de riesgo presente en la empresa y que a pesar de las medidas de control tomadas este presentando agravamiento de su patología', ' La empresa en coordinación con la EPS, adelantara los trámites para reubicar al trabajador de acuerdo con sus capacidades físicas, por para prevenir a un determinado factor de riesgo presente en la empresa y que a pesar de las medidas de control tomadas este presentando agravamiento de su patología', 'La empresa en coordinación con la ARL, adelantara los trámites para realizarle exámenes médicos al trabajador con directorio de la salud por exposición a un determinado factor de riesgo presente en la empresa y que a pesar de las medidas de control tomadas este presentando agravamiento de su patología', '', '', '', 'a', '2020-06-06 23:33:19', '2020-06-01 05:33:42'),
(37, 4, 1, 'El siguiente enunciado “Se establecerá la realización de exámenes de pre ingreso, periódicas y de retiro con base en los diferentes cargos y el panorama de riesgos respectivos; para tal fin se diligenciará Historia clínica Ocupacional previo diseño de los perfiles psico-fisiológicos” pertenece a:', 'Diagnóstico de salud', 'Sistemas de vigilancia epidemiológica', 'Primeros Auxilios', 'Evaluaciones Médicas', '', '', 'd', '2020-06-06 23:33:57', '2020-06-01 05:34:38'),
(38, 4, 1, 'El siguiente enunciado “Intenta disminuir la probabilidad de que ocurran enfermedades “pertenece a', 'Medicina primaria', 'Medicina secundaria', 'Medicina terciaria', 'Primeros Auxilios', '', '', 'a', '2020-06-06 23:35:02', '2020-06-01 05:35:44'),
(39, 4, 1, '¿Cuáles son los métodos de la medicina preventiva?', 'Inmunizaciones Preventivas, Quimio prevención, Educación Sanitaria', ' Inmunizaciones Preventivas, Quimio prevención, Educación ocupacional', 'Inmunizaciones Preventivas, Quimio educación , Educación Sanitaria', 'Inmunizaciones , Quimio prevención, Educación Sanitaria', '', '', 'a', '2020-06-06 23:35:36', '2020-06-01 05:36:51'),
(40, 4, 2, 'plicando el programa de medicina preventiva “La calidad de vida de los trabajadores aumenta y su fidelidad a la empresa mejora', '', '', '', '', '', '', 'V', '2020-06-01 05:37:13', '2020-06-01 05:37:13'),
(41, 4, 2, 'Medicina del trabajo o Medicina ocupacional es la rama de la medicina que se ocupa de la prevención y tratamiento de enfermedades y lesiones que ocurren en el trabajo o en ocupaciones específicas. Una enfermedad profesional es aquella que se asocia a una determinada ocupación y se produce en el lugar de trabajo. Hay profesiones que están asociadas a mayores riesgos de salud, por ejemplo minería', '', '', '', '', '', '', 'V', '2020-06-01 05:37:31', '2020-06-01 05:37:31'),
(42, 4, 2, '“EL programa de medicina preventiva y de trabajo tiene como finalidad la promoción, prevención de la salud de los servidores públicos frente a los factores de riesgo laborales, también recomienda lugares óptimos de trabajo a las condiciones psicofisiológicas del empleado con el fin de que este pueda desarrollar sus actividades sin dificultad.”', '', '', '', '', '', '', 'V', '2020-06-01 05:37:53', '2020-06-01 05:37:53'),
(43, 4, 2, 'En las actividades de Vigilancia epidemiológica, Se definen estrategias, procedimientos y recursos destinados a detectar la presencia de indicadores de enfermedad y efecto en los trabajadores, así como las concentraciones de los contaminantes en los ambientes de trabajo, las condiciones en las que se maneja, los hábitos de los trabajadores, el uso de los elementos de protección individual y otros aspectos relacionados con la exposición ocupacional.', '', '', '', '', '', '', 'V', '2020-06-01 05:46:33', '2020-06-01 05:46:33'),
(44, 4, 2, 'En actividades de exámenes médicos, clínicos y paraclínicos para admisión, se desarrollan actividades de promoción y prevención en salud', '', '', '', '', '', '', 'F', '2020-06-01 05:47:16', '2020-06-01 05:47:16'),
(45, 4, 2, 'El alcance de la medicina preventiva, recoge a todos los trabajadores de LA EMPRESA, desde su vinculación con la empresa hasta su retiro, con el fin de cuidar y proteger su salud durante su estadía en la empresa.', '', '', '', '', '', '', 'F', '2020-06-01 05:48:14', '2020-06-01 05:48:14'),
(46, 4, 2, 'La gerencia no hace parte ni se integra en actividades de Medicina Preventiva, ya que para eso contrata profesional idóneo en esa área.', '', '', '', '', '', '', 'F', '2020-06-01 05:48:34', '2020-06-01 05:48:34'),
(47, 5, 1, 'La higiene industrial es:', 'Medidas que se toman implementando los elementos de protección de seguridad para evitar accidentes', ' Ciencia y arte dedicados al reconocimiento, evaluación y control de aquellos factores ambientales o tensiones emanados o provocados por el lugar de trabajo y que pueden ocasionar enfermedades, destruir la salud y el bienestar o crear algún malestar significativo entre los trabajadores o los ciudadanos de una comunidad.', 'Área multidisciplinaria que se encarga de minimizar los riesgos en la industria.', '', '', '', 'b', '2020-06-06 23:38:28', '2020-06-01 05:53:33'),
(48, 5, 1, 'Las fases del esquema metodológico en higiene y seguridad industrial son:', 'Identificación, medición, evaluación y control', 'Identificación, control, evaluación y verificación', 'Verificación, identificación, medición y evaluación', 'Evaluación, control, evaluación y verificación', '', '', 'a', '2020-06-06 23:38:55', '2020-06-01 05:55:03'),
(49, 5, 1, 'La higiene industrial tiene diferentes ramas dentro de las cuales podemos mencionar:', 'Higiene operativa, analítica, de campo y teórica.', 'Higiene de difusión, de campo, analítica y teórica', 'Higiene de sustitución, de evaluación, de control y de operación.', 'La higiene industrial no tiene ningún tipo de ramas.', '', '', 'a', '2020-06-06 23:42:05', '2020-06-01 05:56:59'),
(50, 5, 1, '¿La higiene industrial tiene diferentes ramas dentro de las cuales podemos mencionar?', 'Higiene teórica, higiene de campo, higiene analítica, higiene operativa', ' Higiene teórica, higiene de campo, higiene analítica, higiene preventiva', 'Higiene teórica, higiene práctica, higiene analítica, higiene operativa', 'Higiene teórica, higiene práctica, higiene analítica, higiene preventiva', '', '', 'a', '2020-06-06 23:44:57', '2020-06-01 06:00:53'),
(51, 5, 1, '¿Qué mide habitualmente la higiene industrial?', 'Iluminación, ruido, temperatura', 'Iluminación, gas, temperatura', 'Iluminación, ruido, radiaciones', 'Iluminación, ruido, radiaciones', '', '', 'a', '2020-06-06 23:45:44', '2020-06-01 06:05:24'),
(52, 5, 1, '¿Qué previene la higiene industrial?', 'Aparición de enfermedades profesionales', 'Aparición de enfermedades laborales', 'Aparición de enfermedades cardiacas', 'Aparición de factores de riesgos', '', '', 'a', '2020-06-06 23:46:38', '2020-06-01 06:09:21'),
(53, 5, 1, 'Es la que estudia los problemas higiénicos en el ambiente de trabajo, recogiendo datos y muestras que permiten evaluar los riesgos', 'Higiene analítica', 'Higiene de campo', 'Higiene operativa', 'Higiene teórica', '', '', 'b', '2020-06-06 23:47:01', '2020-06-01 06:11:19'),
(54, 5, 1, '¿Cuál es la principal característica principal de la higiene industrial?', 'Identificar cuáles son los contaminantes que pueden afectar la salud del trabajador', ' Identificar cuáles son los contaminantes que pueden afectar el trabajador', 'Identificar cuáles son los riesgos que pueden afectar la salud del trabajador', 'Identificar cuáles son los riesgos que pueden afectar la salud del trabajador', '', '', 'a', '2020-06-06 23:48:07', '2020-06-01 06:13:54'),
(55, 5, 2, 'La higiene industrial se caracteriza por identificar cuáles son los contaminantes que pueden afectar la salud del trabajador', '', '', '', '', '', '', 'V', '2020-06-01 06:15:27', '2020-06-01 06:15:27'),
(56, 5, 2, 'Para evitar que se produzca un daño a la salud, la Higiene Industrial es la disciplina preventiva que estudia las condiciones de salud de los trabajadores identificando, evaluando y controlando los contaminantes de origen laboral.', '', '', '', '', '', '', 'F', '2020-06-01 06:16:08', '2020-06-01 06:16:08'),
(57, 5, 2, 'Sus actividades comprenden las acciones de mejora, evaluación, análisis de riesgos ocupacionales y las recomendaciones específicas para su control, a través de la elaboración de panoramas de riesgo, visitas de inspección a las áreas de trabajo, mediciones ambientales y asesoría técnica', '', '', '', '', '', '', 'F', '2020-06-01 06:16:28', '2020-06-01 06:16:28'),
(58, 5, 2, 'La implementación adecuada de la higiene analiza y crea cambios en el ambiente físico, biológico o químico de trabajo, para lograr prevenir la aparición de riesgos laborales.', '', '', '', '', '', '', 'F', '2020-06-01 06:16:53', '2020-06-01 06:16:53'),
(59, 5, 2, 'El objetivo de la higiene industrial es mejorar las condiciones del ambiente laboral a través de la observación y regulación de factores de humedad, ventilación, temperatura, malas posturas, ruidos, esfuerzos oculares, etc', '', '', '', '', '', '', 'V', '2020-06-01 06:17:17', '2020-06-01 06:17:17'),
(60, 5, 2, 'La actuación en Higiene Industrial se basa en un esquema metodológico que es aplicable a cualquier situación en la que un contaminante pueda encontrarse en el medio ambiente laboral', '', '', '', '', '', '', 'V', '2020-06-01 06:17:48', '2020-06-01 06:17:48'),
(61, 5, 2, 'La profesión que se dedica específicamente a la prevención y control de las enfermedades originadas por los procesos de trabajo es la higiene industrial.', '', '', '', '', '', '', 'F', '2020-06-01 06:18:00', '2020-06-01 06:18:00'),
(62, 5, 2, 'Los objetivos de la higiene industrial son la prevención y promoción de la salud de los trabajadores, la protección del medio ambiente y la contribución a un desarrollo seguro y sostenible', '', '', '', '', '', '', 'F', '2020-06-01 06:19:46', '2020-06-01 06:19:46'),
(63, 5, 2, 'Cuando hablamos de higiene industrial, ¡también nos estamos refiriendo a la seguridad laboral?', '', '', '', '', '', '', 'V', '2020-06-01 06:20:07', '2020-06-01 06:20:07'),
(64, 5, 2, 'Para evitar riesgos, la relación de empresarios y trabajadores, ¿Debería ser una relación laboral respeto, basada en la ética?', '', '', '', '', '', '', 'V', '2020-06-01 06:20:31', '2020-06-01 06:20:31'),
(65, 5, 2, 'Cuando hablamos de higiene industrial también nos estamos refiriendo a la seguridad laboral. En nuestro país y en cualquiera que tenga empresas en su territorio, es importante destacar la labor que realizan todos los operarios y trabajadores en ellas. No importa la categoría o el tipo de trabajo que tengan. Lo importante es que su labor es fundamental para crear un producto que va destinado a su comercialización, venta y recepción por parte de un comprador o cliente.', '', '', '', '', '', '', 'V', '2020-06-01 06:20:48', '2020-06-01 06:20:48'),
(66, 6, 1, 'La seguridad industrial puede definirse como:', 'Arte que se encarga de mejorar las condiciones de trabajo.', 'Área multidisciplinaria que se encarga de minimizar los riesgos en la industria. Parte del supuesto de que toda actividad industrial tiene peligros inherentes que necesitan de una correcta gestión', 'A y D son correctas', 'Área que cuenta con un sistema estadístico que permita detectar el avance o disminución de los accidentes y la causa de los', '', '', 'b', '2020-06-07 00:01:46', '2020-06-01 06:25:02'),
(67, 6, 1, '¿Cuántas son las reglas más importantes de la seguridad industrial?', '5', '12', '15', '3', '', '', 'b', '2020-06-07 00:02:43', '2020-06-01 06:26:23'),
(68, 6, 1, '¿Cómo se califica el riesgo?', 'Medio, alto, bajo', 'Medio, alto, cero', 'Medio, cero, bajo', 'cero, alto, bajo', '', '', 'a', '2020-06-07 00:03:00', '2020-06-01 06:27:33'),
(69, 6, 1, 'Los accidentes de trabajo ocurren por dos grupos de causas inmediatas, identifique cuales de los siguientes son aquellos dos grupos', 'Falta de guardas sobre poleas y engranes; falta de protección contra incendio, estructuras o instalaciones que no son adecuadas al tipo de trabajo que se realiza.', 'Falta de guardas sobre poleas, estructuras o instalaciones que no son adecuadas al tipo de trabajo que se realiza', 'Falta de poleas y engranes; protección contra incendio, estructuras o instalaciones que no son adecuadas al tipo de trabajo que se realiza.', '', '', '', 'a', '2020-06-07 00:03:25', '2020-06-01 06:28:29'),
(70, 6, 1, '¿Cuáles son los tipos de riesgos industriales?', 'Riesgos Físicos, Radiaciones ionizantes, Riesgos Químicos, Riesgos Biológicos, Riesgos Ergonómicos, Riesgos Psicosociales, Riesgos Mecánicos, Riesgos Ambientales', 'Riesgos de caídas a alto y bajo nivel, riesgos exponenciales y Riesgos Locativos', 'Riesgos personales y riesgos empresariales', 'Riesgos Físicos, riesgos mecánicos y riesgos Ambientales', '', '', 'a', '2020-06-07 00:04:22', '2020-06-01 06:29:29'),
(71, 6, 1, '¿Cuál es el equipo esencial de seguridad industrial?', 'Guantes, botas de seguridad, casco', 'Guantes, botas de seguridad, tapa oídos', 'Guantes, casco, botas de seguridad, tapa oídos', 'Guantes, tapabocas, botas de seguridad', '', '', 'a', '2020-06-07 00:05:44', '2020-06-01 06:30:30'),
(72, 6, 2, 'El objetivo de la seguridad e higiene industrial es prevenir los accidentes laborales, los cuales se producen como consecuencia de las actividades de producción, por lo tanto, una producción que no contempla las medidas de seguridad e higiene no es una buena producción. Una buena producción debe satisfacer las condiciones necesarias de los tres elementos indispensables, seguridad, productividad y calidad de los productos. Por tanto, contribuye a la reducción de sus socios y clientes.', '', '', '', '', '', '', 'V', '2020-06-01 06:30:56', '2020-06-01 06:30:56'),
(73, 6, 2, 'La seguridad y la higiene en el trabajo son aspectos que deben tenerse en cuenta en el desarrollo de la vida laboral de la empresa.', '', '', '', '', '', '', 'V', '2020-06-01 06:31:57', '2020-06-01 06:31:57'),
(74, 6, 2, 'La Seguridad Industrial es un campo necesario pero no obligatorio en toda empresa en el que se estudian, aplican y renuevas constantemente los procesos mediante los cuales se minimizan los riesgos en la industria', '', '', '', '', '', '', 'F', '2020-06-01 06:34:38', '2020-06-01 06:34:38'),
(75, 6, 2, 'Toda industria debe tener la responsabilidad para cumplir con una serie de normas y condiciones que deben prestarle a sus trabajadores con el fin de darles garantía de su seguridad y protección', '', '', '', '', '', '', 'F', '2020-06-01 06:35:13', '2020-06-01 06:35:13'),
(76, 6, 2, 'Por ejemplo: en una empresa en la que se elaboren productos químicos, ¿El empleado debe estar protegido contra radiación, alguna fuga de un líquido toxico o inhalaciones de gases contaminantes?', '', '', '', '', '', '', 'F', '2020-06-01 06:37:08', '2020-06-01 06:37:08'),
(77, 6, 2, '¿Toda empresa de químicos debe proveer a sus trabajadores de las máximas protecciones para evitar algún accidente o con las básicas es suficiente?', '', '', '', '', '', '', 'F', '2020-06-01 06:37:50', '2020-06-01 06:37:50'),
(78, 6, 2, 'la seguridad industrial Tiene por objetivo la prevención de los riegos profesionales a través de la aplicación de técnicas de ingeniería que actúan sobre los agentes contaminantes del ambiente de trabajo, ya sean físicos, químicos o biológicos.', '', '', '', '', '', '', 'F', '2020-06-01 06:38:59', '2020-06-01 06:38:59'),
(79, 6, 2, '¿Los accidentes que revisten un mayor nivel de daño son aquellos que involucran sustancias químicas?', '', '', '', '', '', '', 'V', '2020-06-01 06:39:22', '2020-06-01 06:39:22'),
(80, 6, 2, 'El entrenamiento en la prevención de accidentes debe tener como objetivo fundamental que la disminución de accidentes tiene que ser consecuencia del esfuerzo de cada trabajador.', '', '', '', '', '', '', 'V', '2020-06-01 06:39:40', '2020-06-01 06:39:40'),
(81, 6, 2, 'El estado o proceso de enfermedad puede ser provocado por diversos factores, tanto intrínsecos como extrínsecos al organismo enfermo.', '', '', '', '', '', '', 'V', '2020-06-01 06:39:59', '2020-06-01 06:39:59'),
(82, 6, 2, 'Todas estas medidas tienen como finalidad que los accidentes sean fatales, que de alguna manera sean manejables', '', '', '', '', '', '', 'F', '2020-06-01 06:40:21', '2020-06-01 06:40:21'),
(83, 6, 2, 'Para constatar que estas medidas se apliquen con regularidad, suelen existir inspecciones que se realizan cada cierto período de tiempo; ¿Una violación flagrante de este tipo suele ser seguida de una multa?', '', '', '', '', '', '', 'F', '2020-06-01 06:40:48', '2020-06-01 06:40:48'),
(84, 6, 2, 'La Higiene Industrial también se le conoce como higiene del trabajo, así como higiene laboral.', '', '', '', '', '', '', 'V', '2020-06-01 07:07:54', '2020-06-01 07:07:54'),
(85, 6, 2, 'Los responsables de la seguridad e higiene deben saber que hacer en cada caso, cómo hacerlo, y cómo conseguir que lo hagan los demás y, sobre todo, que se haga bien - calidad.', '', '', '', '', '', '', 'V', '2020-06-01 07:08:35', '2020-06-01 07:08:35'),
(86, 7, 1, 'El conjunto de diligencias que nos llevan a manejar de manera integral el Sistema Ambiental haciendo realidad el concepto de desarrollo sostenible o sustentable, la forma en que se organizan las actividades antrópicas que afectan el medio ambiente, con el fin de conservar la armonía y mejorar la calidad de vida; evitando o mitigando los problemas ambientales, es', 'Gestión del Talento Humano', 'Gestión Administrativa', 'Gestión Ambiental', 'Gestión Pública', '', '', 'c', '2020-06-07 00:08:07', '2020-06-01 07:12:20'),
(87, 7, 1, 'La N.T.C. ISO 14001:2004, es', 'La Norma Técnica Colombiana por la Organización Internacional de Estandarización, ó el estándar Internacional de gestión ambiental, que determina los requerimientos mínimos para establecer un Sistema de Gestión Ambiental.', 'El Código Eléctrico Colombiano, ha sido de obligatorio cumplimiento durante cerca de 20 años y son varios las normas legales, reglamentarias que dan a entender esa obligatoriedad', 'El Código de suministro de agua; sistema de desagüe; instalación sanitaria; y fontanería', 'Norma Técnica Colombiana de higiene y seguridad, colores y señales de seguridad', '', '', 'a', '2020-06-07 00:08:32', '2020-06-01 07:13:14'),
(88, 7, 1, 'En la Evaluación de Impacto Ambiental', 'Se determina el uso del suelo según las características de la actividad a desarrollar', 'Se determinan los efectos de proyectos, planes o programas sobre el medio ambiente y se elaboran medidas correctivas, compensatorias y protectoras de los potenciales efectos adversos', 'Se direccionan los asuntos ambientales a nivel internacional, nacional, regional y local', 'Se direccionan los asuntos ambientales a nivel internacional, nacional, regional y local', '', '', 'b', '2020-06-07 00:09:11', '2020-06-01 07:14:10'),
(89, 7, 1, 'Uno de los principales objetivos de la gestión ambiental es', 'Expedir las licencias ambientales', 'Estructurar de manera funcional y articulada las organizaciones empresariales con el fin de definir las instancias de dirección, coordinación y ejecución del S.G.A. Igualmente la asignación de responsabilidades y el establecimiento de líneas de dirección e interacción', 'Llevar la contabilidad de gastos en la empresa y determinar el número de empleados y proveedores que existen en la empresa y posibles contrataciones con terceros', 'La compra de maquinaria y equipos de computo en una empresa del sector industrial', '', '', 'b', '2020-06-07 00:10:16', '2020-06-01 07:32:08'),
(90, 7, 1, '¿Cuál es la ley por la cual se dictan Medidas Sanitarias de la protección del medio ambiente?', 'Ley 388 de 1974', 'Ley 1259 de 2008', 'Ley 9 de 1979', 'Ley 30 de 1992', '', '', 'c', '2020-06-07 00:10:38', '2020-06-01 07:33:16'),
(91, 7, 1, 'Cuál es la ley que rige el Plan de Ordenamiento Territorial?', 'Ley 388 de 1974', 'Ley 1259 de 2008', 'Ley 9 de 1979', 'Ley 30 de 1992', '', '', 'a', '2020-06-07 00:10:59', '2020-06-01 07:35:11'),
(92, 7, 1, '¿Cuál es la Resolución por la cual se establece la norma nacional de emisión de ruido y ruido ambiental?', 'Resolución 0627 de 2006', 'Resolución 3389 de 2015', 'Resolución 1111 de 2017', 'Resolución 2003 de 2014', '', '', 'a', '2020-06-07 00:11:50', '2020-06-01 07:36:07'),
(93, 7, 1, '¿Cuál es la ley Por medio de la cual se instaura en el territorio nacional la aplicación del comparendo ambiental a los infractores de las normas de aseo, limpieza y recolección de escombros; y se dictan otras disposiciones?', 'Ley 388 de 1974', 'Ley 1259 de 2008', 'Ley 9 de 1979', 'Ley 1259 de 2008', '', '', 'b', '2020-06-07 00:12:38', '2020-06-01 07:39:37'),
(94, 7, 1, '¿Qué significan las siglas (E.M.A.S.)?', 'Empresa Medio Ambiental Soviética', 'El Sistema de Gestión y Auditoría Medioambientales', 'El Sindicato Medio Ambiental Extranjero', 'La Entidad Medio Ambiental Socialista', '', '', 'b', '2020-06-07 00:13:05', '2020-06-01 07:41:34'),
(95, 7, 1, 'La calidad superior del EMAS se basa en', 'El incumplimiento de la legislación ambiental, supervisado por las administraciones competente', ' Requisitos más estrictos respecto a la medición y la evaluación del comportamiento ambiental en relación con los objetivos y metas, y mejora constante del comportamiento ambiental', 'Nula participación de los trabajadores', 'La no divulgación de información al público mediante la declaración ambiental validada', '', '', 'b', '2020-06-07 00:13:31', '2020-06-01 07:44:59'),
(96, 7, 1, 'Uno de los requisitos que debe cumplir una organización para poder registrarse en el EMAS, es', 'No adoptar una política ambiental, sin comprometerse a respetar toda la legislación ambiental pertinente y a mejorar continuamente su comportamiento ambiental', 'Llevar a cabo un análisis ambiental La organización debe realizar un análisis ambiental inicial verificado, teniendo en cuenta todos los aspectos ambientales de sus actividades, productos y servicios, los métodos de evaluación y el marco jurídico y reglamentario, así como las prácticas y procedimientos de gestión ambiental existentes.', 'Omitir las auditorías ambientales internas Una vez establecido el SGA', 'No presentar la declaración ambiental al E.M.A.S', '', '', 'b', '2020-06-07 00:14:01', '2020-06-01 07:45:56'),
(97, 7, 1, 'EMAS es actualmente el sistema de gestión ambiental más creíble y sólido del mercado, ya que añade varios elementos a los requisitos de la norma internacional para sistemas de gestión ambiental en', 'La R.A.I. Revisión Ambiental Inicia', 'El S.G.A. Sistema de Gestión Ambiental', 'La NTC ISO 14001:2004. Norma Técnica Colombiana de la Organización Internacional de Estandarización 14001:2004.', 'El Marketing Internacional', '', '', 'c', '2020-06-07 00:14:34', '2020-06-01 07:46:58'),
(98, 7, 2, 'la Evaluación de Impacto Ambiental (EIA), es la herramienta que permite determinar no solo las consecuencias ambientales de cualquier emprendimiento, sino también proponer las acciones necesarias para atender dichas secuelas', '', '', '', '', '', '', 'V', '2020-06-01 07:47:27', '2020-06-01 07:47:27'),
(99, 7, 2, 'Los objetivos específicos de la RAI son: Caracterizar el medio ambiente biótico, abiótico, socioeconómico. Revisar la documentación ambiental en la organización. Identificar requisitos legales y aplicables. Revisar y evaluar las diferentes áreas de la organización Revisar y evaluar las principales materias primas y recursos naturales. Revisar y evaluar los principales focos de contaminación, potenciales y latentes. Entre otros', '', '', '', '', '', '', 'V', '2020-06-01 07:47:48', '2020-06-01 07:47:48'),
(100, 7, 2, 'Aspecto Ambiental es un conjunto de actividades, productos o servicios que pueden interactuar con el medio ambiente', '', '', '', '', '', '', 'V', '2020-06-01 07:48:05', '2020-06-01 07:48:05'),
(101, 7, 2, 'El impacto ambiental apunta a cualquier cambio en el medio ambiente sea adverso o beneficioso, como resultado total o parcial de los aspectos de una organización', '', '', '', '', '', '', 'V', '2020-06-01 07:48:30', '2020-06-01 07:48:30'),
(102, 7, 2, 'La implementación de la NTC ISO 14001:2004, sirve para mitigar la contaminación, optimizar recursos, ser más competitivos en el mercado, adquirir conciencia y cultura institucional, generar beneficios económicos y consolidar una cultura organizacional en los hogares colombianos', '', '', '', '', '', '', 'F', '2020-06-01 07:48:48', '2020-06-01 07:48:48'),
(103, 7, 2, 'Los impactos ambientales negativos son los que generan bienestar al medio ambiente y optimizan el aprovechamiento de los recursos naturales sin contaminar la naturaleza', '', '', '', '', '', '', 'F', '2020-06-01 07:49:05', '2020-06-01 07:49:05'),
(104, 7, 2, 'Los impactos ambientales positivos son los que generan contaminación al medio ambiente, derrochando el consumo de los recursos naturales y produciendo bajos niveles de productividad en las empresas19. Los impactos ambientales positivos son los que generan contaminación al medio ambiente, derrochando el consumo de los recursos naturales y produciendo bajos niveles de productividad en las empresas', '', '', '', '', '', '', 'F', '2020-06-01 07:49:33', '2020-06-01 07:49:33'),
(105, 7, 2, 'La utilización y agotamiento de los recursos, uso y degradación de los terrenos, contaminación del agua y la afectación a la salud son impactos ambientales negativos.', '', '', '', '', '', '', 'V', '2020-06-01 07:49:50', '2020-06-01 07:49:50'),
(106, 8, 1, 'El conjunto detallado de actividades, que resultan del producto de una evaluación ambiental y que están orientadas a prevenir, mitigar, corregir o compensar los impactos y efectos ambientales que se causen por el desarrollo de un proyecto, obra o actividad. Incluye los planes de seguimiento, monitoreo, contingencia, y abandono según la naturaleza del proyecto, obra o actividad es:', 'El Sistema de Gestión Ambiental S.G.A.', 'El Plan de Manejo Ambiental P.M.A', 'El formato para solicitar una licencia ambiental', 'El ordenamiento internacional de estandarización', '', '', 'b', '2020-06-07 00:16:52', '2020-06-01 07:56:48'),
(107, 8, 1, 'Los objetivos del Plan de Manejo Ambiental P.M.A. buscan:', 'Aumentar los costos Técnicos y Económicos del P.M.A. sin realizar mediciones y verificaciones de los procesos o actividades de un proyecto, obra o actividad.', 'Certificar empresas en la Norma Técnica Colombiana 14001:2004, con los más altos estándares de calidad ambiental', 'Eliminar o mitigar, progresivamente en plazos racionales, los impactos ambientales negativos causados por una actividad en desarrollo, aplicando prioritariamente actividades de prevención de la contaminación', 'Informar a los entes certificadores ambientales a nivel nacional sobre los daños generados al medio ambiente por otras empresas y ejecutar las multas establecidas en la ley ambiental', '', '', 'c', '2020-06-07 00:17:25', '2020-06-01 07:57:57'),
(108, 8, 1, 'La política ambiental de una organización debe integrarse a partir de los resultados de la autoevaluación ambiental inicial de la misma, existen tres tipos de acuerdo a la orientación de las actividades, estos son:', 'Cumplimiento de la legislación ambiental, protección ambiental y uso sostenible de los recursos naturales y mejoramiento continuo', 'Evasión de impuestos ambientales, aprovechamiento desmedido de los recursos naturales y énfasis en reglamentaciones no vigentes', 'Administrativa, sociocultural y Contable', 'Técnica, Tecnológica y científica', '', '', 'a', '2020-06-07 00:25:30', '2020-06-01 07:58:54'),
(109, 8, 1, 'Para la descripción del área de influencia del P.M.A. de una organización, se deben tener en cuenta la zona y los recursos que rodean dicha zona de influencia en la cual se ubica el proyecto, estos son; recurso agua, suelo, aire, flora, fauna y', 'Personal.', 'Dinero', 'Paisaje', 'Tecnología', '', '', 'c', '2020-06-07 00:18:20', '2020-06-01 08:00:04'),
(110, 8, 1, 'Cuál es el programa del P.M.A. que incluye el diseño y ejecución de obras, actividades o medidas dirigidas a moderar, atenuar, o disminuir los impactos negativos que un proyecto pueda generar sobre el entorno humano y natural; incluso la mitigación puede reponer uno o más de los componentes o elementos del medio ambiente a una calidad similar a la que tenían con anterioridad al daño causado.', 'Programa de prevención y respuesta.', 'Programa de medidas de seguridad', 'Programa de capacitación', 'Programa de mitigación', '', '', 'd', '2020-06-07 00:18:51', '2020-06-01 08:01:16'),
(111, 8, 1, 'El Programa que define las necesidades de capacitación de los integrantes de la organización (incluso contratistas) y definirla por calendario y donde se recomienda que se identifiquen las necesidades de capacitación, principalmente de aquel personal cuyo trabajo pueda crear un impacto significativo sobre el medio ambiente es:', 'Programa de capacitación.', 'Programa de mitigación', 'Programa de seguimiento, evaluación y control', 'Programa de prevención y respuesta', '', '', 'a', '2020-06-07 00:19:08', '2020-06-01 08:02:11'),
(112, 8, 1, 'El Programa que tiene por función básica garantizar el cumplimiento de las indicaciones y de las medidas de protección contenidas en el P.M.A. es', 'Programa de contingencia.', 'Programa de seguimiento evaluación y control', 'Programa de medidas de seguridad', 'Programa de capacitación', '', '', 'b', '2020-06-07 00:19:29', '2020-06-01 08:03:04'),
(113, 8, 1, 'Qué es un informe técnico y quien lo realiza?', 'Formulario en el que se solicita una licencia ambiental, realizado por el gerente o representante legal de una organización', 'Documento en el que se redactan las normas para la contratación de personal de una organización, realizado por el jefe de personal de la organización', 'Ficha en la cual aparecen los horarios laborales del personal ambiental de la organización, realizada por el secretario de administración de la organización', 'Documento en donde se determina el estado de cumplimiento de una actividad ambiental a inspeccionar; La meta no es encontrar infracciones, sino establecer si la actividad se encuentra o no cumpliendo con las normas ambientales, realizado por un Inspector ambiental delegado por un organismo ambiental competente', '', '', 'd', '2020-06-07 00:19:59', '2020-06-01 08:03:58'),
(114, 8, 1, 'En el desarrollo de una inspección ambiental se deben tener en cuenta las siguientes preguntas', '¿Cuál es el tipo de impacto a inspeccionar? ¿Cuál es la actividad secundaria de la organización? ¿Cuáles son las redes eléctricas de la infraestructura?', '¿Hora de la inspección? ¿Quiénes asistieron? ¿Qué Áreas se recorrieron?', '¿Quién es el gerente? ¿Quién es el administrador? ¿Quién es el abogado?', '¿Cuáles son los horarios laborales? ¿Cuál es la normatividad ambiental aplicable a toda la organización? ¿Quién es el inspector encargado?', '', '', 'b', '2020-06-07 00:21:02', '2020-06-01 08:04:59'),
(115, 8, 1, '¿Cuáles son los tipos de hallazgos encontrados en un informe técnico?', 'De técnicas, de tecnologías y de procedimientos', 'De posible incumplimiento, de cumplimiento y de observación', 'De tesoros, de archivos y de códigos', 'De documentos, de reglamentaciones nuevas y de fotografías.', '', '', 'b', '2020-06-07 00:21:29', '2020-06-01 08:06:10'),
(116, 8, 1, '¿Cuál es la pregunta clave para que el inspector dé su análisis técnico en donde se evaluará, si un evento o situación incide positiva o negativamente en los factores bióticos o abióticos del área circundante al proyecto?', 'Como identificar si la energía de la maquinaria es continua o alterna?', '¿Como utilizar las energías renovables en los sistemas de procesos de la organización y reutilizar los desechos de dichos procesos?', '¿Cómo afectan los hallazgos evidenciados al ambiente, seguridad y/o salud pública?', '¿Como concientizar al personal de la organización sobre el cuidado de la maquinaria y equipos?', '', '', 'c', '2020-06-07 00:22:30', '2020-06-01 08:07:36'),
(117, 8, 1, '¿Qué son guías ambientales?', 'Son documentos en los que se encuentran relacionados todos los impactos positivos del proyecto abra o actividad.', 'Son instrumentos técnicos en donde se consolidan esquemas para el mejoramiento de la gestión, manejo y desempeño ambiental de los sectores productivos como agrícola y pecuario, hidrocarburos, industria y manufacturero, infraestructura y transporte, sector energético entre otros sectores', 'Son fichas técnicas que especifican el manejo de químicos peligrosos y como desecharlos para no generar contaminación al medio ambiente.', 'Son documentos donde se registran las actividades que debe realizar el personal para conservar el medio ambiente y su entorno laboral', '', '', 'b', '2020-06-07 00:22:56', '2020-06-01 08:08:40'),
(118, 8, 2, 'Uno de los objetivos de las guías ambientales es Orientar la implementación de medidas de producción más limpia; así como la elaboración de planes de manejo ambiental y mejor aprovechamiento de los recursos naturales.', '', '', '', '', '', '', 'V', '2020-06-01 08:09:09', '2020-06-01 08:09:09'),
(119, 8, 2, 'Para tramitar una licencia ambiental no se deben diligenciar diferentes formatos sobre permisos referentes a las diferentes actividades y su relación con el tipo de impacto ambiental que ocasione determinada actividad ó el recurso natural que se vaya a explotar.', '', '', '', '', '', '', 'F', '2020-06-01 08:09:27', '2020-06-01 08:09:27'),
(120, 8, 2, 'Algunos documentos que se deben anexar a la solicitud de la licencia ambiental son, Concepto previo Diagnóstico Ambiental de Alternativas. Plano IGAC de localización del proyecto, obra o actividad. Poder debidamente otorgado cuando se actúe por medio de apoderado. Entre otros.', '', '', '', '', '', '', 'V', '2020-06-01 08:09:51', '2020-06-01 08:09:51'),
(121, 8, 2, 'En la solicitud de permiso para vertimientos no se debe anexar clase, calidad y cantidad de desagües', '', '', '', '', '', '', 'F', '2020-06-01 08:10:55', '2020-06-01 08:10:55'),
(122, 8, 2, 'En la solicitud de permiso para emisiones atmosféricas fuentes fijas se debe anexar la descripción de los sistemas de control de emisiones existentes o proyectados.', '', '', '', '', '', '', 'V', '2020-06-01 08:11:12', '2020-06-01 08:11:12'),
(123, 8, 2, 'En la solicitud de concesión de aguas subterráneas no se debe anexar el diseño definitivo del pozo', '', '', '', '', '', '', 'F', '2020-06-01 08:11:34', '2020-06-01 08:11:34'),
(124, 8, 2, 'En el formato de inspecciones ambientales internas no se detallan documentos anexos al mismo', '', '', '', '', '', '', 'V', '2020-06-01 08:11:51', '2020-06-01 08:11:51'),
(125, 8, 2, 'El Plan de Monitoreo Ambiental, permitirá la evaluación periódica integrada y permanente de la dinámica de las variables ambientales, con el fin de proveer información precisa y actualizada para la toma de decisiones, orientadas a la conservación y uso sostenible de los recursos naturales y del medio ambiente durante la construcción y operación del proyecto', '', '', '', '', '', '', 'V', '2020-06-01 08:12:09', '2020-06-01 08:12:09');
INSERT INTO `preguntas` (`id`, `id_modulo`, `tipo`, `pregunta`, `a`, `b`, `c`, `d`, `e`, `f`, `respuesta`, `created_at`, `updated_at`) VALUES
(126, 9, 1, 'Que es un sistema de gestión ambiental (S.G.A.)?', 'Es un sistema estructurado de gestión que no incluye la estructura organizativa, la planificación de las actividades, las responsabilidades, las prácticas, los procesos, los procedimientos y los recursos para desarrollar, implantar, llevar a efecto, revisar y mantener al día los compromisos en materia de protección ambiental que suscribe una Empresa.', ' Es un sistema estructurado de gestión que incluye la estructura organizativa, la planificación de las actividades, las responsabilidades, las prácticas, los procesos, los procedimientos y los recursos para desarrollar, implantar, llevar a efecto, revisar y mantener al día los compromisos en materia de protección ambiental que suscribe una Empresa', 'Es una norma constitucional puede interpretarse de manera solidaria con el principio fundamental del derecho a la vida, ya que éste sólo se podría garantizar bajo condiciones en las cuales la vida pueda disfrutarse con calidad.', 'Es un sistema que suministra la información para evaluar y comparar las diferentes opciones que presente el peticionario, bajo las cuales sea posible desarrollar un proyecto, obra o actividad. Las diferentes opciones deberán tener en cuenta el entorno geográfico y sus características ambientales y sociales, análisis comparativo de los efectos y riesgos inherentes a la obra o actividad, y de las posibles soluciones y medidas de control y mitigación para cada una de las alternativas.', '', '', 'b', '2020-06-07 00:27:57', '2020-06-01 08:16:47'),
(127, 9, 1, 'Que significan las siglas P.H.V.A.?', '\"Programar, Hallar, Comparar y Activar\"', '\"Proyectar, Hilar, Controlar y Accionar\"', '\"Planificar, Hacer, Comprobar y Actuar\"', '\"Potenciar, Halar, Contactar y Armar\"', '', '', 'c', '2020-06-07 00:28:38', '2020-06-01 08:18:10'),
(128, 9, 1, 'La implementación de la NTC ISO 14001 nos permite:', 'Cumplir objetivos y metas para demostrar desempeño ambiental, Desarrollar programas de gestión ambiental, Establecer la política ambiental de la organización, Mejoramiento Continuo (PHVA', 'Cumplir objetivos y metas para comprobar posibles riesgos en las actividades realizadas con maquinaria que puedan causar perdidas económicas a la empresa y llegar a incurrir en perdidas humanas', 'Descubrir un método para el cumplimiento de las normas internas de la empresa a nivel administrativo para mejorar los ingresos de la misma y proporcionar un mejor bienestar a los trabajadores.', 'Satisfacer las necesidades de los clientes y dar un valor agregado a los productos que vende la empresa, sin importar los efectos negativos o positivos que se generen al medio ambiente.', '', '', 'a', '2020-06-07 00:29:13', '2020-06-01 08:19:12'),
(129, 9, 1, 'Uno de los factores para la implementación del Sistema de Gestión Ambiental (S.G.A.), que Identifica la meta donde orientarse, hacia lo que se quiere ser una organización, Las políticas y objetivos; que sirve de guía en momento de confusión y encauza el flujo creativo del personal es:', 'La Misión.', 'El Entorno de Trabajo.', 'La Visión.', 'El Cliente.', '', '', 'c', '2020-06-07 00:30:11', '2020-06-01 08:21:05'),
(130, 9, 1, 'El liderazgo de la dirección se refiere a:', 'Permitir que los trabajadores cometan errores y descontar de su salario el valor de dicho error para resarcirlo', 'El liderazgo activo que supone ganar el compromiso de su gente, escucharla y alentarla al trabajo globalmente competitivo, un compromiso con la visión y capacidad de comunicación y un punto clave para poder realizar un cambio efectivo.', 'La delegación y participación de personal a obras que permitan impactos positivos con el medio ambiente y la ejecución del manual de procedimientos en la elaboración de un plan de manejo ambiental para poner en marcha los correctivos en las acciones de mitigación de impactos.', 'La imparcialidad en las labores de seguimiento a los Sistemas de Gestión Ambiental.', '', '', 'b', '2020-06-07 00:30:36', '2020-06-01 08:22:03'),
(131, 9, 1, 'El trabajo bien hecho es altamente reconfortante para quien lo ha realizado. Es una característica de:', 'El cliente.', 'Las Herramientas.', 'Personal Capacitado y Motivado.', 'La Maquinaria.', '', '', 'c', '2020-06-07 00:31:05', '2020-06-01 08:23:04'),
(132, 9, 1, 'La gestión del riesgo:', 'Favorece la generación de accidentes dentro de una empresa al no tener métodos de prevención de accidentes laborales.', 'identifica los riesgos, las amenazas y las oportunidades permite reducir los efectos negativos sobre la productividad, y aumentar los beneficios potenciales que ofrece la organización.', 'Pretende satisfacer las necesidades de los clientes de una empresa, sin tener en cuenta los impactos negativos que se generan en el medio ambiente y teniendo en cuenta los impactos positivos que se generen como valor agregado a los servicios que se ofrecen', 'Condiciona a los Clientes para obtener bienes y servicios con una cuota aporte para su desarrollo dentro de la empresa', '', '', 'b', '2020-06-07 00:32:10', '2020-06-01 08:24:22'),
(133, 9, 1, 'En que Artículo de la Constitución Nacional se declara el derecho a un ambiente sano?', 'En el Artículo 45', 'En el Artículo 63', 'En el Artículo 89', 'En el Artículo 79', '', '', 'd', '2020-06-07 00:33:33', '2020-06-01 08:25:20'),
(134, 9, 1, 'La Constitución Nacional en su Artículo 63 determina:', 'Los bienes de uso público, los parques naturales, las tierras comunales de grupos étnicos, las tierras de resguardo, el patrimonio arqueológico de la Nación y los demás bienes que determine la Ley, son inalienables, imprescriptibles e inembargables', 'El adolescente tiene derecho a la protección y a la formación integral. El Estado y la sociedad garantizan la participación activa de los jóvenes en los organismos públicos y privados que tengan a cargo la protección, educación y progreso de la juventud.', 'Es deber del Estado promover el acceso progresivo a la propiedad de la tierra de los trabajadores agrarios, en forma individual o asociativa, y a los servicios de educación, salud, vivienda, seguridad social, recreación, crédito, comunicaciones, comercialización de los productos, asistencia técnica y empresarial, con el fin de mejorar el ingreso y calidad de vida de los campesinos', 'La ley establecerá los demás recursos, las acciones, y los procedimientos necesarios para que puedan propugnar por la integridad del orden jurídico, y por la protección de sus derechos individuales, de grupo o colectivos, frente a la acción u omisión de las autoridades públicas', '', '', 'a', '2020-06-07 00:35:12', '2020-06-01 08:26:30'),
(135, 9, 1, 'El Decreto ley 2811 de 1.974 define:', 'Los principios fundamentales sobre prevención y control de la contaminación del aire, agua y suelo y otorgó facultades al Presidente de la República para expedir el Código de los Recursos Naturales', 'El Código nacional de los recursos naturales renovables RNR y no renovables y de protección al medio ambiente. El ambiente es patrimonio común, el estado y los particulares deben participar en su preservación y manejo. Regula el manejo de los RNR, la defensa del ambiente y sus elementos', 'La licencia ambiental LA: naturaleza, modalidad y efectos; contenido, procedimientos, requisitos y competencias para el otorgamiento de LA', 'Normas para la protección y control de la calidad del aire', '', '', 'b', '2020-06-07 01:15:04', '2020-06-01 08:27:53'),
(136, 9, 1, 'La Ley 99 de 1993 determina', 'Los casos en que se debe presentar Diagnóstico Ambiental de Alternativas, Plan de Manejo Ambiental y Estudio de Impacto Ambiental. Suprime la licencia ambiental ordinaria', 'La creación del Ministerio del Medio Ambiente y Organiza el Sistema Nacional Ambiental (SINA). Reforma el sector Público encargado de la gestión ambiental. Organiza el sistema Nacional Ambiental y exige la Planificación de la gestión ambiental de proyectos', 'La reserva forestal y protección de suelos y agua', 'Las tasas retributivas por vertimientos líquidos puntuales a cuerpos de agua', '', '', 'b', '2020-06-07 01:15:35', '2020-06-01 08:29:14'),
(137, 9, 1, 'La Ley 388 de 1997, define', 'Los principios fundamentales sobre prevención y control de la contaminación del aire, agua y suelo y otorgó facultades al Presidente de la República para expedir el Código de los Recursos Naturales', 'Ordenamiento Territorial Municipal y Distrital y Planes de Ordenamiento Territorial', 'La creación del Ministerio del Medio Ambiente y Organiza el Sistema Nacional Ambiental (SINA). Reforma el sector Público encargado de la gestión ambiental. Organiza el sistema Nacional Ambiental y exige la Planificación de la gestión ambiental de proyectos.', 'Ordenamiento Territorial Municipal y Distrital y Planes de Ordenamiento Territorial', '', '', 'b', '2020-06-07 01:16:17', '2020-06-01 08:30:56'),
(138, 9, 2, 'La Ley 09 de 1979, habla del código sanitario nacional', '', '', '', '', '', '', 'V', '2020-06-01 08:31:18', '2020-06-01 08:31:18'),
(139, 9, 2, 'En la formación, sensibilización y competencia profesional, es importante para que el S.G.A. tenga éxito que el personal cuyas tareas específicas puedan generar impactos significativos sobre el medio, tenga una formación adecuada sobre como llevar a cabo las mismas. También es de gran importancia la sensibilización para que el personal tenga la suficiente motivación y sea consciente de su impacto en el caso de una mala realización', '', '', '', '', '', '', 'V', '2020-06-01 08:31:34', '2020-06-01 08:31:34'),
(140, 9, 2, 'Es importante que en el S.G.A. queden delimitadas de forma documental la estructura organizativa de la entidad (al menos en lo referido al propio sistema) y las responsabilidades que dentro del mismo tengan las diferentes personas.', '', '', '', '', '', '', 'V', '2020-06-01 08:32:50', '2020-06-01 08:32:50'),
(141, 9, 2, 'En la práctica algunas de las actividades de seguimiento y medición están íntimamente ligadas con el control operacional, de hecho, algunos de los controles inherentes al control operacional suponen la necesidad de tomar medidas. Esto corresponde a los planes de emergencia del S.G.A', '', '', '', '', '', '', 'F', '2020-06-01 08:33:13', '2020-06-01 08:33:13'),
(142, 9, 2, 'Se realizarán registros periódicos de los indicadores ambientales de aquellos aspectos ambientales sujetos a medición. Con estas fichas de datos se propone la elaboración con una periodicidad acordada de un Informe de Consumo y en su caso otro de Gestión de residuos.', '', '', '', '', '', '', 'V', '2020-06-01 08:33:30', '2020-06-01 08:33:30'),
(143, 9, 2, 'El diagnóstico ambiental de alternativas no tiene como objeto suministrar la información para evaluar y comparar las diferentes opciones que presente el peticionario, bajo las cuales sea posible desarrollar un proyecto, obra o actividad.', '', '', '', '', '', '', 'F', '2020-06-01 08:33:52', '2020-06-01 08:33:52'),
(146, 9, 2, 'El diagnóstico ambiental de alternativas debe contener la descripción general de las alternativas de localización del proyecto, obra o actividad caracterizando ambientalmente el área de interés e identificando las áreas de manejo especial, así como también las características del entorno social y económico para cada alternativa presentada.', '', '', '', '', '', '', 'V', '2020-06-01 08:37:57', '2020-06-01 08:37:57'),
(147, 9, 2, 'El análisis de alternativas de localización debe considerar como mínimo los siguientes aspectos: Ambiental, Ordenamiento, Normativo y Económico', '', '', '', '', '', '', 'V', '2020-06-01 08:38:06', '2020-06-01 08:38:06'),
(148, 10, 1, 'Según establece la norma ISO 14001 se puede definir auditoría como:', 'Un proceso policial, sino que es un proceso técnico que se debe auditar y tiene que verse siempre la parte positiva de recibir la información sobre el funcionamiento de la organización', 'Un examen, que se realiza por personas preferenciales o clientelistas, del cumplimiento de una determinada norma o procedimiento', 'Una actividad de análisis que evalúa el Sistema de Gestión Ambiental para determinar posibles errores y establece pautas para corregir dichos errores', 'Un proceso sistemático, independiente y documentado para obtener las evidencias de la auditoría, y evaluarlas de forma objetiva con el fin de determinar la extensión en que se cumplen todos los criterios de auditoría.', '', '', 'd', '2020-06-07 01:20:19', '2020-06-01 08:43:37'),
(149, 10, 1, 'Es la acción que se toma para eliminar la no conformidad detectada u otra situación indeseable', 'Acción Preventiva', 'Acción Judicial', 'Acción Correctiva', 'Acción Patriótica', '', '', 'c', '2020-06-07 01:21:15', '2020-06-01 08:44:29'),
(150, 10, 1, 'describir las actividades y los detalles acordados de una auditoría. Es', 'Procedimiento.', 'Proceso', 'Plan de Auditoria', 'Conclusiones de la Auditoria', '', '', 'c', '2020-06-07 01:21:50', '2020-06-01 08:45:29'),
(151, 10, 1, 'Dos objetivos de una Auditoria Ambiental son', 'Cuantificar los impactos positivos de la organización y desarrollar planos físicos de la infraestructura y maquinaria de la misma', 'Estudiar los documentos del Sistema de Gestión Ambiental para establecer si se ajustan a las normas de las referencias correspondientes y establecer el nivel de cumplimiento de los procedimientos que forman parte del Sistema de Gestión Ambiental', 'registrar los hechos o cualquier otra información que sean pertinentes para los criterios de auditoría y dar cumplimiento de un requisito asociado a una utilización prevista', 'Planificar estrategias para producir impactos ambientales negativos en la organización y su entorno, resolver situaciones de índole económica para la organización que influyan significativamente en los valores agregados de los bienes y servicios ofrecidos a los clientes', '', '', 'b', '2020-06-07 01:24:15', '2020-06-01 08:46:51'),
(152, 10, 1, 'Cuales son las características generales para realizar una Auditoria Ambiental?', 'Es imprescindible contar con el personal preparado para realizarla. El equipo auditor tiene que poseer una competencia necesaria para conseguir los objetivos deseados, teniendo en cuenta la necesidad de imparcialidad e independencia del equipo auditor respecto a las actividades que se quieren auditar. Tiene que establecerse, de forma previa, un objetivo, el alcance y los criterios utilizados para determinar la conformidad del Sistema de Gestión Ambiental que se quiere auditar.', ' Asegurar el cumplimiento de los requisitos legales, reglamentarios y contractuales, lograr los objetivos especificados, tomar acciones correctivas y de mejora necesarias para conseguir el cumplimiento de los procedimientos y los objetivos', 'Modificar los procedimientos en el momento que se demuestra que no son adecuados para el buen desarrollo de la organización, prevenir la reaparición de problemas, identificar las áreas de mejora potencial del Sistema de Gestión Ambiental ISO 14001', 'Establecer el nivel de incumplimiento de los procedimientos que forman parte del Sistema de Gestión Ambiental, no verificar los departamentos y los niveles de la empresa que deben seguir dichos procedimientos e instrucciones técnicas que se han establecido, no establecer el grado de conformidad del Sistema de Gestión Ambiental que se va a auditar, con los criterios de la auditoría', '', '', 'a', '2020-06-07 01:25:14', '2020-06-01 08:48:16'),
(153, 10, 1, 'Los resultados esperados en una Auditoria Ambiental son', 'permitir obtener información acerca de la efectividad de la gestión de la empresa, identificar problemas asociados a su funcionamiento, identificar nuevos desafíos ambientales y proponer medidas de prevención y mitigación apropiadas', 'promover un enfoque subjetivo en toda la cadena de evaluación de la conformidad con el fin de alcanzar los resultados esperados y por lo tanto aumentar el valor y la importancia de la certificación acreditada, sin tener en cuenta los planes de mitigación y prevención', 'desarrollar Normas Internacionales involuntarias para fomentar las buenas prácticas en sus actividades en todo el mundo y mejorar los ingresos para producir más bienes y servicios en las organizaciones sin darle importancia al medio ambiente', 'identificar los aspectos ambientales de sus actividades, productos y servicios que no se puedan controlar y determinar las que pueden tener un impacto ambiental positivo significativo (incluyendo aquellos relacionados a proveedores / contratistas', '', '', 'a', '2020-06-07 01:26:16', '2020-06-01 08:49:17'),
(154, 10, 1, 'Las auditorias que consideran la responsabilidad potencial del personal y tienen en cuenta las soluciones técnicas y jurídicas de protección medioambiental, sus costos e inversiones y sus ventajas. Relacionan, por tanto, responsabilidad con decisión de gestión. Que clase de auditorias son?', 'Auditorias de Conformidad', 'Auditorias de Siniestros o Accidentes.', 'Auditorias Operacionales.', 'Auditorias de Situación Administrativa', '', '', 'c', '2020-06-07 01:27:18', '2020-06-01 08:50:16'),
(155, 10, 1, 'Las auditorias que se inician como consecuencia de una circunstancia específica, un siniestro, catástrofe o accidente, con el propósito de hallar las causas, determinar responsabilidades, penales o civiles, buscar soluciones que permitan evitar su repetición en el futuro, independientemente del proceso judicial, penal o civil que, paralelamente, sigan las autoridades correspondientes. Se emplea la auditoría como instrumento de defensa. Que clases de auditorias son?', 'Auditorias de Responsabilidad', 'Auditorias de Riesgo.', 'Auditorias de Siniestros o Accidentes.', 'Auditorias Operacionales', '', '', 'c', '2020-06-07 01:27:45', '2020-06-01 08:51:20'),
(156, 10, 1, 'Las auditorias que tienen por objetivo perseguir, conocer y limitar todos los riesgos medioambientales. Puede traducirse en una atenuación de los posibles riesgos jurídicos y económicos que pudieran amenazar a la empresa. Que clase de auditorias son?', 'Auditorias de Siniestros o Accidentes.', 'Auditorias de Riesgos', 'Auditorias de Conformidad', 'Auditorias Operacionales', '', '', 'b', '2020-06-07 01:28:04', '2020-06-01 08:52:37'),
(157, 10, 1, 'Las auditorias que tienen como fin, auditar la capacidad de los proveedores para cumplir los requisitos medioambientales establecidos en el contrato. Que clase de auditorias son', 'Auditorias para la Compra de Empresas', 'Auditorias de Proveedores', 'Auditorias por ubicación y localizació', 'Auditorias de Impacto Ambiental de Productos Fabricados', '', '', 'b', '2020-06-07 01:28:35', '2020-06-01 08:53:32'),
(158, 10, 1, 'Las auditorias que evalúan los efectos medioambientales, reales y potenciales, de la empresa que va a ser absorbida, adquirida o fusionada por otra, a requerimiento de esta última. Que clase de auditorias son?', 'Auditorias de Proveedores.', 'Auditorias de Riesgo', 'Auditorias de Responsabilidad', 'Auditorias para la Compra de Empresas.', '', '', 'd', '2020-06-07 01:29:08', '2020-06-01 09:10:12'),
(159, 10, 1, 'Las auditorias que analizan, tan sólo, la problemática derivada de una variable ambiental. En este caso se pueden distinguir auditorías de aguas, residuos, etc. Que clase de auditorias son?', 'Auditorias Conjuntas.', 'Auditorias Sectoriales', 'Auditorias Combinadas', 'Auditorias de Gestión Integral.', '', '', 'b', '2020-06-07 01:29:23', '2020-06-01 09:11:21'),
(161, 10, 2, 'Las auditorías internas son las realizadas, con fines externos, por otras organizaciones o en nombre de un particular', '', '', '', '', '', '', 'F', '2020-06-01 09:11:48', '2020-06-01 09:11:48'),
(162, 10, 2, 'Las auditorías externas son las realizadas por entes que tienen interés en la organización o por organizaciones auditoras independientes.', '', '', '', '', '', '', 'V', '2020-06-01 09:12:22', '2020-06-01 09:12:22'),
(163, 10, 2, 'La credibilidad del auditor se basa en que sea, y sea visto, como objetivo e independiente, para que la credibilidad de los resultados de la auditoría no se vea comprometida', '', '', '', '', '', '', 'V', '2020-06-01 09:12:41', '2020-06-01 09:12:41'),
(164, 10, 2, 'Una vez implantado el sistema de gestión ambiental, el siguiente paso es que la propia organización se asegure, y pueda asegurar de cara al exterior, que dicho sistema funciona eficazmente en el marco de una política ambiental prefijada. La auditoría y la certificación ambiental surgen, de este modo, como herramientas vitales para cubrir estas necesidades', '', '', '', '', '', '', 'V', '2020-06-01 09:13:02', '2020-06-01 09:13:02'),
(165, 10, 2, 'La certificación ambiental es la manera de asegurar, ante posibles clientes y, en general, de cara al exterior de la empresa, las buenas prácticas medioambientales de ésta. Se trata de un certificado expedido por la misma organización y personal propio, en el que se identifica la inconformidad del sistema de gestión ambiental de una empresa respecto a la normativa en la que se basó dicho sistema.', '', '', '', '', '', '', 'F', '2020-06-01 09:13:27', '2020-06-01 09:13:27'),
(166, 10, 2, 'Los conocimientos básicos con los que deben contar los auditores del Sistema de Gestión Ambiental son: Conocimientos básicos de la norma ISO 14001, Planificación de auditorías, Preparación de una agenda para llevar a cabo la auditoría, Desarrollar la metodología de auditorías, Conducir una sesión de apertura, Conducir la auditoría y entrevistar a los trabajadores, Realizar informes y comunicaciones, Conducir la sesión de clausura, Redactar un informe final con todas las conclusiones, Seguir', '', '', '', '', '', '', 'V', '2020-06-01 09:13:51', '2020-06-01 09:13:51'),
(167, 10, 2, 'El Auditor Jefe no es el responsable de coordinar todas las actividades que se realizan durante la auditoría del Sistema de Gestión Ambiental ISO 14001.', '', '', '', '', '', '', 'V', '2020-06-01 09:14:17', '2020-06-01 09:14:17'),
(168, 10, 2, 'Los Auditores Internos o Externos pueden caer en aspectos personales como, ser polémicos, discutir, ser puntillosos o culpar al personal por alguna no conformidad y ser arrogante', '', '', '', '', '', '', 'F', '2020-06-01 09:14:38', '2020-06-01 09:14:38'),
(169, 11, 1, 'El conjunto conformado por personas o grupos, encaminados a conseguir determinados fines u objetivos a través de funciones específicas, racionalmente coordinadas y dirigidas, es', 'La Organización.', 'El comité de evaluación del Talento Humano.', 'El área de Gestión del Talento Humano.', 'El grupo Motivacional', '', '', 'a', '2020-06-07 23:14:50', '2020-06-01 09:20:54'),
(170, 11, 1, 'as Organizaciones tienen cuatro elementos básicos:', 'Los directivos de la organización, la tecnología que utilizan, la cultura propia de la misma o su propia estructura social, y las metas u objetivos que deben cumplir.', 'Los participantes o miembros que las componen, la tecnología que utilizan, la cultura propia de la misma o su propia estructura social, y las herramientas de trabajo.', 'Los participantes o miembros que las componen, la tecnología que utilizan, la cultura propia de la misma o su propia estructura social, y las metas u objetivos que deben cumplir.', 'Ninguna de las anteriores.', '', '', 'c', '2020-06-07 23:18:19', '2020-06-01 09:21:55'),
(171, 11, 1, 'Los elementos para construir la estrategia corporativa son:', 'Misión, Visión, Objetivos, Proceso de Implementación, Mecanismos de Comunicación, Dirección Estratégica y Seguimiento y Evaluación de Resultados.', 'Misión, Visión, Valores, Objetivos, Proceso de Implementación, Mecanismos de Comunicación, Dirección Estratégica y Seguimiento y Evaluación de Resultados.', 'Productividad, Competitividad, y Aumento del mercado.', 'Ninguna de las anteriores.', '', '', 'b', '2020-06-07 23:18:50', '2020-06-01 09:23:08'),
(172, 11, 1, 'Las áreas de talento humano se dedican a:', 'Solo a temas operativos y transaccionales, relacionados con la administración de personas y prestación de servicios al interior de las empresas.', 'Apoyo estratégico para la organización mediante la selección de colaboradores que compartan sus mismos valores y estén comprometidos con la misión, visión y el sueño de la organización.', 'Aspectos relacionados con la Selección del personal', 'Ninguna de las anteriores.', '', '', 'b', '2020-06-07 23:19:55', '2020-06-01 09:24:05'),
(173, 11, 1, 'La mayor ventaja competitiva que puede tener una empresa es:', 'El talento humano.', 'El incremento en las ventas de bienes o servicios', 'Las campañas publicitarias y de mercadeo.', 'Todos los anteriores.', '', '', 'a', '2020-06-07 23:20:32', '2020-06-01 09:25:12'),
(174, 11, 1, 'El conjunto de procesos de talento humano integrados y diseñados para atraer, desarrollar, motivar y retener a los empleados de una organización es:', 'El objetivo de las Organizaciones.', 'La Gestión de Talento Humano.', 'El proceso de selección de personal.', 'Ninguna de las anteriores.', '', '', 'b', '2020-06-07 23:21:30', '2020-06-01 09:26:22'),
(175, 11, 1, 'Son objetivos de la gestión o administración de talento humano:', 'Promover el alcance de los objetivos de la organización.', 'Garantizar la eficacia y el máximo desarrollo de los recursos humanos.', 'Identificar y satisfacer las necesidades de los colaboradores de la organización', 'Todos los anteriores.', '', '', 'd', '2020-06-07 23:22:34', '2020-06-01 09:28:00'),
(176, 11, 1, 'La Planificación, el Reclutamiento, la Incorporación, Evaluación, planes de desarrollo entre otros, hacen parte de:', 'Los procesos de Gestión del Talento Humano.', 'El proceso de Contratación', 'Las buenas prácticas del Talento Humano', 'Los principios de la Motivación', '', '', 'a', '2020-06-07 23:22:58', '2020-06-01 09:28:59'),
(177, 11, 1, 'Cómo se denominaba anteriormente al área de Talento Humano?', 'Oficina de Personal', 'Oficina de Recursos Humanos.', '. Todas las anteriores.', 'Ninguna de las anteriores.', '', '', 'b', '2020-06-07 23:23:46', '2020-06-01 09:30:18'),
(178, 11, 1, 'El trabajo en equipo en el estudio de la Gestión del Talento Humano se define como:', 'El medio por el cual se aliviana la carga de trabajo.', 'La capacidad de desenvolverse eficazmente en grupos de trabajo para alcanzar las metas de la organización, contribuyendo y generando un ambiente armónico que permita el consenso.', 'Se refiere a la capacidad de desarrollar las habilidades y competencias de los miembros de su equipo, planificando actividades de desarrollo efectivas, relacionadas con los cargos actuales y futuros.', 'Ninguna de las anteriores.', '', '', 'b', '2020-06-07 23:24:19', '2020-06-01 09:32:08'),
(179, 11, 2, 'La Misión es la declaración del propósito y la razón de ser de la organización. Debe ser clara, concisa y permanecer en la memoria de toda la plantilla de colaboradores.', '', '', '', '', '', '', 'V', '2020-06-01 09:33:16', '2020-06-01 09:33:16'),
(180, 11, 2, 'La misión, la visión, los valores, los objetivos, la implementación del plan, los mecanismos de comunicación, la dirección estratégica y la evaluación de resultados son todos de igual importancia y en conjunto constituyen la hoja de ruta de una organización que pretenda evitar los errores, optimizar su productividad, su competitividad y aumentar su cuota en el mercado año tras año.', '', '', '', '', '', '', 'V', '2020-06-01 09:34:04', '2020-06-01 09:34:04'),
(181, 11, 2, 'En épocas de crisis de las empresas, dé inmediato la respuesta es reducción de personal porque de los análisis se concluye que el problema en este caso es la gente.', '', '', '', '', '', '', 'F', '2020-06-01 09:34:28', '2020-06-01 09:34:28'),
(182, 11, 2, 'Con el paso del tiempo, las organizaciones descubren que resulta más conveniente y menos costoso realizar una nueva contratación que retener a algunos de sus empleados.', '', '', '', '', '', '', 'F', '2020-06-01 09:35:30', '2020-06-01 09:35:30'),
(183, 11, 2, 'Es importante implementar programas que ayuden al crecimiento profesional de sus colaboradores, de esta forma, el beneficio directo lo obtiene su organización al contar con el personal específico y calificado.', '', '', '', '', '', '', 'V', '2020-06-01 09:35:49', '2020-06-01 09:35:49'),
(184, 11, 2, 'Los elementos para el desarrollo del Talento Humano radican en la suma de las capacidades, el compromiso y la acción', '', '', '', '', '', '', 'V', '2020-06-01 09:36:16', '2020-06-01 09:36:16'),
(185, 11, 2, 'Los recursos humanos no son personales ya que, al vincularse la persona a una organización, pasan a ser propiedad de la misma, al igual que otros tipos de recursos: los conocimientos, la experiencia, las habilidades, etc… son patrimonio personal.', '', '', '', '', '', '', 'F', '2020-06-01 09:36:39', '2020-06-01 09:36:39'),
(186, 11, 2, 'La Planificación es la capacidad de atraer y contratar talento; su realización eficaz permite diseñar una estrategia basada en la imagen que proyecta el empleador.', '', '', '', '', '', '', 'F', '2020-06-01 09:36:59', '2020-06-01 09:36:59'),
(187, 11, 2, 'El tiempo que toma sustituir a las personas para cubrir una vacante no es un indicador que permite evaluar la efectividad del área de talento humano para proveer de personal a la empresa.', '', '', '', '', '', '', 'F', '2020-06-01 09:37:24', '2020-06-01 09:37:24'),
(188, 11, 2, 'La labor de atraer y retener a los colaboradores, debe dejarse en manos únicamente del área de Gestión del Talento Humano ya ésta es una de sus principales funciones.', '', '', '', '', '', '', 'F', '2020-06-01 09:37:43', '2020-06-01 09:37:43'),
(189, 12, 1, 'La gestión por competencias es:', 'Es el eje central de una organización, de su selección y contratación depende el éxito de la misma.', 'El enfoque organizacional que busca alinear los talentos y habilidades de sus colaboradores con la visión y el objetivo final de una empresa. Parte de la idea de identificar el perfil perfecto del trabajador para cierto puesto específico y con base en ello crear una dinámica de reclutamiento y capacitación.', 'El procedimiento sistemático por el que se recogen pruebas o evidencias del desempeño profesional de un trabajador, o de los resultados de aprendizaje alcanzados', 'Ninguna de las anteriores', '', '', 'b', '2020-06-07 23:32:45', '2020-06-01 09:43:00'),
(190, 12, 1, 'res objetivos básicos para la implementación del modelo de Gestión por Competencias son', 'Alinear el desarrollo de las personas con los objetivos estratégicos del negocio. Definir las “conductas de éxito” que se requieren para cada posición. Determinar cuál es la brecha entre el desempeño actual y el requerido acorde a las definiciones estratégicas de la empresa.', ' Capacitación, desarrollo y aprendizaje organizacional.', 'Ser flexible, eficaz y concreto en la evaluación de los perfiles de los empleados de una organización.', 'Todos los anteriores', '', '', 'a', '2020-06-07 23:34:35', '2020-06-01 09:45:03'),
(191, 12, 1, 'El reclutamiento y la Selección se efectúan con base en el análisis de:', 'La planeación del talento humano y los planes de carrera', 'Las competencias de cada individuo y su desarrollo en el puesto de trabajo para evaluar resultados', 'Los puestos de trabajo que incluye análisis de competencias, tanto de conocimientos como de conductas.', 'Todas las anteriores', '', '', 'c', '2020-06-07 23:35:31', '2020-06-01 09:46:43'),
(192, 12, 1, 'Entre los beneficios que conlleva la Gestión por competencias podemos destacar:', 'Maximizar el rendimiento de cada uno de los que conforman el equipo de trabajo logrando generar en ellos el sentimiento de ser reconocidos por su esfuerzo y motivados en el cumplimiento de sus tareas.', 'Detectar qué áreas de oportunidad tiene cada persona en el equipo y qué habilidades requiere desarrollar para avanzar a puestos de mayor responsabilidad en la empresa.', 'Fomentar un clima laboral de mutua cooperación y un modelo de liderazgo integrador y comunicativo.', 'Todas las anteriores', '', '', 'd', '2020-06-07 23:35:56', '2020-06-01 09:48:07'),
(193, 12, 1, 'La aplicación de las competencias conlleva a encontrar que:', 'Produce un resultado positivo ya que supone siempre la consecución de un logro.', 'Fomenta el trabajo individual, permitiendo que el individuo se destaque', 'Las organizaciones inviertan muy poco en los procesos de reclutamiento y selección de personal.', 'Que el trabajador dé más relevancia a su retribución salarial que al logro de objetivos laborales.', '', '', 'a', '2020-06-07 23:37:39', '2020-06-01 09:50:46'),
(194, 12, 1, 'Las competencias laborales se clasifican en', 'Generales y Específicas.', 'Reales e Intangibles.', 'Virtuales y Presenciales', 'Ninguna de las anteriores', '', '', 'a', '2020-06-07 23:38:14', '2020-06-01 09:52:57'),
(195, 12, 1, 'La Adaptación al Cambio definida como la capacidad para permanecer eficaz dentro de un medio cambiante, así como a la hora de enfrentarse con nuevas tareas, retos y personas es una Competencia:', 'General.', 'Específica.', 'Organizacional.', 'Tecnológica.', '', '', 'a', '2020-06-07 23:38:32', '2020-06-01 10:12:43'),
(196, 12, 1, 'Las Competencias específicas se dividen en:', 'Intelectuales y Personales.', 'Interpersonales y Organizacionales.', 'Negociación y Liderazgo', 'Todas las anteriores.', '', '', 'c', '2020-06-07 23:38:48', '2020-06-01 10:14:18'),
(197, 12, 1, 'La evaluación de las competencias laborales se podría definir como el proceso por el cual un evaluador recoge evidencias de:', 'Desempeño, producción y conocimiento de una persona con el fin de determinar su nivel de competencia (básico, intermedio o avanzado), para desempeñar una función productiva, centrándose en el desempeño real de las personas y con base en un referente', 'Comportamientos observables y deseables', 'Manejo del entorno laboral.', 'Manjo de presión y situaciones que se salen de la cotidianidad.', '', '', 'a', '2020-06-07 23:39:25', '2020-06-01 10:15:43'),
(198, 12, 1, 'Cuál es la finalidad de la evaluación por competencias', 'Saber qué tipo de trabajador estamos contratando y conocer el es el nivel de los trabajadores en cuanto a sus competencias de desempeño', 'Imponer sanciones de acuerdo a resultados negativos.', 'Definir las funciones propias de un puesto de trabajo.', 'Determinar el monto de los incentivos monetarios.', '', '', 'a', '2020-06-07 23:39:57', '2020-06-01 10:16:56'),
(199, 12, 2, 'Las Competencias Laborales según el enfoque Conductista se definen como las ccaracterísticas del empleado que influyen en el desempeño superior a su trabajo.', '', '', '', '', '', '', 'V', '2020-06-01 10:17:18', '2020-06-01 10:17:18'),
(200, 12, 2, 'Dentro de las técnicas que suelen ser utilizadas para determinar las competencias requeridas encontramos el panel de expertos, las entrevistas, y las entrevistas focalizadas.', '', '', '', '', '', '', 'V', '2020-06-01 10:17:39', '2020-06-01 10:17:39'),
(201, 12, 2, 'os modelos de Competencias existentes se pueden clasificar en tres clases: funcionalista, conductista y constructivista.', '', '', '', '', '', '', 'V', '2020-06-01 10:18:00', '2020-06-01 10:18:00'),
(202, 12, 2, 'l Modelo de Competencias Conductista se origina a partir del análisis y proceso de solución de problemas y disfunciones que se presentan en la organización.', '', '', '', '', '', '', 'F', '2020-06-01 10:18:19', '2020-06-01 10:18:19'),
(203, 12, 2, 'El desarrollo de competencias se define como el conjunto de actividades ligadas a comportamientos objetivos, cuyo entrenamiento es guiado y supone la evolución de una persona en el perfil del rol que ocupa dentro de una organización, y por lo tanto, el progreso de su desempeño', '', '', '', '', '', '', 'V', '2020-06-01 10:18:40', '2020-06-01 10:18:40'),
(204, 12, 2, 'La Competencia Metodológica es el dominio experto de las tareas y contenidos del ámbito de trabajo, así como los conocimientos y destrezas necesarios para ello.', '', '', '', '', '', '', 'F', '2020-06-01 10:19:16', '2020-06-01 10:19:16'),
(205, 12, 2, 'El Método de Evaluación de Competencias 360, Consiste en un sistema para evaluar el desempeño a través de un cuestionario donde pueden expresarse criterios tales como: ¿Qué le gusta del evaluado en relación con los aspectos explorados? ¿Qué no le gusta? ¿Qué le gustaría que sucediera o que modificara en su conducta?, entre otras', '', '', '', '', '', '', 'V', '2020-06-01 10:19:42', '2020-06-01 10:19:42'),
(206, 12, 2, 'El Médodo de evaluación por competencias se utiliza como predictor del desempeño que tendrá la persona en la organización, a partir de su comportamiento pasado', '', '', '', '', '', '', 'V', '2020-06-01 10:20:19', '2020-06-01 10:20:19'),
(207, 12, 2, 'La evaluación de competencias se aplica tanto durante los procesos de enseñanza-aprendizaje que experimenta una persona, como en los procesos laborales', '', '', '', '', '', '', 'F', '2020-06-01 10:20:41', '2020-06-01 10:20:41'),
(208, 12, 2, 'Con la aplicación del modelo de Evaluación de Competencias en la empresa, es posible el establecimiento de políticas más claras de reclutamiento interno, basadas en los resultados de la evaluación, lo que permite seleccionar al candidato adecuado para el puesto de trabajo solicitado', '', '', '', '', '', '', 'V', '2020-06-01 10:21:02', '2020-06-01 10:21:02'),
(210, 13, 1, 'El Proceso de Selección de Personal implica', 'Elegir al mejor.', ' Elegir a a aquellas personas cuyos perfiles se adecuen mejor a las necesidades actuales y futuras de su trabajo en un determinado ambiente', 'Elegir a las personas que demuestren más preparación académica.', 'Ninguna de las anteriores.', '', '', 'b', '2020-06-07 23:48:13', '2020-06-01 10:29:54'),
(211, 13, 1, 'La selección de personal se lleva a cabo a través de cuatro etapas:', 'Publicación de la vacante, recepción de hojas de vida, entrevista y pruebas psicotécnicas.', 'Entrevista, evaluación de la entrevista, contratación e inducción.', 'Análisis y Definición de puestos de trabajo, Reclutamiento, Selección e Incorporación.', 'Ninguna de las anteriores.', '', '', 'c', '2020-06-07 23:48:54', '2020-06-01 10:31:17'),
(212, 13, 1, 'Las Competencias se clasifican en:', 'Conocimientos y habilidades.', 'Actitudes y Aptitudes.', 'Rasgos, Valores y Comportamientos.', 'Ninguna de las anteriores.', '', '', 'b', '2020-06-07 23:49:31', '2020-06-01 10:32:47'),
(213, 13, 1, 'Encontramos diferentes métodos para identificar las competencias laborales. Cualquiera sea el método empleado hay al menos dos requisitos que son comunes a todos ellos:', 'La competencia debe ser identificada a partir del mundo del trabajo, no del mundo de la formación', 'La identificación debe ser un proceso participativo, que garantice la presencia de al menos dos visiones, la del grupo gerencial y la de quienes desempeñan los trabajos.', 'Ninguno de los anteriores.', 'Todos los anteriores', '', '', 'd', '2020-06-07 23:52:17', '2020-06-01 10:34:19'),
(214, 13, 1, 'La evaluación basada en competencias tiene que ser demostrada en forma directa o indirecta y tener las siguientes características:', 'Que se fundamente en criterios previamente determinados.', ' Que se fundamente en evidencias. Las evidencias pueden ser directas, cuando se observa la ejecución de la tares, indirectas que son aquellos documentos escritos, proyectos, y suplementarias que son los reportes de evaluación de terceros.', 'Que sea participativa, trabajadores pueden además involucrarse en el proceso de evaluación.', 'Todas las anteriores', '', '', 'd', '2020-06-07 23:53:25', '2020-06-01 10:35:20'),
(215, 13, 1, 'Las Competencias Esenciales son aquellas que:', 'Influyen en el desarrollo exitoso de las funciones de un colaborador, son las que hacen la diferencia entre un colaborador en comparación con los demás.', 'Hacen que la persona se destaque, son aquellas que cada persona debe alcanzar.', 'Se tienen por naturaleza, las que hacen que un colaborador pueda desarrollar una función de manera normal, sin sobresalir en su desempeño.', 'Ninguna de las anteriores.', '', '', 'c', '2020-06-07 23:58:44', '2020-06-01 10:36:29'),
(216, 13, 1, 'El proceso de Contratación se define como:', 'Es formalizar con apego a la ley, la futura relación de trabajo para garantizar los intereses, derechos y deberes tanto del trabajador como de la empresa.', 'El proceso mediante el cual una organización trata de encontrar candidatos que tengan las competencias establecidas en el perfil correspondiente al cargo vacante.', 'Cubrir el puesto de trabajo con alguien que ya forma parte del grupo de trabajadores de la empresa.', 'Ninguna de las anteriores.', '', '', 'a', '2020-06-07 23:59:23', '2020-06-01 10:38:14'),
(217, 13, 1, 'Los aspectos relativos a la contratación laboral en Colombia, están contemplados en las siguientes normas:', 'El artículo 45 y siguientes del Código Sustantivo del Trabajo', 'Ley 145 de 1976.', 'Es una herramienta que permite flexibilizar la organización, y contribuir a crear ventajas competitivas de la organización.', 'Todas las anteriores.', '', '', 'd', '2020-06-08 00:02:37', '2020-06-01 10:39:17'),
(218, 13, 1, 'Algunos de los beneficios que trae a las organizaciones, la implementación del Sistema de Gestión del Talento Humano por Competencias', 'Facilitar la evaluación del desempeño.', 'Alcanzar un mejor aprovechamiento de las capacidades de la gente.', 'Fomentar un clima laboral de mutua cooperación y un modelo de liderazgo integrador y comunicativo.', 'Todas las anteriores.', '', '', 'd', '2020-06-08 00:03:11', '2020-06-01 10:40:22'),
(219, 13, 2, 'Anteriormente se creía que el desarrollo organizacional correspondía a la especialización de los roles correspondientes a cada cargo y con el pasar de los años dicho concepto fue alimentado y explotado tanto de teorías como de prácticas, aumentando así la visión de la organización.', '', '', '', '', '', '', 'V', '2020-06-01 10:40:44', '2020-06-01 10:40:44'),
(222, 13, 2, 'Cuando se evalúa o se mide el potencial, se puede proyectar un resultado futuro el cual es totalmente incierto, y para poderlo desarrollar, dicho potencial debe ser detectado', '', '', '', '', '', '', 'V', '2020-06-01 10:43:12', '2020-06-01 10:43:12'),
(223, 13, 2, 'La Fuente de Reclutamiento Externa consiste en la promoción y el traslado, o ambas a la vez. El traslado consiste en un cambio dentro de la misma organización en sentido horizontal; normalmente, suele llevar a una mejora económica y de contenido del puesto.', '', '', '', '', '', '', 'F', '2020-06-01 10:43:45', '2020-06-01 10:43:45'),
(224, 13, 2, 'Las pruebas psicométricas se utilizan para recolectar información sobre los postulantes a un cargo, ya que su análisis y evaluación dependen de la información proporcionada por éste y de la habilidad para escuchar del entrevistador', '', '', '', '', '', '', 'F', '2020-06-01 10:44:05', '2020-06-01 10:44:05'),
(225, 13, 2, 'Las empresas sostenibles integran el desarrollo de los recursos humanos en su estrategia y actúan con equidad al desarrollar las calificaciones y competencias de sus empleados, invirtiendo en sus recursos humanos', '', '', '', '', '', '', 'V', '2020-06-01 10:44:39', '2020-06-01 10:44:39'),
(226, 13, 2, 'El desarrollo de las competencias no es fundamental para que la fuerza laboral aumente la productividad del trabajo, se maximicen los conocimientos de los colaboradores, se aprovechen al máximo las habilidades de las personas y se cuente con mayores niveles de satisfacción.', '', '', '', '', '', '', 'F', '2020-06-01 10:45:04', '2020-06-01 10:45:04'),
(227, 13, 2, 'El coaching se utiliza para ayudar a implementar un modelo de seguimiento que permita validar la aplicación y práctica de lo aprendido, desarrollo de sus competencias y habilidades.', '', '', '', '', '', '', 'F', '2020-06-01 10:45:26', '2020-06-01 10:45:26'),
(228, 13, 2, 'El coaching se utiliza para ayudar a implementar un modelo de seguimiento que permita validar la aplicación y práctica de lo aprendido, desarrollo de sus competencias y habilidades.', '', '', '', '', '', '', 'F', '2020-06-01 10:45:43', '2020-06-01 10:45:43'),
(229, 13, 2, '. El Contrato a Término Indefinido es aquel que se pacta por un tiempo de trabajo determinado, que podrá ir desde un día hasta máximo 3 años, pudiendo ser renovado sucesivamente sin que pierda su esencia', '', '', '', '', '', '', 'F', '2020-06-01 10:46:18', '2020-06-01 10:46:18'),
(230, 13, 2, '. El Contrato a Término Indefinido es aquel que se pacta por un tiempo de trabajo determinado, que podrá ir desde un día hasta máximo 3 años, pudiendo ser renovado sucesivamente sin que pierda su esencia', '', '', '', '', '', '', 'F', '2020-06-01 10:51:51', '2020-06-01 10:51:51'),
(231, 13, 2, 'La Gestión por competencias es un modelo que permite evaluar las competencias específicas que requiere un puesto de trabajo, de las personas que lo ejecutan además es una herramienta que permite flexibilizar la organización, y contribuir a crear ventajas competitivas de la organización.', '', '', '', '', '', '', 'V', '2020-06-01 10:52:10', '2020-06-01 10:52:10'),
(232, 13, 2, 'Lograr que el personal al servicio de la organización trabaje para lograr los objetivos de la misma, es uno de los objetivos de la Evaluación del Desempeño por Competencias.', '', '', '', '', '', '', 'V', '2020-06-01 10:52:28', '2020-06-01 10:52:28'),
(233, 14, 1, 'Delegar Funciones consiste en:', 'Dar a un trabajador el poder, la autoridad, la autonomía, la facultad o la responsabilidad para poder tomar decisiones, resolver problemas, desempeñar funciones o ejecutar tareas, siempre con la necesidad de consultar u obtener aprobación.', 'Dar a un trabajador el poder, la autoridad, la autonomía, la facultad o la responsabilidad para poder tomar decisiones, resolver problemas, desempeñar funciones o ejecutar tareas, sin necesidad de consultar u obtener aprobación.', 'Facultar al trabajador únicamente para ejecutar tareas.', 'Ninguna de las anteriores.', '', '', 'b', '2020-06-08 00:07:02', '2020-06-01 10:56:17'),
(234, 14, 1, 'Antes de delegar cualquier actividad o tarea, conviene considerar dos dimensiones críticas:', 'La importancia y la urgencia de la tarea.', 'La idoneidad del candidato que va a recibir la delegación.', 'Las competencias de liderazgo evidenciadas por el trabajador a quien se pretende delegar.', 'Ninguna de las anteriores.', '', '', 'a', '2020-06-08 00:07:29', '2020-06-01 10:57:13'),
(235, 14, 1, 'La delegación de Funciones en Círculo consiste en:', 'Preparar el plan de delegación, con el detalle de las acciones, tareas y funciones a desempeñar junto con los apuntes necesarios de formación que deberá recibir el delegado, también se deben crear los indicadores de los resultados que se quieren obtener en cada uno de los casos', 'Es un círculo vicioso que impedirá que el delegado sea plenamente autónomo y que su superior puedas disponer de ese el tiempo que pretendía conseguir con la delegación.', 'Suponer que la persona delegada se va hacer cargo de las nuevas funciones y será totalmente autónoma en pocos días o en algunas semanas.', 'Ninguna de las anteriores.', '', '', 'b', '2020-06-08 00:08:07', '2020-06-01 10:58:04'),
(236, 14, 1, 'La Motivación es:', 'Un rasgo personal.', 'Un impulso hacia la acción, este impulso puede ser provocado por un estímulo externo o interno.', 'Recibir una correcta retribución acorde con su puesto de trabajo.', 'Ninguna de las anteriores.', '', '', 'b', '2020-06-08 00:08:30', '2020-06-01 10:59:25'),
(237, 14, 1, 'Según el Concepto Típico de la Motivación, se tienen los siguientes elementos:', 'Indiferencia y Motivos', 'Objetivos y Satisfacción', 'Ninguno de los anteriores.', 'Todos los anteriores', '', '', 'd', '2020-06-08 00:08:57', '2020-06-01 11:00:41'),
(238, 14, 1, 'a Motivación Intrínseca está asociada con:', 'Factores externos como las recompensas y los castigos.', 'Con las actividades que son reforzadoras en sí mismas. Lo que nos motiva a hacer algo cuando no tenemos que hacerlo.', 'Ninguna de las anteriores', 'Todas las anteriores.', '', '', 'b', '2020-06-08 00:09:17', '2020-06-01 11:01:33'),
(239, 14, 1, 'Las necesidades fisiológicas y de seguridad contempladas por Maslow son:', 'Las necesidades que se satisfacen en forma Interna.', 'Las necesidades que se satisfacen sobre todo en el exterior (salarios, contratos etc.).', 'Todas las anteriores.', 'Ninguna de las anteriores.', '', '', 'b', '2020-06-08 00:10:09', '2020-06-01 11:02:48'),
(240, 14, 1, 'La Teoría de la Higiene – Motivación fue propuesta por', 'Abraham Maslow.', ' Frederick Herzberg.', 'Clayton Alderfer.', 'Mc Gregor.', '', '', 'b', '2020-06-08 00:10:30', '2020-06-01 11:03:38'),
(241, 14, 1, 'Cuando se trata de grupos se deben tener en cuenta ciertos requisitos básicos para lograr la motivación:', 'Definir cuidadosamente quiénes conformarán el grupo de trabajo.', 'Desplazar a los miembros que no logren adaptarse al grupo.', 'Reconocer cuando se genere una mala situación grupal.', 'Todas las anteriores.', '', '', 'd', '2020-06-08 00:10:53', '2020-06-01 11:04:49'),
(242, 14, 1, 'Las empresas que buscan la Motivación de sus trabajadores y lograr retenerlos realizan actividades motivacionales entre las que pueden destacarse las siguientes', 'Establecer metas y objetivos.', 'Premiar logros y poner incentivos.', 'Formación a los trabajadores.', 'Todas las anteriores.', '', '', 'b', '2020-06-08 00:11:20', '2020-06-01 11:05:48'),
(243, 14, 2, 'Se ha comprobado que una sola persona no puede llevar el peso de todas las decisiones y operaciones de una empresa; por eso, delegar es una alternativa viable y conveniente. Delegar resulta más importante de lo que podría pensarse, porque no siempre los líderes tienen la posibilidad de cumplir con todas las responsabilidades o funciones de una empresa.', '', '', '', '', '', '', 'V', '2020-06-01 11:06:12', '2020-06-01 11:06:12'),
(244, 14, 2, 'Si una tarea es tanto urgente como importante, deberíamos delegarla a otro miembro de nuestro grupo de trabajo.', '', '', '', '', '', '', 'F', '2020-06-01 11:06:39', '2020-06-01 11:06:39'),
(245, 14, 2, 'Delegar es lo mismo que mandar u ordenar.', '', '', '', '', '', '', 'F', '2020-06-01 11:06:56', '2020-06-01 11:06:56');
INSERT INTO `preguntas` (`id`, `id_modulo`, `tipo`, `pregunta`, `a`, `b`, `c`, `d`, `e`, `f`, `respuesta`, `created_at`, `updated_at`) VALUES
(246, 14, 2, '. El conocimiento de objetivos: el trabajador que conoce a fondo los objetivos de la organización, de su área y de su cargo resulta estar más motivado que aquel que los desconoce o apenas lo hace superficialmente.', '', '', '', '', '', '', 'V', '2020-06-01 11:07:14', '2020-06-01 11:07:14'),
(248, 14, 2, 'La Motivación es lo mismo que la satisfacción, porque la motivación activa y dirige el comportamiento del trabajador para alcanzar una determinada meta', '', '', '', '', '', '', 'F', '2020-06-01 11:12:24', '2020-06-01 11:12:24'),
(249, 14, 2, 'Los responsables de grupos de trabajo deben considerar que sus motivos son los de sus colaboradores, y que sus colaboradores deben tener motivos similares', '', '', '', '', '', '', 'F', '2020-06-01 11:13:01', '2020-06-01 11:13:01'),
(250, 14, 2, 'La Teoría “Y” de Mc Gregor establece que la sanción negativa permite obtener de las personas, el esfuerzo necesario para alcanzar los objetivos. En este sentido, la Organización debe ser apremiante y coactiva', '', '', '', '', '', '', 'F', '2020-06-01 11:13:22', '2020-06-01 11:13:22'),
(251, 14, 2, 'La Teoría de Vroom establece que el modelo de Motivación actúa en función de necesidades no satisfechas o de la aplicación de recompensas y castigos.', '', '', '', '', '', '', 'F', '2020-06-01 11:13:41', '2020-06-01 11:13:41'),
(252, 14, 2, 'La Fuente de la Motivación Trascendente considera que lo que motiva es ayudar a otros y contribuir en una causa que les parece más importante, que lo que ellos mismos pueden ganar.', '', '', '', '', '', '', 'V', '2020-06-01 11:13:59', '2020-06-01 11:13:59'),
(253, 14, 2, 'La clave del éxito empresarial está en entender el trabajo como una contraprestación de servicios, donde cada uno aporta lo suyo, sin necesidad de aportar acciones de motivación', '', '', '', '', '', '', 'F', '2020-06-01 11:14:44', '2020-06-01 11:14:44'),
(254, 15, 1, 'Para garantizar la calidad del servicio de Atención al Cliente, debemos estar capacitados para:', 'Mantener a un cliente existente.', 'Detectar las expectativas del cliente.', 'Las respuestas a y b', 'Ninguna de las anteriores.', '', '', 'c', '2020-06-08 00:13:39', '2020-06-01 11:19:18'),
(255, 15, 1, 'El Servicio es:', 'Un bien físico y tangible.', 'El equivalente no material de un bien.', 'El equivalente no material de un bien.', 'Las respuestas b y c.', '', '', 'd', '2020-06-08 00:14:01', '2020-06-01 11:20:15'),
(256, 15, 1, 'La cultura de servicio en una organización es:', 'Un conjunto de valores compartidos y creencias que le dan sentido a sus miembros.', 'Una serie de ideales compartidos que se constituyen en normas y lineamientos aplicados al quehacer y al trabajo diario.', 'Todas las anteriores.', 'Ninguna de las anteriores.', '', '', 'c', '2020-06-08 00:14:33', '2020-06-01 11:21:50'),
(257, 15, 1, 'Los elementos tangibles de la cultura de servicio en la organización están conformados por:', 'Los sentimientos hacia la organización, los miedos y temores, creencias, supersticiones y actitudes.', ' Por todas aquellas, creencias, valores, normas, dogmas, conductas, simbolismos, eslogan y mensajes que definen a la organización.', 'Todas las anteriores.', 'Ninguna de las anteriores.', '', '', 'b', '2020-06-08 00:15:43', '2020-06-01 11:23:15'),
(258, 15, 1, 'El servicio de atención al cliente puede definirse como:', 'Una eficiente política de contratación y evaluación constante del personal de la organización.', 'La forma de relacionarse de una empresa con sus clientes o futuros clientes.', 'La presentación del mensaje de ventas', 'Ninguna de las anteriores.', '', '', 'b', '2020-06-08 00:16:33', '2020-06-01 11:24:42'),
(259, 15, 1, 'En la antigua Roma se definía al cliente como:', 'Una persona u organización que, voluntariamente, recibe algo a cambio de otra cosa que entrega.', ' Aquel individuo económicamente inferior, quien se ponía al servicio de uno de mayor rango en una relación, que no estaba regulada y que otorgaba, al de mayor rango, un importante prestigio social.', 'Ninguna de las anteriores', 'Todas las anteriores.', '', '', 'b', '2020-06-08 00:17:40', '2020-06-01 11:33:08'),
(260, 15, 1, 'En las áreas de Mercadeo se define al Cliente como:', 'El cliente es el activo más valioso que posee una organización.', 'La persona, empresa u organización que adquiere o compra de forma voluntaria productos o servicios que necesita o desea para sí mismo, para otra persona o para una empresa u organización.', 'Todas las anteriores.', 'Ninguna de las anteriores', '', '', 'c', '2020-06-08 00:18:42', '2020-06-01 11:34:04'),
(261, 15, 1, 'Cliente Potencial es:', 'La persona que paga por adquirir un bien o servicio de nuestra empresa.', 'La persona, empresa u organización que puede llegar a adquirir el producto o servicio que le ofrece nuestra empresa', 'La persona que adquirió bienes o servicios en nuestra empresa, pero no volvió a adquirirlos.', 'Ninguna de las anteriores.', '', '', 'b', '2020-06-08 00:19:13', '2020-06-01 11:35:14'),
(262, 15, 1, 'El área de servicio de Atención al cliente se encarga de', 'Principalmente de atender las quejas y reclamos.', 'El trato que le damos al cliente cuando interactuamos con él.', 'Todas las anteriores.', 'Ninguna de las anteriores.', '', '', 'b', '2020-06-08 00:19:46', '2020-06-01 11:36:19'),
(263, 15, 1, 'La Teoría de los Momentos de la Verdad plantea que:', 'Un momento de verdad es el instante en que el cliente tiene contacto con la organización, ya sea con las personas o las cosas que identifican a la organización.', 'Los momentos de Verdad son positivos o negativos en sí mismos.', 'Todas las anteriores.', 'Ninguna de las anteriores.', '', '', 'a', '2020-06-08 00:21:26', '2020-06-01 11:37:29'),
(264, 15, 1, 'Los tipos de comunicación en el Servicio de atención al Cliente son:', 'Telefónica y Presencial', 'Telemática y Videoconferencias.', 'Todas las anteriores.', 'Ninguna de las anteriores.', '', '', 'c', '2020-06-08 00:21:45', '2020-06-01 11:50:13'),
(266, 15, 1, 'El elemento fundamental en el Proceso de Atención al Cliente es:', 'El ofrecimiento de bonos y promociones.', 'La personalización de la atención.', 'la atención telefónica.', 'Ninguna de las anteriores.', '', '', 'b', '2020-06-08 00:22:31', '2020-06-01 11:56:05'),
(267, 15, 2, 'El Servicio al Cliente es lo mismo que la Atención al Cliente', '', '', '', '', '', '', 'F', '2020-06-01 11:57:06', '2020-06-01 11:57:06'),
(268, 15, 2, 'La cultura de servicio al Cliente no es propiedad de unos pocos empleados que se encuentran en contacto directo con los usuarios de los servicios. Todas las áreas deben estar involucradas para que la cultura de servicio sea real.', '', '', '', '', '', '', 'V', '2020-06-01 11:57:28', '2020-06-01 11:57:28'),
(269, 15, 2, 'Es más rentable captar nuevos clientes que conservar los antiguos', '', '', '', '', '', '', 'F', '2020-06-01 11:58:19', '2020-06-01 11:58:19'),
(271, 15, 2, 'Candidatos Desechados o en Pausa: Son aquellos que se rechazan porque, aunque tengan la predisposición o interés por adquirir el producto o servicio, no tienen la capacidad económica para efectuar la compra.', '', '', '', '', '', '', 'V', '2020-06-01 12:02:03', '2020-06-01 12:02:03'),
(272, 15, 2, 'Según Maslow, se deben satisfacer las necesidades del primer nivel para poder sentir las del segundo, y así sucesivamente.', '', '', '', '', '', '', 'V', '2020-06-01 12:02:38', '2020-06-01 12:02:38'),
(273, 15, 2, 'Si queremos hablar de un Servicio de atención al cliente de calidad, los conceptos: “atención y servicio”, deben formar una relación indisoluble que los vuelve uno solo.', '', '', '', '', '', '', 'V', '2020-06-01 12:03:04', '2020-06-01 12:03:04'),
(274, 15, 2, 'La comunicación no verbal permite la transmisión de pensamientos, ideas, opiniones mediante el uso de la palabra.', '', '', '', '', '', '', 'F', '2020-06-01 12:03:24', '2020-06-01 12:03:24'),
(275, 15, 2, 'Debemos asumir la totalidad de la responsabilidad en los casos en los que el cliente se siente insatisfecho con el producto o servicio adquirido.', '', '', '', '', '', '', 'F', '2020-06-01 12:03:44', '2020-06-01 12:03:44'),
(276, 16, 1, 'La Gestión de Calidad en el Servicio de Atención al Cliente puede definirse como:', 'Mantener a un cliente existente', 'Detectar las expectativas del cliente.', 'Las respuestas a y b', 'Ninguna de las anteriores.', '', '', 'c', '2020-06-08 00:34:58', '2020-06-01 15:20:36'),
(277, 16, 1, 'Los Tipos de Clientes según las Teorías de Mercadeo, son:', 'Clientes Actuales y Clientes Potenciales.', 'Clientes Actuales y Clientes enfocados en el Precio', 'Clientes Impulsivos y Clientes Compulsivos', 'Cliente Platino y Cliente Oro', '', '', 'a', '2020-06-08 00:35:15', '2020-06-01 15:21:30'),
(278, 16, 1, 'Los Clientes exigente son:', 'Son los que harán generar más ventas y beneficios', ' Son aquellos que han comprado o han solicitado los servicios y por estar satisfechos con ellos realizan una difusión positiva de los mismos en sus círculos.', 'Son aquellos que a veces piden cosas imposibles o que no están dentro de los servicios o productos de la compañía.', 'Ninguna de las anteriores.', '', '', 'c', '2020-06-08 00:35:47', '2020-06-01 15:22:52'),
(279, 16, 1, 'El triángulo del servicio contiene los siguientes elementos fundamentales en toda organización:', 'El Cliente y la Estrategia', 'La Gente y los Sistemas', 'Todas las anteriores', 'Ninguna de las anteriores', '', '', 'c', '2020-06-08 00:36:31', '2020-06-01 15:23:48'),
(280, 16, 1, 'Los elementos Fundamentales del servicio de atención al cliente son', 'Contacto Cara a Cara y Relación con el Cliente.', 'Correspondencia, Reclamos e Incumplimientos.', 'Instalaciones.', 'Todas las anteriores.', '', '', 'd', '2020-06-08 00:36:56', '2020-06-01 15:24:39'),
(281, 16, 1, 'Los elementos de Calidad en el Servicio de Atención al Cliente son', 'Seguridad, credibilidad, comunicación, comprensión', 'Accesibilidad cortesía, profesionalismo', 'Capacidad de respuesta, Fiabilidad y Elementos Tangibles.', 'Todas las anteriores.', '', '', 'd', '2020-06-08 00:37:22', '2020-06-01 15:25:33'),
(282, 16, 1, 'El Organigrama como elemento facilitador de la Atención al Cliente es', 'Es un listado del personal que se labora en la empresa, clasificado en orden alfabético', 'Es la representación gráfica de la estructura de la organización o empresa que representa los diversos elementos del grupo y sus relaciones respectivas.', 'Es un formato que permite anotar y verificar las llamadas solicitadas diariamente por la empresa', 'Ninguna de las anteriores', '', '', 'b', '2020-06-08 00:37:50', '2020-06-01 15:26:21'),
(283, 16, 1, 'Los Clientes como factor fundamental de las empresas determinan:', 'Los precios de venta de las empresas', 'Los ingresos de las empresas', 'Los beneficios de las empresas', 'Todas las anteriores.', '', '', 'd', '2020-06-08 00:38:14', '2020-06-01 15:27:20'),
(284, 16, 1, 'Tener suficiente información sobre los clientes actuales y potenciales ayudará a:', 'Desarrollar una estrategia integral para diseñar y mejorar los procesos internos y externos', 'Generar una experiencia de compras simple, rápida y placentera', 'Crear nuevas líneas de negocio, crear nuevos productos y servicios, darnos a conocer, etc..', '', '', '', 'a', '2020-06-08 00:38:38', '2020-06-01 15:28:08'),
(285, 16, 1, 'La Gestión de Calidad en el Servicio de Atención al Cliente puede definirse como', 'Consiste en cumplir expectativas del cliente', 'Son los requerimientos que satisfacen las necesidades y deseos del cliente en la contratación y en el uso', 'Las actividades secundarias que realice una empresa para optimizar la satisfacción que reciba el cliente en sus actividades primarias (o principales', 'Todas las anteriores', '', '', 'd', '2020-06-08 00:39:06', '2020-06-01 15:29:15'),
(286, 16, 1, 'Existen varios factores que pueden ayudar a las empresas a destacarse sobre sus competidores:', 'Proveer un producto o servicio único, diferente y de calidad, que cubra las necesidades del cliente', 'Acertar con el precio del producto o servicio', 'Ofrecer un servicio de atención al cliente excelente', 'Todas las anteriores', '', '', 'd', '2020-06-08 00:39:23', '2020-06-01 15:30:40'),
(287, 16, 1, 'Un enfoque para desarrollar e implementar un sistema de gestión de la calidad comprende diferentes etapas:', 'Determinar las necesidades y expectativas de los clientes y de otras partes interesadas', 'Establecer la política y objetivos de la calidad de la organización', 'Determinar y proporcionar los recursos necesarios para el logro de los objetivos de la calidad', 'Todas las anteriores', '', '', 'd', '2020-06-08 00:40:36', '2020-06-01 15:31:27'),
(288, 16, 2, 'El Cliente Actual es el que genera el volumen de ventas actual, por tanto, es la fuente de los ingresos que percibe la empresa en la actualidad y es la que le permite tener una determinada participación en el mercado.', '', '', '', '', '', '', 'V', '2020-06-01 15:31:48', '2020-06-01 15:31:48'),
(289, 16, 2, 'Los Clientes complacidos son aquellos que percibieron el desempeño de la empresa, el producto y el servicio como coincidentes con sus expectativas.', '', '', '', '', '', '', 'F', '2020-06-01 15:34:20', '2020-06-01 15:34:20'),
(290, 16, 2, 'Los Clientes potenciales son aquellos que no realizan compras a la empresa en la actualidad pero que son visualizados como posibles clientes en el futuro porque tienen la disposición necesaria, el poder de compra y la autoridad para comprar.', '', '', '', '', '', '', 'V', '2020-06-01 15:34:37', '2020-06-01 15:34:37'),
(291, 16, 2, 'El triángulo del servicio contiene cuatro elementos fundamentales en toda organización', '', '', '', '', '', '', 'V', '2020-06-01 15:34:58', '2020-06-01 15:34:58'),
(292, 16, 2, 'Los flujos de dinero que reciben las empresas por la venta de sus productos están determinados por la fidelidad de sus clientes.', '', '', '', '', '', '', 'V', '2020-06-01 15:35:16', '2020-06-01 15:35:16'),
(293, 16, 2, 'Las empresas que tratan la atención al cliente como un costo y no como una inversión, llevan a cabo una excelente gestión de calidad en el servicio.', '', '', '', '', '', '', 'F', '2020-06-01 15:35:31', '2020-06-01 15:35:31'),
(294, 16, 2, 'Un acuerdo de nivel de servicio tiene por objeto fijar el precio acordado como pago para el servicio comprometido.', '', '', '', '', '', '', 'F', '2020-06-01 15:35:46', '2020-06-01 15:35:46'),
(295, 16, 2, 'La satisfacción del cliente en la norma ISO 14001 llega a ser tan importante que incluso en la propia norma existe un capítulo dedicado a este asunto.', '', '', '', '', '', '', 'F', '2020-06-01 15:36:26', '2020-06-01 15:36:26'),
(296, 17, 1, 'Los aspectos más valorados por los clientes en la relación con una empresa son:', 'Amabilidad, Proactividad, Rapidez, Atención Personalizada y Resultados Positivos', 'Amabilidad, Proactividad, Rapidez y Resultados Positivos', 'Atención Personalizada y Resultados Positivos.', 'Ninguna de las anteriores.', '', '', 'a', '2020-06-08 00:42:27', '2020-06-01 15:39:01'),
(297, 17, 1, 'La comunicación extra-verbal es:', 'Aquella que involucra claramente las expresiones habladas, los dichos, las formas de decir, los tonos de la voz y el ritmo de una conversación.', 'Aquella que, si bien no involucra expresiones verbales, logra realizar una comunicación a través de la actitud corporal, los gestos, las miradas, la sonrisa, etc.', 'Todo aquello que comunicamos a los clientes a través de las cartas, los e-mails y hasta los textos publicitarios de un folletero corporativo.', 'Ninguna de las anteriores.', '', '', 'b', '2020-06-08 00:42:53', '2020-06-01 15:39:50'),
(298, 17, 1, 'te la crítica del cliente por algún error, la actitud correcta consiste en', 'Escuchar activamente y resumir su contenido para asegurar la comprensión.', 'Manifestar la voluntad de mejorar, a partir de la crítica.', 'Justificar o explicar los motivos del error', 'Las respuestas a y b.', 'Todas las anteriores', '', 'd', '2020-06-08 00:44:32', '2020-06-01 15:40:54'),
(299, 17, 1, 'Dentro del canal de comunicación de la Web con el cliente, encontramos los siguientes medios', 'Email, Chat, Foros, FAQs, Redes Sociales y Aplicaciones de Mensajería.', 'Email, Chat y Formularios', 'Todas las anteriores', 'Ninguna de las anteriores', '', '', 'a', '2020-06-08 00:45:58', '2020-06-01 15:41:46'),
(300, 17, 1, 'Las FAQs son:', 'Un servicio de asistencia en tiempo real rápido y eficaz, que puede tener una atención de 24 horas o unos horarios concretos fijados por la empresa.', 'Correspondencia, Reclamos e Incumplimientos.', 'Las secciones de “Preguntas Frecuentes” que las empresas suelen tener en sus páginas web', 'Ninguna de las anteriores', '', '', 'c', '2020-06-08 00:46:50', '2020-06-01 15:43:12'),
(301, 17, 1, 'Los beneficios de comunicarnos a través de los nuevos canales son:', 'Accesibilidad y Ahorro de tiempo.', 'Participación y Relevancia.', 'Transparencia y Efectividad.', 'Todas las anteriores.', '', '', 'd', '2020-06-08 00:47:18', '2020-06-01 15:44:07'),
(302, 17, 1, 'El departamento de Atención al Cliente interviene en las siguientes áreas:', 'Consecución y fidelización de los clientes.', 'Marcar las tendencias del mercado.', 'Detectar rápidamente la entrada de la competencia', 'Todas las anteriores', '', '', 'd', '2020-06-08 00:47:40', '2020-06-01 15:44:55'),
(303, 17, 1, 'El Organigrama del Departamento de Atención al Cliente está compuesto por:', 'Gerente o Director, Coordinador o Supervisor y Analistas.', 'Operadores Telefónicos o Tele operadores.', 'Gerente o Director, Coordinador o Supervisor, Analistas y Operadores Telefónicos o Tele operadores.', 'Ninguna de las anteriores.', '', '', 'c', '2020-06-08 00:48:05', '2020-06-01 15:45:45'),
(304, 17, 1, 'La función más importante del Departamento de Atención al Cliente consiste en', 'Gestionar el conjunto de actividades y tareas diseñadas en la empresa con la finalidad de atender a los clientes.', 'Atender las llamadas de quejas, reclamos y sugerencias', 'Vender los productos o servicios de la empresa a través de los principales medios de comunicación.', 'Ninguna de las anteriores', '', '', 'a', '2020-06-08 00:49:28', '2020-06-01 15:47:51'),
(305, 17, 1, '¿Qué significa CRM?', 'Customer Relationship Management.', 'Gestión de Relaciones con el Cliente', 'Un conjunto de estrategias, procesos y políticas empresariales, que se enfocan en la satisfacción del cliente y conllevan a que toda actividad de la empresa gire alrededor de él.', 'Todas las anteriores.', '', '', 'd', '2020-06-08 00:50:05', '2020-06-01 15:48:44'),
(306, 17, 1, 'El Mercadeo Relacional, es una tendencia actual que consiste en:', 'Realizar actividades de apoyo al cliente', 'Prestar agilidad a las llamadas de ventas.', 'Relacionar el mercadeo con el consumidor investigando los segmentos del mercado para averiguar lo que los clientes tienen en común.', '', '', '', 'c', '2020-06-08 00:50:35', '2020-06-01 15:49:31'),
(307, 17, 1, '¿Que son las PQRS?', 'Es una herramienta, mediante la cual, las compañías, disponen de un número ilimitado de expertos en los servicios o productos, que dichas compañías ofrecen al mercado, para identificar las oportunidades de mejora.', 'Es el proceso mediante el cual, una compañía hace la gestión de las peticiones, quejas, reclamos y sugerencias que hacen los clientes.', 'Todas las anteriores.', 'Ninguna de las anteriores.', '', '', 'c', '2020-06-08 00:51:19', '2020-06-01 15:50:21'),
(308, 17, 2, 'La falta de comunicación entre los encargados de atender a un cliente que quiere resolver cuanto antes una incidencia, es el problema menos frecuente entre las pequeñas y grandes empresas.', '', '', '', '', '', '', 'F', '2020-06-01 15:50:43', '2020-06-01 15:50:43'),
(309, 17, 2, 'ólo las grandes compañías deberían contar con un departamento de atención al cliente o algún profesional o contacto al que el consumidor se pueda dirigir si tiene alguna duda o problema.', '', '', '', '', '', '', 'F', '2020-06-01 15:51:00', '2020-06-01 15:51:00'),
(310, 17, 2, 'La Apatía refleja el entusiasmo y la motivación que el encargado tiene para comprender las necesidades de los clientes.', '', '', '', '', '', '', 'F', '2020-06-01 15:51:15', '2020-06-01 15:51:15'),
(311, 17, 2, '.El triángulo del servicio contiene cuatro elementos fundamentales en toda organización.', '', '', '', '', '', '', 'V', '2020-06-01 15:51:31', '2020-06-01 15:51:31'),
(312, 17, 2, 'El teléfono ya no es una herramienta muy utilizada y conocida para contactar con las empresas.', '', '', '', '', '', '', 'F', '2020-06-01 15:51:52', '2020-06-01 15:51:52'),
(313, 17, 2, 'El departamento de atención al cliente debe ser un área de trabajo aislada en una organización', '', '', '', '', '', '', 'F', '2020-06-01 15:52:07', '2020-06-01 15:52:07'),
(314, 17, 2, 'El Departamento de Servicio al Cliente está compuesto por dos áreas estratégicas: Sección de Información y Sección de Quejas.', '', '', '', '', '', '', 'V', '2020-06-01 15:52:38', '2020-06-01 15:52:38'),
(315, 17, 2, 'Todo usuario tiene derecho a presentar peticiones, quejas, reclamos y sugerencias, tal como lo señala la Constitución Política de Colombia, el Código Contencioso Administrativo y la Circular Única de la Superintendencia de Industria y Comercio.', '', '', '', '', '', '', 'V', '2020-06-01 15:53:07', '2020-06-01 15:53:07'),
(316, 18, 1, 'El aspecto más importante que una empresa puede ofrecerla sus clientes para darles una excelente atención, es:', 'Valorar y gestionar su tiempo', 'Atención Personalizada y Resultados Positivos', 'Entrega de bonos y cupones por fidelidad', 'Ninguna de las anteriores', '', '', 'a', '2020-06-08 00:52:40', '2020-06-01 15:59:05'),
(317, 18, 1, 'El concepto de “control percibido” por el cliente significa:', 'Hace referencia al tiempo de espera al que se ve sometido el cliente.', 'Se refiere a llevar al cliente a realizar alguna tarea durante el tiempo de espera.', 'El cliente percibe tener el control del servicio, de esta forma considerará el tiempo transcurrido con mucha más benevolencia.', 'Todas las anteriores.', '', '', 'd', '2020-06-08 00:52:57', '2020-06-01 16:00:07'),
(318, 18, 1, '¿Cuáles son los métodos para evaluar la satisfacción del cliente?', 'Buzón de Sugerencias, Panel y Encuestas.', 'Comprador espía, Clientes Perdidos.', 'Las respuestas a y b.', 'Ninguna de las anteriores', '', '', 'c', '2020-06-08 00:53:25', '2020-06-01 16:01:21'),
(319, 18, 1, 'Las Técnicas de Medición de la Satisfacción del Cliente son:', 'Medición Directa y Medición Indirecta.', 'Chat y Encuestas', 'Todas las anteriores', 'Ninguna de las anteriores', '', '', 'a', '2020-06-08 00:53:54', '2020-06-01 16:02:09'),
(320, 18, 1, 'Existen muchas razones por las que se puede entrar en conflicto con los clientes y estas son algunas de ellas:', 'Falta de resultado y de entendimiento.', 'Precios altos e Impuntualidad en la entrega de los productos o servicios', 'Mala o falta de atención al cliente en los medios sociales', 'Todas las anteriores.', '', '', 'd', '2020-06-08 00:54:17', '2020-06-01 16:04:07'),
(321, 18, 1, 'El deterioro de la reputación de una empresa puede evitarse si:', 'Se atienden y se atacan cuanto antes los problemas con los clientes.', 'Se realizan grandes campañas publicitarias.', 'Se invierten muchos recursos en la adecuación de la infraestructura.', '', '', '', 'a', '2020-06-08 00:54:30', '2020-06-01 16:05:09'),
(322, 18, 1, 'Para definir la periodicidad de medición de la satisfacción de los clientes, la organización debe tener en cuenta los siguientes aspectos:', 'El tipo y el ciclo de vida del producto o servicio.', 'Los costos asociados al proceso de medición.', 'La velocidad de cambio de los mercados (y, por ende, de las necesidades y expectativas de los clientes)', 'Todas las anteriores.', '', '', 'd', '2020-06-08 00:54:54', '2020-06-01 16:06:01'),
(323, 18, 1, 'Según los analistas, los grandes líderes digitales identifican como las tecnologías digitales transformadoras, las siguientes:', 'La Nube y el Big Data.', 'La Movilidad, las Redes Sociales y la Inteligencia Artificial.', 'Todas las anteriores.', 'Ninguna de las anteriores', '', '', 'c', '2020-06-08 00:55:30', '2020-06-01 16:06:49'),
(324, 18, 1, 'Los modelos de relaciones similares a lo que haría un humano para buscar información sobre algo que le interesa es:', 'Inteligencia Artificial.', 'Big Data.', 'La Nube.', 'Ninguna de las anteriores.', '', '', 'a', '2020-06-08 00:56:02', '2020-06-01 16:07:34'),
(325, 18, 1, 'La tendencia de comunicación que permite a las empresas ofrecer a sus clientes la oportunidad de probar los productos antes de la compra.', 'La realidad aumentada.', 'El internet de las Cosas.', 'Ninguna de las anteriores,', 'Todas las anteriores.', '', '', 'a', '2020-06-08 00:56:21', '2020-06-01 16:08:37'),
(326, 18, 1, 'La experiencia Omnicanal es:', 'Crear una mejor experiencia del cliente, lo que lleva a una mayor fidelidad a la marca y una mayor probabilidad de compra. Se trata de utilizar tácticas que aprovechen mejor los canales que se han creado proporcionando al usuario una experiencia más consistente.', 'Prestar agilidad a las llamadas de ventas.', 'Relacionar el mercadeo con el consumidor investigando los segmentos del mercado para averiguar lo que los clientes tienen en común.', 'Todas las anteriores.', '', '', 'a', '2020-06-08 00:56:57', '2020-06-01 16:09:38'),
(327, 18, 1, 'El análisis de Big Data ayuda a las organizaciones a:', 'Acceder a los servicios desde cualquier dispositivo, desde un teléfono móvil, tableta, computador, etc.', 'Aprovechar sus datos y utilizarlos para identificar nuevas oportunidades', 'Todas las anteriores.', 'Ninguna de las anteriores.', '', '', 'b', '2020-06-08 00:57:23', '2020-06-01 16:10:23'),
(328, 18, 2, 'Hacer esperar a los clientes puede llevar a la pérdida de éstos, haciendo que las empresas que ofrecen atención al cliente en tiempo real sean los verdaderos conquistadores de la experiencia de los clientes', '', '', '', '', '', '', 'V', '2020-06-01 16:10:40', '2020-06-01 16:10:40'),
(329, 18, 2, '. Transformar tiempos “fuera de control” en tiempos gestionados por el cliente, se consigue cuando se le asigna alguna tarea al cliente durante un tiempo fuera de control, tarea que él perciba como valiosa para la recepción del servicio.', '', '', '', '', '', '', 'V', '2020-06-01 16:10:55', '2020-06-01 16:10:55'),
(330, 18, 2, 'No es bueno que el cliente pueda conocer el tiempo aproximado de espera hasta recibir el servicio que está esperando', '', '', '', '', '', '', 'F', '2020-06-01 16:11:11', '2020-06-01 16:11:11'),
(331, 18, 2, 'La motivación del trabajador es un factor irrelevante en la atención al cliente', '', '', '', '', '', '', 'F', '2020-06-01 16:11:34', '2020-06-01 16:11:34'),
(332, 18, 2, 'No hace falta tener experiencia comercial para trabajar en la atención al Cliente.', '', '', '', '', '', '', 'F', '2020-06-01 16:11:52', '2020-06-01 16:11:52'),
(333, 18, 2, 'Los problemas que los clientes nos relatan por lo general han sido causados por nosotros y las quejas van dirigidas de manera personal al equipo de atención al cliente', '', '', '', '', '', '', 'F', '2020-06-01 16:12:07', '2020-06-01 16:12:07'),
(334, 18, 2, 'El cómputo en la nube es lo mismo que outsourcing de TI o servicios administrados', '', '', '', '', '', '', 'F', '2020-06-01 16:12:22', '2020-06-01 16:12:22'),
(335, 18, 2, 'La innovación en la transformación digital en la atención al Cliente se resuelve solo desde la tecnología', '', '', '', '', '', '', 'F', '2020-06-01 16:12:39', '2020-06-01 16:12:39'),
(336, 19, 1, '¿Qué es el manejo defensivo?', 'Es un conjunto de procedimientos y técnicas establecidos que el conductor debe seguir para manejar de forma segura', 'Es el conjunto de normas para defenderme de los conductores que quieren atacarme.', 'Es la forma de conducir más peligrosa que hay', '', '', '', 'a', '2020-06-05 07:45:58', '2020-06-02 03:11:04'),
(340, 19, 1, '¿Cuáles son los 3 factores que influyen en la seguridad vial?', 'Social / Psicológico /Económico', 'Natural / Vial / Común', 'Humano / Vehículo / Condiciones adversas del ambiente', '', '', '', 'c', '2020-06-05 07:47:14', '2020-06-02 03:15:14'),
(341, 19, 2, 'Un conductor que se sienta cansado, podrá mejorar si se toma una pastilla y una bebida energetizante', '', '', '', '', '', '', 'F', '2020-06-02 03:15:43', '2020-06-02 03:15:43'),
(342, 19, 2, 'Los siguientes son distracciones al conducir: fumar, escuchar la radio y contemplar el paisaje.', '', '', '', '', '', '', 'V', '2020-06-02 03:16:13', '2020-06-02 03:16:13'),
(343, 19, 2, 'En la noche se ve el 70% de lo que se ve en el día.', '', '', '', '', '', '', 'F', '2020-06-02 03:16:35', '2020-06-02 03:16:35'),
(344, 19, 2, 'Si en la noche viene en sentido contrario al mío un auto con las luces altas, yo también las debo poner igual.', '', '', '', '', '', '', 'F', '2020-06-02 03:17:00', '2020-06-02 03:17:00'),
(345, 19, 2, 'Es importante antes de salir de casa, revisar el nivel del agua, del líquido de frenos y del aceite.', '', '', '', '', '', '', 'V', '2020-06-02 03:17:22', '2020-06-02 03:17:22'),
(346, 19, 2, 'Si tengo llantas de marca, funcionan igual en piso seco y mojado', '', '', '', '', '', '', 'F', '2020-06-02 03:17:46', '2020-06-02 03:17:46'),
(347, 19, 2, 'Si hay agua en la vía por inundación, acelero para pasar más rápido', '', '', '', '', '', '', 'F', '2020-06-02 03:18:07', '2020-06-02 03:18:07'),
(348, 19, 2, 'El manejo defensivo da la posibilidad de reaccionar de mejor manera ante cualquier posible improvisto que se presente en la vía.', '', '', '', '', '', '', 'V', '2020-06-02 03:18:27', '2020-06-02 03:18:27'),
(349, 20, 1, 'El conocimiento por parte de los ciudadanos y ciudadanas de las normas y señales que regulan la circulación de vehículos y personas, por las calzadas y aceras, se llama', 'Seguridad Vial', 'Normas preventivas', 'Participación ciudadana', 'Ninguna de las anteriores', '', '', 'a', '2020-06-05 07:49:17', '2020-06-02 03:41:36'),
(350, 20, 1, 'Los elementos de la circulación vial, son:', 'Los semáforos, las calles y los buses', 'Las Personas, Los Vehículos de transporte terrestre y la vía', 'Los carros, bicicletas y motos', 'Ninguna de las anteriores', '', '', 'b', '2020-06-05 07:51:08', '2020-06-02 03:42:50'),
(351, 20, 1, 'Los vehículos de transporte terrestre se clasifican en:', 'Carros, buses, motos', 'Público y particular', 'Motorizados y no motorizados', 'Ninguna de las anteriores', '', '', 'c', '2020-06-05 07:51:43', '2020-06-02 03:44:00'),
(352, 20, 1, 'Las señales de tránsito, se dividen en:', 'Informativa', 'Reglamentaria', 'Preventivas', 'De piso', 'Todas las anteriores', '', 'e', '2020-06-05 07:52:19', '2020-06-02 03:45:31'),
(353, 20, 2, 'Las señales Informativas, ¿muestran límites y prohibiciones en el camino o vía que transitamos?', '', '', '', '', '', '', 'F', '2020-06-02 03:46:13', '2020-06-02 03:46:13'),
(354, 20, 2, 'Las señales Reglamentarias, ¿Informan sobre servicios y lugares de la vía?', '', '', '', '', '', '', 'F', '2020-06-02 03:46:36', '2020-06-02 03:46:36'),
(355, 20, 2, 'Las señales preventivas, muestran al conductor los riesgos o factores de atención existentes en el recorrido', '', '', '', '', '', '', 'V', '2020-06-02 03:46:59', '2020-06-02 03:46:59'),
(356, 20, 2, 'Las señales de piso, se dividen en flechas blancas, líneas amarillas y líneas blancas.', '', '', '', '', '', '', 'V', '2020-06-02 03:47:19', '2020-06-02 03:47:19'),
(357, 20, 2, 'Accidente de tránsito es, ¿un suceso que ocurre de manera inesperada, involucrando a vehículos de transporte y/o personas?', '', '', '', '', '', '', 'V', '2020-06-02 03:47:37', '2020-06-02 03:47:37'),
(358, 20, 2, 'Los tipos de accidente de tránsito son: ¿leves, fuertes y muy fuertes?', '', '', '', '', '', '', 'F', '2020-06-02 03:47:55', '2020-06-02 03:47:55'),
(359, 21, 1, '¿Qué está formado por dos largueros y varios travesaños, hechos con chapa gruesa de acero  y unidos entre sí por medio de remaches, soldaduras o pernos?', 'El escape', 'El retenedor', 'El bastidor o chasis', 'Ninguno de los anteriores.', '', '', 'c', '2020-06-06 22:14:32', '2020-06-02 03:53:24'),
(360, 21, 1, '¿Quién es el que suministra la energía que, mediante el conjunto de transmisión, hace llegar su giro a las ruedas para el desplazamiento del vehículo?', 'El Embrague', 'El Motor', 'El eje de levas', 'Todas las anteriores', '', '', 'b', '2020-06-06 22:15:07', '2020-06-02 03:54:24'),
(361, 21, 1, '¿Es un dispositivo de desacoplamiento, mediante un disco de fricción, mandado por un pedal?', 'El Embrague', 'La Trasmisión', 'El sistema de Frenos', 'La dirección', '', '', 'a', '2020-06-06 22:15:27', '2020-06-02 03:55:37'),
(362, 21, 2, 'La transmisión ¿es una barra o tubo que transmite el movimiento de la caja de cambios al eje trasero?', '', '', '', '', '', '', 'V', '2020-06-02 03:56:02', '2020-06-02 03:56:02'),
(363, 21, 2, 'El diferencial, ¿es el componente encargado, de trasladar la rotación, que viene del motor/transmisión, hacia las ruedas encargadas de la tracción?', '', '', '', '', '', '', 'V', '2020-06-02 03:56:28', '2020-06-02 03:56:28'),
(364, 21, 2, 'Los tipos de frenos son, ¿mecánico y automático?', '', '', '', '', '', '', 'F', '2020-06-02 03:56:47', '2020-06-02 03:56:47'),
(365, 21, 2, 'La función básica de un sistema de dirección ¿es poder cambiar la dirección y trayectoria del automóvil?', '', '', '', '', '', '', 'V', '2020-06-02 03:57:10', '2020-06-02 03:57:10'),
(367, 21, 2, 'La función de la suspensión ¿es la de suspender y absorber los movimientos bruscos que se producen en la carrocería?', '', '', '', '', '', '', 'V', '2020-06-02 03:58:39', '2020-06-02 03:58:39'),
(368, 21, 2, 'Son parte del sistema eléctrico: ¿el embrague, la suspensión y los frenos?', '', '', '', '', '', '', 'F', '2020-06-02 03:59:03', '2020-06-02 03:59:03'),
(369, 21, 2, 'El inyector es el encargado de pulverizar en forma de aerosol la gasolina procedente de la línea de presión dentro del conducto de admisión.', '', '', '', '', '', '', 'V', '2020-06-02 03:59:29', '2020-06-02 03:59:29'),
(370, 22, 1, '¿Cada cuánto tiempo se debe hacer mantenimiento a los extintores?', '1 año', '2 años', '3 años', '', '', '', 'a', '2020-06-06 22:21:02', '2020-06-02 04:11:17'),
(371, 22, 1, '¿Cuál es la distancia mínima - máxima en cms, desde el piso hasta la base del extintor, en cuanto a su ubicación?', '20cm – 130cm', '50cm – 170cm', '10cm – 100cm', '', '', '', 'a', '2020-06-06 22:21:17', '2020-06-02 04:12:20'),
(372, 22, 1, 'Accionar el gatillo es el  Paso N°', 'Paso N° 1', 'Paso N° 2', 'Paso N° 3', 'Paso N° 4', '', '', 'c', '2020-06-06 22:21:48', '2020-06-02 04:14:49'),
(373, 22, 1, 'Retirar el pasador del extintor es el Paso N°', 'Paso N° 1', 'Paso N° 2', 'Paso N° 3', 'Paso N° 4', '', '', 'a', '2020-06-06 22:21:58', '2020-06-02 04:15:42'),
(374, 22, 1, 'Dirigir la boquilla del extintor a la base del fuego, es el Paso N°', 'Paso N° 1', 'Paso N° 2', 'Paso N° 3', 'Paso N° 4', '', '', 'b', '2020-06-06 22:22:12', '2020-06-02 04:16:38'),
(375, 23, 1, 'A los cuidados o medidas que realiza el auxiliador, en el mismo lugar donde ha ocurrido el accidente y con material prácticamente improvisado, hasta que llega el personal especializado, se le llama.', 'Observación médica', 'Primeros auxilios', 'Atención médica', 'Ninguna de las anteriores', '', '', 'b', '2020-06-06 22:23:58', '2020-06-02 04:27:34'),
(376, 23, 1, '¿Cuál de las siguientes, es una de las 10 reglas de primeros auxilios?', 'Gritar para llamar la atención', 'Llamar a los amigos para contar lo sucedido ', 'Conservar la serenidad y tomar el mando de la situación', 'Ninguna de las anteriores.', '', '', 'c', '2020-06-06 22:24:22', '2020-06-02 04:28:51'),
(377, 23, 1, '¿Cuál de los siguientes artículos es necesario en el botiquín de primeros auxilios?', 'Yodo', 'Morfina', 'Camilla', 'Todas las anteriores', '', '', 'a', '2020-06-06 22:24:41', '2020-06-02 04:29:56'),
(378, 23, 1, '¿Cuál es una regla de cuidado y mantenimiento del botiquín de primeros auxilios?', 'Mantener los medicamentos sin etiquetas de nombre', 'Mantenerlo con candado', 'Mantenerlo al alcance de los niños', 'No ubicarlo en el baño o la cocina', '', '', 'd', '2020-06-06 22:25:13', '2020-06-02 04:31:07'),
(379, 23, 1, '5.	Las lesiones provocadas por un agente de calor, ¿se les llama?', 'Mutilación', 'Quemadura ', 'Politraumatismo', 'Todas las anteriores', '', '', 'b', '2020-06-06 22:25:35', '2020-06-02 04:32:20'),
(380, 23, 2, 'A la acción ocasionada por la interrupción de la respiración, lo que provoca una disminución de oxígeno en el organismo, se le llama asfixia.', '', '', '', '', '', '', 'V', '2020-06-02 04:32:46', '2020-06-02 04:32:46'),
(381, 23, 2, 'Al  descenso súbito de la vitalidad corporal causada por el dolor, el miedo o la pérdida de sangre que puede provocar desde un simple desmayo hasta la muerte, se le conoce como Traumatismo', '', '', '', '', '', '', 'F', '2020-06-02 04:33:05', '2020-06-02 04:33:05'),
(382, 23, 2, 'Se define como poli traumatizado a todo individuo que sufre traumatismos (golpes) de múltiples órganos y sistemas corporales, algunos de los cuales comporta, aunque sólo sea potencialmente, un riesgo vital para el accidentado.', '', '', '', '', '', '', 'V', '2020-06-02 04:33:27', '2020-06-02 04:33:27'),
(383, 23, 2, 'El desmayo, es también conocido como, sincope.', '', '', '', '', '', '', 'V', '2020-06-02 04:33:50', '2020-06-02 04:33:50'),
(384, 23, 2, 'La exposición excesiva al frio se conoce como, insolación.', '', '', '', '', '', '', 'F', '2020-06-02 04:34:04', '2020-06-02 04:34:04'),
(385, 24, 1, 'La utilización de productos químicos en el trabajo, cada frasco, envase , garrafa, tambor, tanque o vasija que contenga cualquier tipo de sustancia química, debe estar debidamente etiquetado y marcado con la identidad del producto químico que contiene y debe incluir también las advertencias sobre sus riesgos. ¿Está conforme a la ley?', 'Ley 55 de 1993', 'Ley 11 de 1987', 'Ley 38 de 2001', 'Ley 65 de 1998', '', '', 'a', '2020-06-06 22:28:14', '2020-06-02 04:41:36'),
(386, 24, 1, 'Indican con precisión el nombre del producto, su estado físico y su concentración.', 'Las Tapas', 'Las Etiquetas', 'El envase', 'Todas las anteriores', '', '', 'b', '2020-06-06 22:28:53', '2020-06-02 04:43:34'),
(387, 24, 1, 'Es una clasificación originada en la Organización Marítima Internacional - Manejo de Carga Peligrosa (IMDG por su sigla en inglés).', 'OMI', 'DOT', 'CMY', 'Ninguna de las anteriores', '', '', 'a', '2020-06-06 22:29:17', '2020-06-02 04:44:37'),
(388, 24, 1, 'El sistema de pictogramas o etiquetas de la CEE es obligatorio para los proveedores de sustancias químicas peligrosas del continente', 'Americano', 'Asiático', 'Africano', 'Europeo', '', '', 'd', '2020-06-06 22:29:45', '2020-06-02 04:45:29'),
(389, 24, 2, 'El Numero de las Naciones Unidas, Corresponde a un número de identificación designado por la Organización de las Naciones Unidas para cada sustancia química comercial.', '', '', '', '', '', '', 'V', '2020-06-02 04:47:24', '2020-06-02 04:47:24'),
(390, 24, 2, 'El sistema NFPA ha sido adoptado en los EEUU y en muchos otros países como complemento de los otros sistemas de identificación e información, especialmente para recipientes como tanques estacionarios y carro tanques.', '', '', '', '', '', '', 'V', '2020-06-02 04:47:45', '2020-06-02 04:47:45'),
(391, 24, 2, 'Las Hojas de Datos de Seguridad (conocidas en inglés como Material Safety Data Sheets o MSDS), contienen información valiosa y detallada sobre las propiedades físicas y químicas de las sustancias', '', '', '', '', '', '', 'V', '2020-06-02 04:48:04', '2020-06-02 04:48:04'),
(392, 24, 2, 'El casco, anteojos y carteas, hacen parte de los criterios tlv’s para sustancias químicas', '', '', '', '', '', '', 'F', '2020-06-02 04:48:27', '2020-06-02 04:48:27'),
(393, 24, 2, 'El almacenamiento de sustancias peligrosas es de crítica importancia, ya que estas sustancias pueden quemar, explotar, contaminar, corroer, disolver, manchar, y producir reacciones perjudiciales.', '', '', '', '', '', '', 'V', '2020-06-02 04:48:48', '2020-06-02 04:48:48'),
(394, 24, 2, 'En el almacenamiento se debe considerar la reactividad y/o toxicidad de las sustancias.', '', '', '', '', '', '', 'V', '2020-06-02 04:49:08', '2020-06-02 04:49:08'),
(395, 25, 1, '1.	Para revisar el nivel del agua del radiador, el motor debe estar.', 'Frío', 'Caliente', 'Tibio', 'Ninguna de las anteriores', '', '', 'a', '2020-06-06 22:31:56', '2020-06-02 04:54:25'),
(396, 25, 1, 'Para medir el nivel de aceite del motor, este debe estar en una zona', 'Obscura', 'Plana', 'Cálida', 'Todas las anteriores', '', '', 'b', '2020-06-06 22:32:14', '2020-06-02 04:55:39'),
(397, 25, 1, 'El líquido de frenos debe ser reemplazado en su totalidad, cada.', '4 años', '1 año', '2 años o antes', 'Cada 6 meses', '', '', 'c', '2020-06-06 22:32:50', '2020-06-02 04:57:02'),
(398, 25, 1, 'Los instrumentos de control dentro del vehículo se encuentran en.', 'El tablero', 'Las ventanas', 'El Piso', 'Ninguna de las anteriores.', '', '', 'a', '2020-06-06 22:33:42', '2020-06-02 04:58:14'),
(399, 25, 2, 'El velocímetro y el odómetro son indicadores de control vial', '', '', '', '', '', '', 'V', '2020-06-02 04:58:39', '2020-06-02 04:58:39'),
(400, 25, 2, 'Hay señales de alerta que pueden ser luminosas, sonoras o ambas', '', '', '', '', '', '', 'V', '2020-06-02 04:59:06', '2020-06-02 04:59:06'),
(401, 25, 2, 'El indicador de puerta abierta encendido, es una señal de alerta.', '', '', '', '', '', '', 'V', '2020-06-02 04:59:17', '2020-06-02 04:59:17'),
(402, 25, 2, 'Si no prende el motor de partida, no prende alguna luz del tablero o si la bocina o pito, no está funcionando; puede ser un problema de frenos.', '', '', '', '', '', '', 'F', '2020-06-02 04:59:36', '2020-06-02 04:59:36'),
(403, 25, 2, 'Si los bornes de la batería presentan sulfato se deben limpiar con suficiente agua hasta eliminar el sulfato y volverlos a conectar.', '', '', '', '', '', '', 'V', '2020-06-02 04:59:53', '2020-06-02 04:59:53'),
(404, 25, 2, 'Verificar que no se encuentre nadie en los alrededores del vehículo que pueda salir lastimado, es una norma de seguridad.', '', '', '', '', '', '', 'V', '2020-06-02 05:00:10', '2020-06-02 05:00:10'),
(405, 26, 1, 'Los accidentes por el uso de sustancias, ocurren principalmente debido a', 'Desconocimiento de la peligrosidad', 'Exceso de confianza', 'Mal uso', 'Ninguna de las anteriores', '', '', 'a', '2020-06-06 22:35:24', '2020-06-02 05:05:20'),
(406, 26, 1, '¿Uno de los factores más frecuentes y que contribuyen en los accidentes es?', 'La poca visibilidad', 'El cansancio del operario', 'La deficiencia o carencia de identificación en los envases o contenedores de los productos', 'Ninguna de las anteriores', '', '', 'a', '2020-06-06 22:35:59', '2020-06-02 05:07:00'),
(407, 26, 1, '¿Cómo parte del plan de prevención se debe contar con personal?', 'En cantidad', 'Capacitado', 'Nuevo', 'Todas las anteriores.', '', '', 'b', '2020-06-06 22:36:53', '2020-06-02 05:08:13'),
(408, 26, 1, '¿El plan de prevención debe también considerar?', 'El tiempo de ejecución', 'Los Químicos', 'Un programa de inspección de envases y etiquetas', 'Las vías de acceso al laboratorio', '', '', 'c', '2020-06-06 22:37:15', '2020-06-02 05:09:25'),
(409, 26, 1, '¿En una situación de emergencia por derrame, el empleado debe?', 'Reportar el derrame al coordinador o responsable del área', 'Llamar a la policía', 'Limpiar rápidamente', 'Abandonar el lugar', '', '', 'a', '2020-06-06 22:37:48', '2020-06-02 05:10:37'),
(410, 26, 2, 'Es necesario que las personas que manejan productos químicos, conozcan a fondo la información que contiene una hoja de seguridad o MSDS y la puedan interpretar en caso de emergencia.', '', '', '', '', '', '', 'V', '2020-06-02 05:10:58', '2020-06-02 05:10:58'),
(411, 26, 2, 'Recoger el derrame puede implicar transvasar el contenido a un recipiente seguro.', '', '', '', '', '', '', 'V', '2020-06-02 05:11:17', '2020-06-02 05:11:17'),
(412, 26, 2, 'Una vez recogido, el producto se debe incinerar de inmediato.', '', '', '', '', '', '', 'F', '2020-06-02 05:11:38', '2020-06-02 05:11:38'),
(414, 26, 2, 'Los niveles de protección se clasifican en nivel X,Y,Z2.', '', '', '', '', '', '', 'F', '2020-06-02 05:11:59', '2020-06-02 05:11:59'),
(416, 26, 2, 'La liberación al ambiente de elementos y/o sustancias de manejo restringido, que pueden representar un peligro para la población y/o medio ambiente, ¿se llama derrame?', '', '', '', '', '', '', 'V', '2020-06-02 05:12:20', '2020-06-02 05:12:20'),
(417, 27, 1, 'Como se llama a la persona, que demanda un producto o servicio a una organización, haciendo un acto de elección voluntaria.', 'Jefe', 'Empleado', 'Cliente', 'Ninguna de las anteriores', '', '', 'c', '2020-06-06 22:39:33', '2020-06-02 05:17:18'),
(418, 27, 1, 'Cuál de las siguientes parejas, son tipos de clientes.', 'Cliente bueno – Cliente malo', 'Cliente Interno – Cliente externo', 'Cliente Comprador – Cliente no comprador', 'Cliente alto – Cliente bajo', '', '', 'b', '2020-06-06 22:39:59', '2020-06-02 05:21:59'),
(419, 27, 1, 'Una Persona con baja autoestima y que teme expresar lo que desea, es:', 'Un cliente exigente', 'Un cliente inseguro', 'Un cliente inconforme', 'Todas las anteriores', '', '', 'b', '2020-06-06 22:40:22', '2020-06-02 05:23:10'),
(420, 27, 1, 'Una persona que muestra conocimientos de los artículos y servicios que solicita con relación a calidad, marcas, precios, ventajas, desventajas y procedimientos, es:', 'Cliente inconforme', 'Cliente informado', 'Cliente seguro', 'Cliente indeciso', '', '', 'b', '2020-06-06 22:41:46', '2020-06-02 05:24:11'),
(421, 27, 1, 'Una persona con bajo nivel de instrucción formal e informal, marcos de referencia y conocimientos muy limitados, es:', 'Cliente inconforme', 'Cliente ideal', 'Cliente con limitaciones', 'Cliente interno', '', '', 'c', '2020-06-06 22:42:18', '2020-06-02 05:26:37'),
(422, 27, 2, 'Las quejas son inconformidades e insatisfacciones que se generan al momento de recibir un servicio o producto, o luego de estar usándolo.', '', '', '', '', '', '', 'V', '2020-06-02 05:26:57', '2020-06-02 05:26:57'),
(423, 27, 2, 'Precaria calidad del artículo o servicios ofrecidos, tardanza en la entrega, costo elevado, son quejas frecuentes de los clientes', '', '', '', '', '', '', 'V', '2020-06-02 05:27:15', '2020-06-02 05:27:15'),
(424, 27, 2, 'Calidad se define de manera práctica como: “El conjunto de condiciones y acciones de un servicio capaz de satisfacer plenamente al cliente”.', '', '', '', '', '', '', 'V', '2020-06-02 05:27:36', '2020-06-02 05:27:36'),
(425, 27, 2, 'Comunicación verbal es la que se hace solo por medio de verbos.', '', '', '', '', '', '', 'V', '2020-06-02 05:28:06', '2020-06-02 05:28:06'),
(426, 27, 2, 'El lenguaje corporal es un tipo de comunicación sin palabras. Es comunicarse a través de los gestos, la postura, la mirada, la entonación.', '', '', '', '', '', '', 'V', '2020-06-02 05:28:26', '2020-06-02 05:28:26'),
(431, 28, 1, 'A la herramienta que permite a las comunidades y grupos humanos, participar para lograr el bien común, ¿se le llama?', 'Civismo', 'Compañerismo', 'Cooperativismo', 'Patriotismo', '', '', 'c', '2020-06-02 07:54:48', '2020-06-02 05:37:48'),
(432, 28, 1, 'Al accionar de un grupo para la solución de problemas comunes ¿se le llama?', 'Compañerismo', 'Ayuda Mutua', 'Civismo', 'Ninguna de las anteriores', '', '', 'b', '2020-06-02 13:49:31', '2020-06-02 11:46:17'),
(433, 28, 1, 'A la obligación de responder por los propios actos, ¿se le llama?', 'Responsabilidad', 'Seriedad', 'Compromiso', 'Todas las anteriores', '', '', 'a', '2020-06-02 13:50:54', '2020-06-02 11:50:27'),
(434, 28, 1, 'A ofrecer el mismo trato y condiciones de desarrollo a cada asociado(a), sin discriminación de sexo, etnia, clase social, credo y capacidad intelectual y física, ¿se le llama?', 'Justicia', 'Igualdad', 'Equidad', 'Ninguna de las anteriores', '', '', 'b', '2020-06-02 11:52:00', '2020-06-02 11:52:00'),
(435, 28, 1, 'A la justa distribución de los excedentes entre los miembros de la cooperativa, ¿Se le llama?', 'Equidad', 'Solidaridad', 'Comprensión', 'Todas las anteriores', '', '', 'a', '2020-06-02 11:52:54', '2020-06-02 11:52:54'),
(436, 28, 2, 'Ayuda mutua, Responsabilidad, Democracia, Igualdad, Equidad y Solidaridad, son valores Cooperativos.', '', '', '', '', '', '', 'V', '2020-06-02 11:53:22', '2020-06-02 11:53:22'),
(437, 28, 2, 'La bandera y el escudo son símbolos del cooperativismo.', '', '', '', '', '', '', 'V', '2020-06-02 11:53:51', '2020-06-02 11:53:51'),
(438, 28, 2, 'La bandera y el escudo son símbolos del cooperativismo.', '', '', '', '', '', '', 'V', '2020-06-02 12:03:56', '2020-06-02 12:03:56'),
(439, 28, 2, 'La bandera del cooperativismo es de color Azul con siluetas de personas en color blanco.', '', '', '', '', '', '', 'F', '2020-06-02 12:04:22', '2020-06-02 12:04:22'),
(440, 28, 2, 'El escudo del cooperativismo, lo forma un círculo de color verde en el que se encuentran dos pinos de color verde en un fondo Amarillo.', '', '', '', '', '', '', 'V', '2020-06-02 12:04:41', '2020-06-02 12:04:41'),
(441, 28, 2, 'Una Cooperativa es una sociedad formada por productores, vendedores o consumidores con el fin de producir, comprar o vender de un modo que resulte más ventajoso para todos.', '', '', '', '', '', '', 'V', '2020-06-02 12:05:02', '2020-06-02 12:05:02'),
(442, 29, 1, 'Un espacio, que tiene medios limitados para entrar y salir, es decir no permiten una entrada ni una salida en forma segura y rápida de todos sus ocupantes ¿se llama?', 'Espacio abierto', 'Espacio cerrado', 'Espacio confinado', 'Espacio inherente', '', '', 'c', '2020-06-02 12:08:39', '2020-06-02 12:08:39'),
(443, 29, 1, 'Aquél espacio confinado en el que no existe riesgo por deficiencia o enriquecimiento de oxígeno, ni atmósferas explosivas o inflamables, y en el que las concentraciones de sustancias químicas peligrosas son inferiores al nivel de acción. ¿se le llama?', 'Espacio confinado Tipo I', 'Espacio confinado Tipo II', 'Espacio confinado Tipo III', 'Ninguno de los anteriores.', '', '', 'a', '2020-06-02 12:17:56', '2020-06-02 12:17:56');
INSERT INTO `preguntas` (`id`, `id_modulo`, `tipo`, `pregunta`, `a`, `b`, `c`, `d`, `e`, `f`, `respuesta`, `created_at`, `updated_at`) VALUES
(444, 29, 1, 'Aquel espacio confinado que tiene el potencial de causar lesiones y/o enfermedades de trabajo, e incluso puede ser inmediatamente peligroso para la vida y la salud. ¿se llama?', 'Espacio confinado Tipo I', 'Espacio confinado Tipo II', 'Espacio confinado Tipo III', 'Ninguno de los anteriores.', '', '', 'b', '2020-06-02 12:18:55', '2020-06-02 12:18:55'),
(445, 29, 2, 'Es una actividad previa, notificar oportunamente a todas las secciones de la empresa que puedan resultar afectadas por el trabajo en espacio confinado', '', '', '', '', '', '', 'V', '2020-06-02 12:19:18', '2020-06-02 12:19:18'),
(446, 29, 2, 'El trabajo en espacios confinados exige la implementación de un sistema personal de interrupción de caídas', '', '', '', '', '', '', 'V', '2020-06-02 12:19:36', '2020-06-02 12:19:36'),
(447, 29, 2, 'Punto de conexión segura para los cabos de salvamento, acolladores o dispositivos de desaceleración, independiente de los medios utilizados para apoyar o suspender al trabajador, se llama dispositivo de desaceleración.', '', '', '', '', '', '', 'F', '2020-06-02 12:20:00', '2020-06-02 12:20:00'),
(448, 29, 2, 'Al punto de conexión segura para los cabos de salvamento, acolladores o dispositivos de desaceleración, independiente de los medios utilizados para apoyar o suspender al trabajador, se llama anclaje.', '', '', '', '', '', '', 'V', '2020-06-02 12:20:11', '2020-06-02 12:20:11'),
(449, 29, 2, 'El uso de cinturón corporal está prohibido (OSHA - 1 de enero/98). Un arnés ofrece mejor protección de caída libre, reduce el riesgo de lesiones y distribuye las fuerzas de interrupción de caída a lo largo de los muslos, la pelvis, la cintura, el pecho y los hombros.', '', '', '', '', '', '', 'V', '2020-06-02 12:20:29', '2020-06-02 12:20:29'),
(450, 29, 2, 'El supervisor, observa las condiciones en que se realiza el trabajo, lleva la lista de los entrantes y reporta si alguien no autorizado entra.', '', '', '', '', '', '', 'F', '2020-06-02 12:20:47', '2020-06-02 12:20:47'),
(451, 29, 2, 'El asistente, Verifica que las condiciones de entrada sean seguras, que el trabajador entrante presente el permiso y las condiciones consignadas en éste se cumplan.', '', '', '', '', '', '', 'F', '2020-06-02 12:21:05', '2020-06-02 12:21:05'),
(452, 30, 1, '¿Qué es incendio?', 'Es una combustión que se desarrolla sin control en el tiempo y en el espacio.', 'Gran porcentaje de carbono e hidrogeno.', 'Medida de actividad molecular dentro de una sustancia.', 'Ninguna de las anteriores', '', '', 'a', '2020-06-02 12:25:17', '2020-06-02 12:25:17'),
(453, 30, 1, 'Cuáles son los tres elementos que  se requieren para que se produzca un fuego:', 'Combustible, Hidrogeno y oxígeno', 'Combustible, calor y oxígeno', 'Calor, oxígeno y fuego', '', '', '', 'b', '2020-06-02 12:26:22', '2020-06-02 12:26:22'),
(454, 30, 2, 'El fuego es una reacción química conocida también con el nombre de combustión', '', '', '', '', '', '', 'V', '2020-06-02 12:27:10', '2020-06-02 12:27:10'),
(455, 30, 2, 'El calor se transmite de tres formas diferentes: Conducción, convección y radiación', '', '', '', '', '', '', 'V', '2020-06-02 12:27:31', '2020-06-02 12:27:31'),
(456, 30, 2, 'Fuegos de clase A Son los de combustibles sólidos que retienen oxígeno en su interior formando brasas. Son los llamados fuegos “secos”.', '', '', '', '', '', '', 'V', '2020-06-02 12:27:48', '2020-06-02 12:27:48'),
(457, 30, 2, 'Las chispas eléctricas se producen al desconectar un interruptor una clavija o al encender o apagar la luz.', '', '', '', '', '', '', 'V', '2020-06-02 12:28:02', '2020-06-02 12:28:02'),
(458, 30, 2, 'Durante un incendio, los gases matan, el humo inmoviliza y el calor existente causa   fatiga.', '', '', '', '', '', '', 'V', '2020-06-02 12:28:21', '2020-06-02 12:28:21'),
(459, 30, 2, 'Extintores portátiles es el recipiente que contiene al agente extinguidor que es expulsado por una presión interna o externa..', '', '', '', '', '', '', 'V', '2020-06-02 12:28:54', '2020-06-02 12:28:54'),
(460, 30, 2, 'La masa o el volumen del agente extintor contenido en el extintor es su carga.', '', '', '', '', '', '', 'V', '2020-06-02 12:29:13', '2020-06-02 12:29:13'),
(461, 30, 2, 'Todo extintor vacío o inservible, no se debe dejar acostado', '', '', '', '', '', '', 'V', '2020-06-02 12:29:26', '2020-06-02 12:29:26'),
(462, 31, 1, '¿Qué es retención?', 'Es un sistema que permite delimitar un sistema de trabajo que impide que el trabajador entre en una zona con riesgo de caída. Este dispositivo no está destinado a detener', 'Sistema, como su propio nombre indica, sujeta  al usuario y le permite posicionarse con precisión en apoyo o en suspensión.', 'Se debe prever un plan de evacuación para permitir a los equipos autorrescatarse o una evacuación en caso de accidente', 'Ninguna de las anteriores', '', '', 'a', '2020-06-02 12:43:58', '2020-06-02 12:43:58'),
(463, 31, 1, '¿Qué es una cadena de seguridad?', 'Acceso en progresiones hacia arriba y hacia abajo y, por otro, nos mantiene seguros frente a las posibles caídas', 'Es el conjunto de elementos que intervienen en una caída para absorber la energía generada. Su función es lograr una detención “amortiguada” y así evitar que el cuerpo sufra daños.', 'Son las que se utilizan en todas las maniobras en las que existe riesgo de caída a fin de asegurar progresiones de primero o de segundo de cuerda', 'Todas las anteriores', '', '', 'b', '2020-06-02 12:44:59', '2020-06-02 12:44:59'),
(464, 31, 2, 'El trabajo en altura se define como cualquier actividad o desplazamiento que realice un trabajador mientras esté expuesto a un riesgo de caída a distinto nivel.', '', '', '', '', '', '', 'V', '2020-06-02 12:45:28', '2020-06-02 12:45:28'),
(465, 31, 2, 'Un sistema anticaídas es un dispositivo de aseguramiento, independiente del modo de progresión o sujeción, conectado al punto de enganche “A” (anticaídas) del arnés.', '', '', '', '', '', '', 'V', '2020-06-02 12:45:40', '2020-06-02 12:45:40'),
(466, 31, 2, 'La altura libre tiene en cuenta: La distancia de parada de los aparatos móviles o la longitud del elemento de amarre.', '', '', '', '', '', '', 'V', '2020-06-02 12:47:47', '2020-06-02 12:47:47'),
(467, 31, 2, 'La energía potencial de un bombero en altura depende de su masa y de la altura de la caída.', '', '', '', '', '', '', 'V', '2020-06-02 12:48:10', '2020-06-02 12:48:10'),
(468, 31, 2, 'Una  Cuerda de tracción será la cuerda que nos proporcione seguridad en caso de que falle algún elemento de la parte de tracción (SAS, mosquetones o la propia cuerda).', '', '', '', '', '', '', 'F', '2020-06-02 12:48:28', '2020-06-02 12:48:28'),
(469, 31, 2, 'Los nudos tienen la misión de unir al bombero con la cuerda y la cuerda con los seguros.', '', '', '', '', '', '', 'V', '2020-06-02 12:48:44', '2020-06-02 12:48:44'),
(470, 31, 2, 'Aseguramiento estático: cuando el dispositivo de freno (ocho, nudo dinámico) permite el deslizamiento de la cuerda, se produce una fricción que transforma parte de la energía en calor.', '', '', '', '', '', '', 'F', '2020-06-02 12:49:04', '2020-06-02 12:49:04'),
(471, 31, 2, 'Los desviadores son una de las instalaciones más utilizadas en rescate urbano y trabajos verticales hasta el punto de que a veces incluso se utiliza el trípode como desviador.', '', '', '', '', '', '', 'V', '2020-06-02 12:49:41', '2020-06-02 12:49:41'),
(472, 32, 1, 'Qué es Brigadista  (Primeros Auxilios)', 'Es el equipo encargado de prestar los primeros auxilios a los lesionados por la emergencia.', 'Son los encargados de dirigir la brigada de evacuación, apoyar al líder de la brigada y suplir sus funciones en caso de ausencia.', 'Todas las anteriores', '', '', '', 'a', '2020-06-02 12:52:33', '2020-06-02 12:52:33'),
(473, 32, 1, 'El equipo de Brigadistas (Primeros Auxilios) debe contener:', 'Transporte', 'Botiquín e inmovilizadores', 'Todas las anteriores', '', '', '', 'b', '2020-06-02 12:53:33', '2020-06-02 12:53:33'),
(474, 32, 2, 'El director es el encargado de prevenir, implementar y preparar la atención a los lesionados antes, durante y después de una emergencia teniendo en cuenta los protocolos de atención.', '', '', '', '', '', '', 'V', '2020-06-02 12:53:54', '2020-06-02 12:53:54'),
(475, 32, 2, 'Durante una emergencia médica se debe brindar asistencia básica en primeros auxilios.', '', '', '', '', '', '', 'V', '2020-06-02 12:54:18', '2020-06-02 12:54:18'),
(476, 32, 2, 'Una de las funciones del director es disponer de listado de enfermos crónicos y de sus medicamentos específicos.', '', '', '', '', '', '', 'V', '2020-06-02 12:54:38', '2020-06-02 12:54:38'),
(477, 32, 2, 'Los colaboradores son los encargados de dirigir la brigada de evacuación en la sede de preescolar, apoyar al líder de la brigada y suplir sus funciones en caso de ausencia.', '', '', '', '', '', '', 'F', '2020-06-02 12:54:57', '2020-06-02 12:54:57'),
(478, 32, 2, 'Los suplentes  son los encargados de trasladar a las personas a las áreas seguras teniendo en cuenta los protocolos de atención de emergencias.', '', '', '', '', '', '', 'F', '2020-06-02 12:55:13', '2020-06-02 12:55:13'),
(479, 32, 2, 'Un colaborador debe estar en puesto  de socorros, junto al punto de reunión, esperar avisos para atender lesionados.', '', '', '', '', '', '', 'V', '2020-06-02 12:55:27', '2020-06-02 12:55:27'),
(480, 32, 2, 'En caso de una emergencia se debe tener disponible el equipo de primeros auxilios y ubicado en los lugares estratégicos previamente elegidos.', '', '', '', '', '', '', 'V', '2020-06-02 12:55:44', '2020-06-02 12:55:44'),
(481, 32, 2, 'Después de un caso de emergencia se debe Evaluar la aplicación de los planes de respuesta.', '', '', '', '', '', '', 'V', '2020-06-02 12:55:57', '2020-06-02 12:55:57'),
(482, 33, 1, '¿Qué es la Señalización Vertical Luminosa?', 'Son señales compuestas por unidades ópticas de luz propia variable.', 'Señales y órdenes de los agentes de tránsito.', 'Son señales con luz propia, continua o intermitente, destinada al usuario de la vía pública.', 'Ninguna de las anteriores.', '', '', 'c', '2020-06-02 13:01:37', '2020-06-02 13:01:37'),
(483, 33, 1, 'La atención en la conducción puede disminuir fundamentalmente por:', 'La fatiga', 'La somnolencia', 'La monotonía del viaje', 'Todas las anteriores', '', '', 'd', '2020-06-02 13:02:33', '2020-06-02 13:02:33'),
(484, 33, 1, '¿Qué es sensibilidad al encandilamiento?', 'Es la perturbación y malestar  provocados en los órganos visuales por una fuente lumínica demasiado intensa.', 'Transcurre desde la percepción de una señal o de un obstáculo imprevisto', 'Ninguna de las anteriores', '', '', '', 'a', '2020-06-02 13:05:39', '2020-06-02 13:05:39'),
(485, 33, 2, 'La Señalización ¿es el lenguaje de comunicación destinado a transmitir al usuario de la vía las advertencias, prohibiciones, obligaciones, informaciones?', '', '', '', '', '', '', 'V', '2020-06-02 13:05:58', '2020-06-02 13:05:58'),
(486, 33, 2, 'La señalización comprende la Demarcación horizontal.', '', '', '', '', '', '', 'V', '2020-06-02 13:06:17', '2020-06-02 13:06:17'),
(487, 33, 2, 'Los semáforos  tienen por objeto regular el derecho de paso o de acceso en forma alternativa para vehículos o peatones que confluyen sobre un determinado punto de la vía.', '', '', '', '', '', '', 'V', '2020-06-02 13:06:32', '2020-06-02 13:06:32'),
(488, 33, 2, 'La hemorragia es la salida de sangre fuera de los vasos (venas y arterias) como consecuencia de un traumatismo.', '', '', '', '', '', '', 'V', '2020-06-02 13:06:50', '2020-06-02 13:06:50'),
(489, 33, 2, 'La conducción nocturna es mucho menos  peligrosa que la diurna.', '', '', '', '', '', '', 'F', '2020-06-02 13:07:09', '2020-06-02 13:07:09'),
(490, 33, 2, 'Los espejos retrovisores son necesarios para ver lo que sucede a nuestra espalda', '', '', '', '', '', '', 'V', '2020-06-02 13:07:23', '2020-06-02 13:07:23'),
(491, 33, 2, 'Se considera accidente de tránsito todo hecho que produzca  daño en personas o cosas como consecuencia de la circulación', '', '', '', '', '', '', 'V', '2020-06-02 13:07:36', '2020-06-02 13:07:36'),
(492, 34, 1, '¿Por qué un programa de Seguridad en la Flota de Vehículos?', 'Falta de acciones preventivas', 'Responsabilidad social empresarial', 'Falta de conciencia en los conductores', 'Todas las anteriores', '', '', 'd', '2020-06-02 13:18:05', '2020-06-02 13:18:05'),
(493, 34, 1, 'El diagnóstico inicial se encarga de:', 'Revisión de políticas locales, Conformación del Comité de Seguridad Vial.', 'Los carros, bicicletas y motos', 'Ninguna de las anteriores', '', '', '', 'a', '2020-06-02 13:18:48', '2020-06-02 13:18:48'),
(494, 34, 2, 'Un factor crítico que afecta a la  tasa de  motorización es la multiplicación de las motocicletas.', '', '', '', '', '', '', 'V', '2020-06-02 13:19:20', '2020-06-02 13:19:20'),
(495, 34, 2, 'Una de las características del sector de la movilidad en América Latina  es la importancia de la oferta de transporte informal.', '', '', '', '', '', '', 'V', '2020-06-02 13:19:36', '2020-06-02 13:19:36'),
(496, 34, 2, 'Los resultados de la investigación indican que el 43% de los trabajadores conducen entre 1 y 9 horas al día.', '', '', '', '', '', '', 'V', '2020-06-02 13:19:53', '2020-06-02 13:19:53'),
(497, 34, 2, 'El enfoque sistémico dinámico tiene como objetivo identificar y corregir las principales fuentes de error o deficiencias de diseño y los comportamientos peligrosos que contribuyen a los accidentes de tránsito.', '', '', '', '', '', '', 'V', '2020-06-02 13:20:07', '2020-06-02 13:20:07'),
(498, 34, 2, 'La Planificación programa de seguridad se encarga de actividades encaminadas a tener vehículos y personas más seguras en la operación.', '', '', '', '', '', '', 'V', '2020-06-02 13:20:25', '2020-06-02 13:20:25'),
(499, 34, 2, 'Relevamiento de rutas Evaluación de Riesgos Viales Rutas Seguras cumple con   Programas encaminados a generar competencias específicas.', '', '', '', '', '', '', 'F', '2020-06-02 13:20:42', '2020-06-02 13:20:42'),
(500, 34, 2, 'El programa de capacitación establece parámetros de evaluación de conductores.', '', '', '', '', '', '', 'V', '2020-06-02 13:21:36', '2020-06-02 13:21:36'),
(501, 34, 2, 'CARGAS LÍQUIDAS, CARGAS SÓLIDAS Y/O SECAS SON: Influencias laterales, influencias longitudinales tipo de carga, influencia peso, etc.', '', '', '', '', '', '', 'V', '2020-06-02 13:21:51', '2020-06-02 13:21:51'),
(502, 35, 2, 'El estudiante está en la capacidad de reconocer los signos vitales y reanimar una persona', '', '', '', '', '', '', 'V', '2020-06-02 13:57:48', '2020-06-02 13:57:48'),
(504, 35, 2, 'El estudiante está en la capacidad de trasladar un lesionado', '', '', '', '', '', '', 'V', '2020-06-02 14:01:38', '2020-06-02 14:01:38'),
(505, 35, 2, 'El estudiante está en la capacidad de tratar una persona en caso de:', '', '', '', '', '', '', 'V', '2020-06-02 14:02:06', '2020-06-02 14:02:06'),
(506, 35, 2, 'El estudiante está en la capacidad de tratar una persona en caso de una hemorragia', '', '', '', '', '', '', 'V', '2020-06-02 14:02:31', '2020-06-02 14:02:31'),
(507, 35, 2, 'El estudiante está en la capacidad de tratar una persona en caso de una obstrucción de la vía aérea', '', '', '', '', '', '', 'V', '2020-06-02 14:03:00', '2020-06-02 14:03:00'),
(508, 35, 2, 'El estudiante está en la capacidad de tratar una persona en caso de una alteración de la consciencia', '', '', '', '', '', '', 'V', '2020-06-02 14:07:03', '2020-06-02 14:07:03'),
(509, 35, 2, 'El estudiante está en la capacidad de tratar una persona en caso de una alteración de la consciencia', '', '', '', '', '', '', 'V', '2020-06-02 14:08:00', '2020-06-02 14:08:00'),
(510, 35, 2, 'El estudiante está en la capacidad de tratar una persona en caso de una lesión traumatológica', '', '', '', '', '', '', 'V', '2020-06-02 14:08:21', '2020-06-02 14:08:21'),
(511, 35, 2, 'El estudiante está en la capacidad de tratar una persona en caso de una quemaduras', '', '', '', '', '', '', 'V', '2020-06-02 14:08:47', '2020-06-02 14:08:47'),
(512, 35, 2, 'El estudiante está en la capacidad de tratar una persona en caso de una lesión térmica', '', '', '', '', '', '', 'V', '2020-06-02 14:09:25', '2020-06-02 14:09:25'),
(513, 35, 2, 'El estudiante está en la capacidad de tratar una persona en caso de una lesión eléctrica', '', '', '', '', '', '', 'V', '2020-06-02 14:09:45', '2020-06-02 14:09:45'),
(514, 35, 2, 'El estudiante está en la capacidad de tratar una persona en caso de una lesión ocular', '', '', '', '', '', '', 'V', '2020-06-02 14:10:08', '2020-06-02 14:10:08'),
(515, 35, 2, 'El estudiante está en la capacidad de tratar una persona en caso de una intoxicación', '', '', '', '', '', '', 'V', '2020-06-02 14:10:29', '2020-06-02 14:10:29'),
(516, 36, 2, 'Los principios ergonómicos tienen como objetivo mejorar la adecuación de un trabajador a una actividad', '', '', '', '', '', '', 'V', '2020-06-03 00:06:58', '2020-06-03 00:06:58'),
(517, 36, 2, 'La ergonomía es un tema que sólo es importante en el lugar de trabajo', '', '', '', '', '', '', 'F', '2020-06-03 00:12:52', '2020-06-03 00:12:52'),
(518, 36, 2, 'Una mala postura puede provocar adormecimiento y hormigueo en la parte afectada del cuerpo', '', '', '', '', '', '', 'V', '2020-06-03 00:13:46', '2020-06-03 00:13:46'),
(519, 36, 2, 'El Oficial de Seguridad: tiene la función de vigilancia y evaluación de situaciones peligrosas e inseguras', '', '', '', '', '', '', 'F', '2020-06-03 00:14:54', '2020-06-03 00:14:54'),
(520, 36, 2, 'Adoptar una postura adecuada incluye ajustar la posición de todo el cuerpo', '', '', '', '', '', '', 'V', '2020-06-03 00:15:31', '2020-06-03 00:15:31'),
(521, 36, 2, 'Estirar los brazos frecuentemente por encima de la cabeza para alcanzar materiales está bien siempre y cuando no se tuerza el cuerpo.', '', '', '', '', '', '', 'F', '2020-06-03 00:16:01', '2020-06-03 00:16:01'),
(522, 36, 2, 'Su estado general de salud puede afectar su riesgo de desarrollar un TRASTORNO MUSCOLOESQUELÉTICO', '', '', '', '', '', '', 'V', '2020-06-03 00:16:41', '2020-06-03 00:16:41'),
(523, 36, 2, 'A la acción ocasionada por la interrupción de la respiración, lo que provoca una disminución de oxígeno en el organismo, se le llama asfixia.', '', '', '', '', '', '', 'V', '2020-06-03 00:17:27', '2020-06-03 00:17:27'),
(524, 36, 2, 'Al descenso súbito de la vitalidad corporal causada por el dolor, el miedo o la pérdida de sangre que puede provocar desde un simple desmayo hasta la muerte, se le conoce como Traumatismo', '', '', '', '', '', '', 'F', '2020-06-03 00:18:12', '2020-06-03 00:18:12'),
(525, 36, 2, 'Se define como poli traumatizado a todo individuo que sufre traumatismos (golpes) de múltiples órganos y sistemas corporales, algunos de los cuales comporta, aunque sólo sea potencialmente, un riesgo vital para el accidentado', '', '', '', '', '', '', 'F', '2020-06-03 00:19:01', '2020-06-03 00:19:01'),
(526, 36, 2, 'La exposición excesiva al frio se conoce como, insolación', '', '', '', '', '', '', 'F', '2020-06-03 00:19:42', '2020-06-03 00:19:42'),
(527, 36, 1, 'Los factores de riesgo de los TRASTORNO MUSCOLOESQUELÉTICO incluyen:', 'Larga duración', 'Período de recuperación demasiado corto', 'Fuerza frecuente', 'Todas las anteriores', '', '', 'd', '2020-06-03 00:22:33', '2020-06-03 00:22:33'),
(528, 36, 1, 'Su cuerpo puede verse estresado por?', 'vibración.', 'frío', 'iluminación deficiente', 'Todas las anteriores', '', '', 'd', '2020-06-03 00:24:01', '2020-06-03 00:24:01'),
(529, 36, 1, 'La posición neutra es', 'La posición que produce la menor cantidad de tensión en el cuerpo.', 'La posición más difícil que el cuerpo puede mantener', 'Una posición segura que protege sólo la espalda', 'La única posición en la que su cuerpo puede trabajar', '', '', 'a', '2020-06-03 00:26:14', '2020-06-03 00:26:14'),
(530, 36, 1, 'Usted corre el riesgo de desarrollar un TRASTORNO MUSCOLOESQUELÉTICO si:', 'Usted corre el riesgo de desarrollar un TRASTORNO MUSCOLOESQUELÉTICO si:.', 'Utiliza herramientas manuales una vez al año', 'Descansa entre tareas repetitivas', 'Ninguna las anteriores', '', '', 'a', '2020-06-03 00:47:12', '2020-06-03 00:47:12'),
(531, 36, 1, 'A los cuidados o medidas que realiza el auxiliador, en el mismo lugar donde ha ocurrido el accidente y con material prácticamente improvisado, hasta que llega el personal especializado, se le llama?', 'Observación médica.', 'Primeros auxilios', 'Atención médica', 'Ninguna de las anteriores', '', '', 'b', '2020-06-03 00:48:47', '2020-06-03 00:48:47'),
(532, 36, 1, 'Cuál de las siguientes, es una de las 10 reglas de primeros auxilios?', 'Gritar para llamar la atención.', 'Llamar a los amigos para contar lo sucedido', 'Conservar la serenidad y tomar el mando de la situación', 'Ninguna de las anteriores', '', '', 'c', '2020-06-03 00:50:19', '2020-06-03 00:50:19'),
(533, 36, 1, '¿Cuál de los siguientes artículos es necesario en el botiquín de primeros auxilios?', 'Yodo', 'Morfina', 'Camilla', 'Todas las anteriores', '', '', 'a', '2020-06-03 00:52:42', '2020-06-03 00:52:42'),
(534, 36, 1, 'Cuál es una regla de cuidado y mantenimiento del botiquín de primeros auxilios?', 'Mantener los medicamentos sin etiquetas de nombre', 'Mantenerlo con candado', 'Mantenerlo al alcance de los niños', 'No ubicarlo en el baño o la cocina', '', '', 'd', '2020-06-03 00:54:39', '2020-06-03 00:54:39'),
(535, 36, 1, 'Las lesiones provocadas por un agente de calor, ¿se les llama?', 'Las lesiones provocadas por un agente de calor, ¿se les llama?', 'Quemadura', 'Politraumatismo', 'Todas las anteriores', '', '', 'b', '2020-06-03 03:51:51', '2020-06-03 03:51:51'),
(538, 37, 1, 'Qué Resolución establece el Reglamento de Seguridad para protección contra caídas en trabajo en alturas?', '1409 -2012', '1326-2011', '7123-2014', 'Ninguna de las anteriores', '', '', 'a', '2020-06-03 04:07:01', '2020-06-03 04:07:01'),
(539, 37, 1, '¿Antes de realizar cualquier trabajo en alturas se debe contar con…..?', 'Un permiso de trabajo.', 'Equipos de protección contra caídas', 'El personal capacitado para realizar la tarea', 'Todas las anteriores', '', '', 'd', '2020-06-03 04:08:40', '2020-06-03 04:08:40'),
(540, 37, 1, '¿Cuál es la definición de un Anclaje?', 'Es el conjunto de elementos que intervienen en una caída para absorber la energía generada. Su función es lograr una detención “amortiguada” y así evitar que el cuerpo sufra daños', 'Punto seguro al que pueden conectarse equipos personales de protección contra caídas con resistencia certificada a la rotura y un factor de seguridad, diseñados y certificados en su instalación por un fabricante y/o una persona calificada. Puede ser fijo o móvil según la necesidad', 'Son las que se utilizan en todas las maniobras en las que existe riesgo de caída a fin de asegurar progresiones de primero o de segundo de cuerda.', 'Todas las anteriores', '', '', 'b', '2020-06-03 04:10:00', '2020-06-03 04:10:00'),
(541, 37, 2, 'Son las que se utilizan en todas las maniobras en las que existe riesgo de caída a fin de asegurar progresiones de primero o de segundo de cuerda.', '', '', '', '', '', '', 'V', '2020-06-03 04:11:01', '2020-06-03 04:11:01'),
(542, 37, 2, 'Todos los implemos de protección contra caídas tiene que tener una resistencia mínima de 5.000 libras (22,2 kilonewtons – 2.272 kg)', '', '', '', '', '', '', 'V', '2020-06-03 04:11:42', '2020-06-03 04:11:42'),
(543, 37, 2, 'El plan de rescate, debe estar diseñado acorde con los riesgos de la actividad en alturas desarrollada, se deben asignar equipos de rescate certificados para toda la operación y contar con brigadistas o personal formado para tal fin', '', '', '', '', '', '', 'V', '2020-06-03 04:12:34', '2020-06-03 04:12:34'),
(544, 37, 2, 'El empleador debe asegurar que el trabajador que desarrolla trabajo en alturas, cuente con un sistema de comunicación y una persona de apoyo disponible para que, de ser necesario, reporte de inmediato la emergencia', '', '', '', '', '', '', 'V', '2020-06-03 04:13:15', '2020-06-03 04:13:15'),
(545, 37, 2, 'Todo el personal se debe Realizar las evaluaciones médicas ocupacionales y el manejo y contenido de las historias clínicas ocupacionales conforme a lo establecido en las Resoluciones 2346 de 2007 y 1918 de 2009 expedidas por el Ministerio de la Protección Social o las normas que las modifiquen, sustituyan o adicionen', '', '', '', '', '', '', 'V', '2020-06-03 04:13:58', '2020-06-03 04:13:58'),
(546, 37, 2, 'Reentrenamiento: Proceso anual obligatorio, por el cual se actualizan conocimientos y se entrenan habilidades y destrezas en prevención y protección contra caídas', '', '', '', '', '', '', 'V', '2020-06-03 04:14:23', '2020-06-03 04:14:23'),
(547, 37, 2, 'Aseguramiento estático: cuando el dispositivo de freno (ocho, nudo dinámico) permite el deslizamiento de la cuerda, se produce una fricción que transforma parte de la energía en calor', '', '', '', '', '', '', 'F', '2020-06-03 04:14:53', '2020-06-03 04:14:53'),
(548, 38, 1, 'El Sistema de Comando de Incidentes (SCI) es:', 'La identificación del problema y la estimación de las posibles consecuencias determinan el grado de desarrollo del Sistema en la escena', 'La combinación de instalaciones, equipamiento, personal, protocolos, procedimientos y comunicaciones, operando en una estructura organizacional común.', 'Evento de probable aparición y desarrollo en adición a la situación presente.', '', '', '', 'b', '2020-06-03 04:19:11', '2020-06-03 04:19:11'),
(549, 38, 1, '¿Cuándo se a plica el SCI?', 'Se aplica a cualquier incidente, evento u operativo.', 'Incendios forestales, restauración de zonas quemadas.', 'Programas para controlar o erradicar plagas y epidemias', 'Ninguna de las anteriores', '', '', 'a', '2020-06-03 04:21:07', '2020-06-03 04:21:07'),
(550, 38, 2, 'El Comandante del Incidente (CI) es la persona a cargo, es quien posee la máxima autoridad del Sistema de Comando.', '', '', '', '', '', '', 'V', '2020-06-03 04:21:31', '2020-06-03 04:21:31'),
(551, 38, 2, 'La organización del SCI no tiene la capacidad de ampliarse o contraerse para adecuarse a las necesidades del incidente.', '', '', '', '', '', '', 'F', '2020-06-03 04:22:00', '2020-06-03 04:22:00'),
(552, 38, 2, 'El Curso SCI capacita en el uso de una herramienta útil para lograr eficiencia en el    comando, el control y la coordinación de las operaciones de respuesta a un incidente.', '', '', '', '', '', '', 'V', '2020-06-03 04:22:22', '2020-06-03 04:22:22'),
(553, 38, 2, 'El Oficial de Seguridad: tiene la función de vigilancia y evaluación de situaciones peligrosas e inseguras.', '', '', '', '', '', '', 'V', '2020-06-03 04:22:38', '2020-06-03 04:22:38'),
(554, 38, 2, 'La unidad de situación Prepara el Plan de Acción del Incidente, mantiene toda la documentación relacionada con el incidente y provee servicios de duplicación.', '', '', '', '', '', '', 'F', '2020-06-03 04:22:57', '2020-06-03 04:22:57'),
(555, 38, 2, 'El Curso SCI capacita en el uso de una herramienta útil para lograr eficiencia en el comando.', '', '', '', '', '', '', 'V', '2020-06-03 04:23:12', '2020-06-03 04:23:12'),
(556, 38, 2, 'La Unidad de Desmovilización en emergencias complejas y de gran magnitud, ayuda a efectuar la desmovilización del personal de manera ordenada y segura.', '', '', '', '', '', '', 'V', '2020-06-03 04:23:34', '2020-06-03 04:23:34'),
(557, 38, 2, 'La Sección de Planificación incluyen recolectar, evaluar  y usar la información acerca del desarrollo del incidente y llevar un control de los recursos.', '', '', '', '', '', '', 'V', '2020-06-03 04:23:51', '2020-06-03 04:23:51'),
(558, 39, 1, '¿Qué es la Primera respuesta de incidentes con materiales peligrosos?', 'Toda sustancia sólida, liquida, gaseosa, biológica que puede ocasionar daños a los seres     humanos.', 'Son aquellas sustancias que no perjudican la integridad  de los seres humanos.', 'Aquellas sustancias que se pueden almacenar  en cualquier contenedor y transportarlas en cualquier tipo de vehículo.', '', '', '', 'a', '2020-06-03 04:32:41', '2020-06-03 04:32:41'),
(559, 39, 1, '¿Qué es    NFPA  704?', 'Sustancia peligrosa que ocasiona daños al ser humano.', 'sistema estandarizado para la identificación de riesgo de incendio de materiales peligrosos.', 'Identificación de peligros para el hombre y medio Ambiente.', '', '', '', 'b', '2020-06-03 04:34:03', '2020-06-03 04:34:03'),
(560, 39, 2, 'Las personas que están   expuestas a materiales peligrosas pueden constituir un riesgo.', '', '', '', '', '', '', 'V', '2020-06-03 04:35:28', '2020-06-03 04:35:28'),
(561, 39, 2, 'El  NFPA 704 Provee información básica para bomberos, personal de emergencias.', '', '', '', '', '', '', 'V', '2020-06-03 04:35:50', '2020-06-03 04:35:50'),
(562, 39, 2, 'Incidente por materiales peligrosos: evento no deseado que incluye la liberación o potencial liberación de materiales peligrosos en la que personas expuestas pueden morir.', '', '', '', '', '', '', 'V', '2020-06-03 04:36:08', '2020-06-03 04:36:08'),
(563, 39, 2, 'Los productos peligrosos no pueden ser fácilmente reconocidos, a distancia, por las características del rótulo.', '', '', '', '', '', '', 'F', '2020-06-03 04:36:37', '2020-06-03 04:36:37'),
(564, 39, 2, 'Los sólidos inflamables reaccionan exotérmicamente con el agua y producen hidrógeno.', '', '', '', '', '', '', 'V', '2020-06-03 04:36:57', '2020-06-03 04:36:57'),
(565, 39, 2, 'Agentes infecciosos son sustancias que contienen microorganismos y sus toxinas (como las bacterias, virus, parásitos, hongos), que pueden producir enfermedades en los animales y el hombre.', '', '', '', '', '', '', 'V', '2020-06-03 04:37:14', '2020-06-03 04:37:14'),
(566, 39, 2, 'Los oxidantes  son sustancias que sin ser combustibles, liberan oxígeno y facilitan la combustión de otras', '', '', '', '', '', '', 'V', '2020-06-03 04:37:36', '2020-06-03 04:37:36'),
(567, 39, 2, 'Los materiales radioactivos son sustancias que no emiten radiaciones de cierta significación dañinas a organismos vivientes.', '', '', '', '', '', '', 'F', '2020-06-03 04:37:59', '2020-06-03 04:37:59'),
(568, 40, 1, 'Un plan de emergencias se divide en dos etapas principales:', 'Evacuación Y participación', 'Preparación Y Respuesta', 'Señalización y rutas de escape', 'Ninguna de las anteriores', '', '', 'b', '2020-06-03 04:45:52', '2020-06-03 04:45:52'),
(569, 40, 1, 'Cuál de las siguientes pertenece al Procedimientos de lucha contra emergencias:', 'Evaluación', 'Lucha contra incendio', 'Control de fuga', 'Todas las anteriores', '', '', 'd', '2020-06-03 04:46:53', '2020-06-03 04:46:53'),
(570, 40, 1, 'Cómo acción inmediata de precaución, aísle en todas direcciones, el área del derrame o escape como mínimo a:', '50 metros', '30 metros', '60 metros', 'Ninguna de las anteriores', '', '', 'a', '2020-06-03 04:48:04', '2020-06-03 04:48:04'),
(571, 40, 1, 'Las sustancias Tóxicas y sustancias infecciosas pertenecen a la clase :', 'Clase 1', 'Clase 2', 'Clase 6', 'Clase 3', 'Todas las anteriores', '', 'e', '2020-06-03 04:50:29', '2020-06-03 04:50:29'),
(572, 40, 2, 'El análisis de riesgos tiene por objetivo identificar y evaluar cuales son aquellos eventos o condiciones que pueden llegar a ocasionar una emergencia', '', '', '', '', '', '', 'V', '2020-06-03 04:50:59', '2020-06-03 04:50:59'),
(573, 40, 2, 'Las sustancias no combustibles no encienden por sí mismas, pero se pueden descomponer al calentarse y producir vapores corrosivos y/o tóxicos.', '', '', '', '', '', '', 'V', '2020-06-03 04:51:28', '2020-06-03 04:51:28'),
(574, 40, 2, 'La clase de riesgo de materiales peligrosos está indicada tanto por su número de clase (o división) o por nombre. Los carteles/placas se utilizan para identificar la clase o división del material', '', '', '', '', '', '', 'V', '2020-06-03 04:52:03', '2020-06-03 04:52:03'),
(575, 40, 2, 'Para clorosilanos, no use agua, use espuma afff resistente al alcohol como medio de expansión.', '', '', '', '', '', '', 'V', '2020-06-03 04:53:03', '2020-06-03 04:53:03'),
(576, 40, 2, 'Se puede fumar en donde haya un derrame, siempre y cuando esté a más de 30 metros?', '', '', '', '', '', '', 'F', '2020-06-03 04:53:43', '2020-06-03 04:53:43'),
(577, 40, 2, 'En caso de contacto con la sustancia, enjuagar inmediatamente la piel o los ojos con agua corriente por lo menos durante 20 minutos.', '', '', '', '', '', '', 'F', '2020-06-03 04:54:16', '2020-06-03 04:54:16'),
(578, 41, 1, 'La planificación de la Seguridad Antes del Montaje está dirigida a:', 'Operarios', 'Los terceros, La Propia Estructura, Los Montadores', 'Todas las anteriores', '', '', '', 'b', '2020-06-03 04:59:28', '2020-06-03 04:59:28'),
(580, 41, 1, '¿El número ideal de operarios para un montaje son?', '2', '4', '3', 'Ninguna de las anteriores', '', '', 'c', '2020-06-03 05:01:44', '2020-06-03 05:01:44'),
(581, 41, 2, 'Los terceros Impiden la circulación peatonal en la fase de acopio deLos terceros Impiden la circulación peatonal en la fase de acopio de material y montaje. material y montaje.', '', '', '', '', '', '', 'V', '2020-06-03 19:03:38', '2020-06-03 19:03:38'),
(582, 41, 2, 'Plan de Montaje, Utilización y Desmontaje: Se refiere a aquellos andamios que tengan más de 6 m de altura o estén situados en un desnivel de 24 m.', '', '', '', '', '', '', 'V', '2020-06-03 19:07:22', '2020-06-03 19:07:22'),
(583, 41, 2, 'El Plan de Utilización consta de: Resumen de los aspectos más importantes que debe cuidar el usuario del andamio y que el responsable de la obra debe hacer respetar', '', '', '', '', '', '', 'V', '2020-06-05 04:12:24', '2020-06-05 04:12:24'),
(584, 41, 2, 'El andamio multidireccional Brío tiene la característica de contar con elementos estructurales independientes de las plataformas', '', '', '', '', '', '', 'V', '2020-06-05 04:12:56', '2020-06-05 04:12:56'),
(585, 41, 2, 'Después de un montaje comienza la utilización del andamio', '', '', '', '', '', '', 'V', '2020-06-05 04:13:16', '2020-06-05 04:13:16'),
(586, 41, 2, 'Los andamios deberán ser inspeccionados por una persona competente, con una formación universitaria o profesional', '', '', '', '', '', '', 'V', '2020-06-05 04:13:39', '2020-06-05 04:13:39'),
(587, 41, 2, 'Se monta el andamio después de comenzar las tareas de encofrado horizontal de la primera planta', '', '', '', '', '', '', 'F', '2020-06-05 04:14:03', '2020-06-05 04:14:03'),
(588, 41, 2, 'Cubriciones son una aplicación que se realiza antes de iniciar la obra, con el objeto de proteger ante las inclemencias climáticas', '', '', '', '', '', '', 'V', '2020-06-05 04:14:24', '2020-06-05 04:14:24'),
(589, 42, 1, 'Que es la ergonomía?', 'Es adaptar el trabajo a las capacidades y posibilidades del ser humano.', 'La postura frente al computador', 'La correcta iluminación en el área de trabajo', 'Todas las anteriores', '', '', 'd', '2020-06-05 04:19:14', '2020-06-05 04:19:14'),
(590, 42, 1, 'Que es psicosociología aplicada ?', 'las necesidades de las personas  cambiantes, como lo es la propia organización social y política', 'La aplicación de conocimientos en las áreas sociales', 'El desarrollo de procedimiento para mejorar la productividad de un individuo', 'La aplicación del reglamento de trabajo interno', '', '', 'a', '2020-06-05 04:20:20', '2020-06-05 04:20:20'),
(591, 42, 1, 'Las clases de ergonomía se puede clasificar en ?', 'Ergonomía de puestos / ergonomía de sistemas.', 'Ergonomía de concepción o ergonomía de corrección.', 'Ergonomía geométrica', 'Todas las anteriores', '', '', 'd', '2020-06-05 04:21:54', '2020-06-05 04:21:54'),
(592, 42, 1, 'Las Principales Funciones del Departamento de Seguridad e Higiene?', 'Revisar y aprobar las políticas de seguridad.', 'Realizar inspecciones periódicas de seguridad. disposiciones legales', 'Establecer normas adecuadas de seguridad, deben concordar con las', 'Todas las anteriores', '', '', 'd', '2020-06-05 04:24:02', '2020-06-05 04:24:02'),
(593, 42, 2, 'Unos de los principales objetivos de la ergonomía es Identificar, analizar y reducir los riesgos laborales (ergonómicos y psicosociales)', '', '', '', '', '', '', 'V', '2020-06-05 04:24:49', '2020-06-05 04:24:49'),
(594, 42, 2, 'La Ergonomía Ambiental es la rama de la Ergonomía, especializada en el estudio de los factores ambientales, generalmente físicos, que constituyen el entorno del sistema formado por la persona y el equipo de trabajo y su influencia en los aspectos relacionados con la seguridad, la eficiencia y la confortabilidad', '', '', '', '', '', '', 'V', '2020-06-05 04:25:13', '2020-06-05 04:25:13'),
(595, 42, 2, 'Ergonomía temporal: se encarga del estudio del bienestar del trabajador en relación con los tiempos de trabajo (los horarios de trabajo, los turnos, la duración de la jornada, el tiempo de reposo, las pausas y los descansos durante la jornada de trabajo, los ritmos de trabajo,', '', '', '', '', '', '', 'V', '2020-06-05 06:33:02', '2020-06-05 04:25:32'),
(596, 42, 2, 'La persona en el trabajo se compromete en una triple relación. relación con la producción, Una relación consigo mismo, una relación afectiva', '', '', '', '', '', '', 'F', '2020-06-05 04:25:58', '2020-06-05 04:25:58'),
(597, 42, 2, 'Cuando una persona esta estresada . Nuestro cerebro segrega unas sustancias, que se llaman Betaendorfinas', '', '', '', '', '', '', 'F', '2020-06-05 04:26:32', '2020-06-05 04:26:32'),
(599, 43, 2, 'Crear, almacenar y recuperar documentos.', '', '', '', '', '', '', 'V', '2020-06-05 04:55:20', '2020-06-05 04:55:20'),
(600, 43, 2, 'Editar textos.', '', '', '', '', '', '', 'V', '2020-06-05 04:55:46', '2020-06-05 04:55:46'),
(601, 43, 2, 'Seleccionar palabras, frases, párrafos.', '', '', '', '', '', '', 'V', '2020-06-05 04:56:06', '2020-06-05 04:56:06'),
(602, 43, 2, 'Seleccionar opciones de sinónimos.', '', '', '', '', '', '', 'V', '2020-06-05 04:57:06', '2020-06-05 04:57:06'),
(603, 43, 2, 'Buscar y reemplazar textos.', '', '', '', '', '', '', 'V', '2020-06-05 04:57:22', '2020-06-05 04:57:22'),
(604, 43, 2, 'Insertar y modificar símbolos y fechas.', '', '', '', '', '', '', 'V', '2020-06-05 04:57:37', '2020-06-05 04:57:37'),
(605, 43, 2, 'Incluir y modificar formatos de texto y párrafo.', '', '', '', '', '', '', 'V', '2020-06-05 04:58:18', '2020-06-05 04:58:18'),
(606, 43, 2, 'Cambiar tipos y tamaños de fuentes.', '', '', '', '', '', '', 'V', '2020-06-05 04:58:34', '2020-06-05 04:58:34'),
(607, 43, 2, 'Copiar formatos ya creados', '', '', '', '', '', '', 'V', '2020-06-05 04:59:21', '2020-06-05 04:59:21'),
(608, 43, 2, 'Cambiar minúsculas y mayúsculas.', '', '', '', '', '', '', 'V', '2020-06-05 04:59:35', '2020-06-05 04:59:35'),
(609, 43, 2, 'Trabajar con párrafos.', '', '', '', '', '', '', 'V', '2020-06-05 04:59:50', '2020-06-05 04:59:50'),
(610, 43, 2, 'Tabular.', '', '', '', '', '', '', 'V', '2020-06-05 05:00:19', '2020-06-05 05:00:19'),
(611, 43, 2, 'Hacer bordes y sombreados.', '', '', '', '', '', '', 'V', '2020-06-05 05:00:35', '2020-06-05 05:00:35'),
(612, 43, 2, 'Insertar viñetas y listas numeradas.', '', '', '', '', '', '', 'V', '2020-06-05 05:01:08', '2020-06-05 05:01:08'),
(613, 43, 2, 'Creación de índices y tablas de contenido.', '', '', '', '', '', '', 'V', '2020-06-05 05:01:25', '2020-06-05 05:01:25'),
(614, 43, 2, 'Insertar y modificar tablas.', '', '', '', '', '', '', 'V', '2020-06-05 05:01:41', '2020-06-05 05:01:41'),
(615, 43, 2, 'Insertar y manejar imágenes.', '', '', '', '', '', '', 'V', '2020-06-05 05:01:57', '2020-06-05 05:01:57'),
(616, 43, 2, 'Modificar las imágenes y su posición respecto del texto.', '', '', '', '', '', '', 'V', '2020-06-05 05:02:14', '2020-06-05 05:02:14'),
(617, 43, 2, 'Insertar dibujos.', '', '', '', '', '', '', 'V', '2020-06-05 05:02:30', '2020-06-05 05:02:30'),
(618, 43, 2, 'Configurar la página.', '', '', '', '', '', '', 'V', '2020-06-05 05:02:47', '2020-06-05 05:02:47'),
(619, 43, 2, 'Configurar la página.', '', '', '', '', '', '', 'V', '2020-06-05 05:02:48', '2020-06-05 05:02:48'),
(620, 43, 2, 'Insertar un encabezado y pie de página.', '', '', '', '', '', '', 'V', '2020-06-05 05:03:02', '2020-06-05 05:03:02'),
(621, 43, 2, 'Imprimir un documento.', '', '', '', '', '', '', 'V', '2020-06-05 05:03:17', '2020-06-05 05:03:17'),
(622, 44, 2, 'Abrir un archivo de Excel ya existente.', '', '', '', '', '', '', 'V', '2020-06-05 05:13:51', '2020-06-05 05:13:51'),
(623, 44, 2, 'Crear y guardar, guardar como, una nueva hoja de cálculo.', '', '', '', '', '', '', 'V', '2020-06-05 05:14:20', '2020-06-05 05:14:20'),
(624, 44, 2, 'Identificar una Celda, una Fila, una Columna.', '', '', '', '', '', '', 'V', '2020-06-05 05:14:46', '2020-06-05 05:14:46'),
(625, 44, 2, 'Realizar una fórmula básica (Sumar, restas, multiplicar, dividir.', '', '', '', '', '', '', 'V', '2020-06-05 05:15:05', '2020-06-05 05:15:05'),
(626, 44, 2, 'Imprimir una hoja de cálculo.', '', '', '', '', '', '', 'V', '2020-06-05 05:15:18', '2020-06-05 05:15:18'),
(627, 44, 2, 'Crear vínculos.', '', '', '', '', '', '', 'V', '2020-06-05 05:15:37', '2020-06-05 05:15:37'),
(628, 44, 2, 'Editar, insertar celdas, columnas, filas.', '', '', '', '', '', '', 'V', '2020-06-05 05:15:51', '2020-06-05 05:15:51'),
(629, 44, 2, 'Modificar la Fuente (Negrilla, cursiva, tipo, color y tamaño de letra.', '', '', '', '', '', '', 'V', '2020-06-05 05:16:11', '2020-06-05 05:16:11'),
(630, 44, 2, 'Copiar un formato de celda.', '', '', '', '', '', '', 'V', '2020-06-05 05:16:36', '2020-06-05 05:16:36'),
(631, 44, 2, 'Combinar y centrar celdas.', '', '', '', '', '', '', 'V', '2020-06-05 05:17:06', '2020-06-05 05:17:06'),
(632, 44, 2, 'Alinear una celda (Vertical y horizontal).', '', '', '', '', '', '', 'V', '2020-06-05 05:17:38', '2020-06-05 05:17:38'),
(633, 44, 2, 'Crear tablas (Modificarlas, colores, líneas).', '', '', '', '', '', '', 'V', '2020-06-05 05:18:49', '2020-06-05 05:18:49'),
(634, 44, 2, 'Ordenar y filtrar de manera ascendente o descendente.', '', '', '', '', '', '', 'V', '2020-06-05 05:19:07', '2020-06-05 05:19:07'),
(635, 44, 2, 'Insertar gráficos, imágenes prediseñadas, imágenes de la web.', '', '', '', '', '', '', 'V', '2020-06-05 05:19:27', '2020-06-05 05:19:27'),
(636, 44, 2, 'Crear gráficos, modificarlos y editarlos.', '', '', '', '', '', '', 'V', '2020-06-05 05:19:41', '2020-06-05 05:19:41'),
(637, 44, 2, 'Hacer bordes y sombreados.', '', '', '', '', '', '', 'V', '2020-06-05 05:19:56', '2020-06-05 05:19:56'),
(638, 44, 2, 'Imprimir un documento.', '', '', '', '', '', '', 'V', '2020-06-05 05:20:17', '2020-06-05 05:20:17'),
(639, 45, 2, 'Abrir un archivo de Power Point ya existente.', '', '', '', '', '', '', 'V', '2020-06-05 05:25:14', '2020-06-05 05:25:14'),
(640, 45, 2, 'Crear una diapositiva sencilla con un título y un párrafo.', '', '', '', '', '', '', 'V', '2020-06-05 05:25:32', '2020-06-05 05:25:32'),
(641, 45, 2, 'Crear una diapositiva con una plantilla prediseñada.', '', '', '', '', '', '', 'V', '2020-06-05 05:25:52', '2020-06-05 05:25:52'),
(642, 45, 2, 'Cambiar en diseño de una presentación.', '', '', '', '', '', '', 'V', '2020-06-05 05:26:10', '2020-06-05 05:26:10'),
(643, 45, 2, 'Editar un cuadro, sombrear, cambiar tipos de líneas, 3D.', '', '', '', '', '', '', 'V', '2020-06-05 05:26:32', '2020-06-05 05:26:32'),
(644, 45, 2, 'Modificar los efectos de formas.', '', '', '', '', '', '', 'V', '2020-06-05 05:26:52', '2020-06-05 05:26:52'),
(645, 45, 2, 'Hacer un hipervínculo.', '', '', '', '', '', '', 'V', '2020-06-05 05:27:12', '2020-06-05 05:27:12'),
(646, 45, 2, 'Insertar videos.', '', '', '', '', '', '', 'V', '2020-06-05 05:27:31', '2020-06-05 05:27:31'),
(647, 45, 2, 'Hacer gráficos desde Excel.', '', '', '', '', '', '', 'V', '2020-06-05 05:27:46', '2020-06-05 05:27:46'),
(648, 45, 2, 'Crear animaciones.', '', '', '', '', '', '', 'V', '2020-06-05 05:28:06', '2020-06-05 05:28:06'),
(649, 45, 2, 'Insertar tablas y editarlas.', '', '', '', '', '', '', 'V', '2020-06-05 05:28:21', '2020-06-05 05:28:21'),
(650, 45, 2, 'Imprimir una hoja de cálculo.', '', '', '', '', '', '', 'V', '2020-06-05 05:28:38', '2020-06-05 05:28:38'),
(651, 45, 2, 'Editar, insertar imágenes desde internet.', '', '', '', '', '', '', 'V', '2020-06-05 05:28:53', '2020-06-05 05:28:53'),
(652, 45, 2, 'Modificar la Fuente (Negrilla, cursiva, tipo, color y tamaño de letra', '', '', '', '', '', '', 'V', '2020-06-05 05:29:09', '2020-06-05 05:29:09'),
(653, 45, 2, 'Insertar gráficos, imágenes prediseñadas, imágenes de la web.', '', '', '', '', '', '', 'V', '2020-06-05 05:29:28', '2020-06-05 05:29:28'),
(654, 45, 2, 'Mostrar una presentación completa.', '', '', '', '', '', '', 'V', '2020-06-05 05:29:47', '2020-06-05 05:29:47'),
(655, 45, 2, 'Copiar y pegar una presentación y modificarla.', '', '', '', '', '', '', 'V', '2020-06-05 05:30:05', '2020-06-05 05:30:05'),
(656, 45, 2, 'Imprimir una presentación.', '', '', '', '', '', '', 'V', '2020-06-05 05:30:30', '2020-06-05 05:30:30'),
(657, 51, 1, '1.	El conocimiento por parte de los ciudadanos y ciudadanas de las normas y señales que regulan la circulación de vehículos y personas, por las calzadas y aceras, se llama', 'Seguridad Vial', 'Normas preventivas', 'Participación ciudadana', 'd)	Ninguna de las anteriores', '', '', 'a', '2020-06-12 18:10:12', '2020-06-12 18:10:12'),
(658, 51, 1, '2.	Los elementos de la circulación vial, son', 'Los semáforos, las calles y los buses', 'Las Personas, Los Vehículos de transporte terrestre y la vía', 'Los carros, bicicletas y motos', 'Ninguna de las anteriores', '', '', 'b', '2020-06-12 18:12:06', '2020-06-12 18:12:06'),
(661, 51, 1, '3.	Los vehículos de transporte terrestre se clasifican en', 'Carros, buses, motos', 'Público y particular', 'Motorizados y no motorizados', 'Ninguna de las anteriores', '', '', 'c', '2020-06-12 18:18:46', '2020-06-12 18:18:46'),
(662, 51, 1, '4.	Las señales de tránsito, se dividen en:', 'Informativa', 'Reglamentaria', 'Preventivas', 'De piso', 'Todas las anteriores', '', 'e', '2020-06-12 18:21:20', '2020-06-12 18:21:20'),
(663, 51, 2, '5.	Las señales Informativas, ¿muestran límites y prohibiciones en el camino o vía que transitamos?', '', '', '', '', '', '', 'F', '2020-06-12 18:22:52', '2020-06-12 18:22:52'),
(664, 51, 2, '6.	Las señales Reglamentarias, ¿Informan sobre servicios y lugares de la vía?', '', '', '', '', '', '', 'F', '2020-06-12 18:23:16', '2020-06-12 18:23:16'),
(665, 51, 2, '7.	Las señales preventivas, muestran al conductor los riesgos o factores de atención existentes en el recorrido.', '', '', '', '', '', '', 'V', '2020-06-12 18:23:34', '2020-06-12 18:23:34'),
(666, 51, 2, '8.	Las señales de piso, se dividen en flechas blancas, líneas amarillas y líneas blancas', '', '', '', '', '', '', 'V', '2020-06-12 18:24:04', '2020-06-12 18:24:04'),
(667, 51, 2, '9.	Accidente de tránsito es, ¿un suceso que ocurre de manera inesperada, involucrando a vehículos de transporte y/o personas', '', '', '', '', '', '', 'V', '2020-06-12 18:24:37', '2020-06-12 18:24:37'),
(668, 51, 2, '10.	Los tipos de accidente de tránsito son: ¿leves, fuertes y muy fuertes?', '', '', '', '', '', '', 'F', '2020-06-12 18:24:54', '2020-06-12 18:24:54'),
(669, 52, 2, '1. Según la Resolución 0666 del 2020, se adopta el protocolo de bioseguridad sólo para  las actividades del sector de la construcción', '', '', '', '', '', '', 'F', '2020-06-12 18:41:08', '2020-06-12 18:41:08'),
(670, 52, 2, '2.La bioseguridad es un conjunto de medidas preventivas que tienen por objetivo minimizar o eliminar el factor de riesgo biológico con afectación a la salud.', '', '', '', '', '', '', 'V', '2020-06-12 18:41:30', '2020-06-12 18:41:30'),
(671, 52, 2, '3.El protocolo de bioseguridad frente al impacto del COVID-19, está orientado a disminuir el riesgo de transmisión del virus, garantizar la continuidad de las actividades y a la protección integral de las personas', '', '', '', '', '', '', 'V', '2020-06-12 18:41:54', '2020-06-12 18:41:54'),
(672, 52, 2, '4.Implementar medidas como el lavado de manos, el distanciamiento social y el Uso de tapabocas, son las únicas  prácticas de  Bioseguridad, decretadas en la Resolución 066 de 2020, por el Ministerio de Salud y Protección Socia', '', '', '', '', '', '', 'F', '2020-06-12 18:43:30', '2020-06-12 18:43:30'),
(673, 52, 1, '5. Las paredes, puertas, ventanas, muebles, sillas, celulares, que han estado en contacto con microorganismos, hace referencia a', 'Material Contaminado', 'Infección respiratoria', 'Hipoclorito', '', '', '', 'a', '2020-06-12 18:44:44', '2020-06-12 18:44:44'),
(674, 52, 1, '6.El cumplimiento del Protocolo de Bioseguridad, es responsabilidad de', 'Solo el personal del sector de la salud', 'Solo los trabajadores del área de producción', 'Participación activa del Empleador, los trabajadores, las ARL y otros grupos de interés', '', '', '', 'c', '2020-06-12 18:46:09', '2020-06-12 18:46:09'),
(679, 52, 2, '7. En los humanos el COVID-19 causa infecciones respiratorias que pueden ir desde el resfriado común hasta enfermedades más graves el síndrome respiratorio agudo severo (SARS)', '', '', '', '', '', '', 'V', '2020-06-12 18:50:47', '2020-06-12 18:50:47'),
(680, 52, 2, '8. Si una persona tiene síntomas leves, como tos o fiebre leves, debe ir a urgencias', '', '', '', '', '', '', 'F', '2020-06-12 18:51:08', '2020-06-12 18:51:08'),
(681, 52, 1, '9.Para protegernos a nosotros mismos y a los demás frente al COVID-19, se sugiere', 'Practicar la higiene respiratoria y de las manos es importante en TODO momento', 'Ingresar a lugares públicos y con protocolos de bioseguridad', 'Consumir bebidas calientes y con limón', '', '', '', 'a', '2020-06-12 18:52:28', '2020-06-12 18:52:28'),
(682, 52, 1, '10.En caso de Interacción con terceros (proveedores, clientes, aliados, etc.), se sugiere', 'Definir protocolos de interacción', 'No establecer los turnos', 'La distancia entre las personas no es necesaria', '', '', '', 'a', '2020-06-12 18:53:42', '2020-06-12 18:53:42'),
(683, 52, 1, 'Dentro del grupo de  Persona de alto riesgo frente al COVID-19,  están', 'Personas que salen a la calle', 'Personas que son delgadas', 'Personas con enfermedades preexistentes de alto riesgo para el COVID-19, (Diabetes, Enfermedad cardiovascular -Hipertensión Arterial, otros)', '', '', '', 'c', '2020-06-12 18:54:57', '2020-06-12 18:54:57');
INSERT INTO `preguntas` (`id`, `id_modulo`, `tipo`, `pregunta`, `a`, `b`, `c`, `d`, `e`, `f`, `respuesta`, `created_at`, `updated_at`) VALUES
(684, 52, 1, '12.El aislamiento es una medida importante que adoptan las personas con síntomas de COVID-19, lo cual hace referencia a', 'Salir con los niños al parque', 'Se produce cuando una persona que tiene fiebre, tos u otros síntomas de COVID-19 se queda en casa y no va al trabajo, a la escuela o a lugares público', 'Salir solo a la tienda', '', '', '', 'b', '2020-06-12 18:57:07', '2020-06-12 18:57:07'),
(686, 53, 1, '1. Un espacio, que tiene medios limitados para entrar y salir, es decir no permiten una entrada ni una salida en forma segura y rápida de todos sus ocupantes ¿se llama?', 'Espacio abierto', 'Espacio cerrado', 'Espacio confinado', 'Espacio inherente', '', '', 'c', '2020-06-12 19:05:32', '2020-06-12 19:05:32'),
(687, 53, 1, '2. Aquél espacio confinado en el que no existe riesgo por deficiencia o enriquecimiento de oxígeno, ni atmósferas explosivas o inflamables, y en el que las concentraciones de sustancias químicas peligrosas son inferiores al nivel de acción. ¿se le llama?', 'Espacio confinado Tipo I', 'Espacio confinado Tipo II', 'Espacio confinado Tipo III', 'Ninguno de los anteriores', '', '', 'a', '2020-06-12 19:07:28', '2020-06-12 19:07:28'),
(688, 53, 1, '3. Aquel espacio confinado que tiene el potencial de causar lesiones y/o enfermedades de trabajo, e incluso puede ser inmediatamente peligroso para la vida y la salud. ¿se llama?', 'Espacio confinado Tipo I', 'Espacio confinado Tipo II', 'Espacio confinado Tipo III', 'Ninguno de los anteriores', '', '', 'b', '2020-06-12 19:09:56', '2020-06-12 19:09:56'),
(692, 53, 2, '4. Es una actividad previa, notificar oportunamente a todas las secciones de la empresa que puedan resultar afectadas por el trabajo en espacio confinado', '', '', '', '', '', '', 'V', '2020-06-12 19:13:16', '2020-06-12 19:13:16'),
(693, 53, 2, '5. El trabajo en espacios confinados exige la implementación de un sistema personal de interrupción de caídas', '', '', '', '', '', '', 'V', '2020-06-12 19:13:37', '2020-06-12 19:13:37'),
(694, 53, 2, '6. Punto de conexión segura para los cabos de salvamento, acolladores o dispositivos de desaceleración, independiente de los medios utilizados para apoyar o suspender al trabajador, se llama dispositivo de desaceleración', '', '', '', '', '', '', 'F', '2020-06-12 19:14:08', '2020-06-12 19:14:08'),
(695, 53, 2, '7. Al punto de conexión segura para los cabos de salvamento, acolladores o dispositivos de desaceleración, independiente de los medios utilizados para apoyar o suspender al trabajador, se llama anclaje', '', '', '', '', '', '', 'V', '2020-06-12 19:14:27', '2020-06-12 19:14:27'),
(696, 53, 2, '8. El uso de cinturón corporal está prohibido (OSHA - 1 de enero/98). Un arnés ofrece mejor protección de caída libre, reduce el riesgo de lesiones y distribuye las fuerzas de interrupción de caída a lo largo de los muslos, la pelvis, la cintura, el pecho y los hombros', '', '', '', '', '', '', 'V', '2020-06-12 19:14:52', '2020-06-12 19:14:52'),
(697, 53, 2, '9. El supervisor, observa las condiciones en que se realiza el trabajo, lleva la lista de los entrantes y reporta si alguien no autorizado entra', '', '', '', '', '', '', 'F', '2020-06-12 19:15:45', '2020-06-12 19:15:45'),
(699, 53, 2, '10. El asistente, Verifica que las condiciones de entrada sean seguras, que el trabajador entrante presente el permiso y las condiciones consignadas en éste se cumplan', '', '', '', '', '', '', 'F', '2020-06-12 19:24:43', '2020-06-12 19:24:43'),
(700, 52, 1, '13.Si una persona presenta síntomas de COVID-19, es necesario tener en cuenta:', '13.Si una persona presenta síntomas de COVID-19, es necesario tener en cuenta:', 'Asegurarse de reportar los casos sospechosos de contagio con el COVID-19 a las entidades respectivas: Secretarias de salud, a la EPS del trabajador y a la ARL', 'No es necesario  reportar el caso a la EPS', '', '', '', 'b', '2020-06-12 19:29:10', '2020-06-12 19:29:10'),
(702, 54, 1, '1.	A los cuidados o medidas que realiza el auxiliador, en el mismo lugar donde ha ocurrido el accidente y con material prácticamente improvisado, hasta que llega el personal especializado, se le llama', 'Observación médica', 'Primeros auxilios', 'Atención médica', 'Ninguna de las anteriores', '', '', 'b', '2020-06-12 19:43:36', '2020-06-12 19:43:36'),
(703, 54, 1, '2.	¿Cuál de las siguientes, es una de las 10 reglas de primeros auxilios?', 'Gritar para llamar la atención', 'Llamar a los amigos para contar lo sucedido', 'Conservar la serenidad y tomar el mando de la situación.', 'Ninguna de las anteriores', '', '', 'c', '2020-06-12 19:47:30', '2020-06-12 19:47:30'),
(704, 54, 1, '3.	¿Cuál de los siguientes artículos es necesario en el botiquín de primeros auxilios?', 'Yodo', 'Morfina', 'Camilla', 'Todas las anteriores', '', '', 'a', '2020-06-12 19:49:24', '2020-06-12 19:49:24'),
(705, 54, 1, '4.	¿Cuál es una regla de cuidado y mantenimiento del botiquín de primeros auxilios?', 'Mantener los medicamentos sin etiquetas de nombre', 'Mantenerlo con candado', 'Mantenerlo al alcance de los niños', 'No cubicarlo en el baño o la cocina', '', '', 'd', '2020-06-12 19:51:05', '2020-06-12 19:51:05'),
(706, 54, 1, '5.	Las lesiones provocadas por un agente de calor, ¿se les llama?', 'Mutilación', 'Quemadura', 'Politraumatismo', 'Todas las anteriores', '', '', 'b', '2020-06-12 19:52:44', '2020-06-12 19:52:44'),
(707, 54, 2, '6.	A la acción ocasionada por la interrupción de la respiración, lo que provoca una disminución de oxígeno en el organismo, se le llama asfixia', '', '', '', '', '', '', 'V', '2020-06-12 19:53:15', '2020-06-12 19:53:15'),
(708, 54, 2, '7.	Al  descenso súbito de la vitalidad corporal causada por el dolor, el miedo o la pérdida de sangre que puede provocar desde un simple desmayo hasta la muerte, se le conoce como Traumatismo', '', '', '', '', '', '', 'F', '2020-06-12 19:53:37', '2020-06-12 19:53:37'),
(709, 54, 2, '8.	Se define como poli traumatizado a todo individuo que sufre traumatismos (golpes) de múltiples órganos y sistemas corporales, algunos de los cuales comporta, aunque sólo sea potencialmente, un riesgo vital para el accidentado', '', '', '', '', '', '', 'V', '2020-06-12 19:54:20', '2020-06-12 19:54:20'),
(710, 54, 2, '9.	El desmayo, es también conocido como, sincope', '', '', '', '', '', '', 'V', '2020-06-12 19:54:51', '2020-06-12 19:54:51'),
(711, 54, 2, '10.	La exposición excesiva al frio se conoce como, insolación', '', '', '', '', '', '', 'F', '2020-06-12 19:55:11', '2020-06-12 19:55:11'),
(712, 49, 1, '1. ¿Qué es retención?', 'Es un sistema que permite delimitar un sistema de trabajo que impide que el trabajador entre en una zona con riesgo de caída. Este dispositivo no está destinado a detener', 'Sistema, como su propio nombre indica, sujeta  al usuario y le permite posicionarse con precisión en apoyo o en suspensión', 'se debe prever un plan de evacuación para permitir a los equipos autorrescatarse o una evacuación en caso de accidente', 'Ninguna de las anteriores', '', '', 'a', '2020-06-12 20:10:25', '2020-06-12 20:10:25'),
(715, 49, 1, '2. ¿Qué es una cadena de seguridad?', 'Acceso en progresiones hacia arriba y hacia abajo y, por otro, nos mantiene seguros frente a las posibles caídas', 'Es el conjunto de elementos que intervienen en una caída para absorber la energía generada. Su función es lograr una detención “amortiguada” y así evitar que el cuerpo sufra daños', 'Son las que se utilizan en todas las maniobras en las que existe riesgo de caída a fin de asegurar progresiones de primero o de segundo de cuerda', 'Todas las anteriores', '', '', 'b', '2020-06-12 20:19:50', '2020-06-12 20:19:50'),
(716, 49, 2, '3. El trabajo en altura se define como cualquier actividad o desplazamiento que realice un trabajador mientras esté expuesto a un riesgo de caída a distinto nivel', '', '', '', '', '', '', 'V', '2020-06-12 20:21:15', '2020-06-12 20:21:15'),
(717, 49, 2, '4. Un sistema anticaídas es un dispositivo de aseguramiento, independiente del modo de progresión o sujeción, conectado al punto de enganche “A” (anticaídas) del arnés', '', '', '', '', '', '', 'V', '2020-06-12 20:21:45', '2020-06-12 20:21:45'),
(718, 49, 2, '5. La altura libre tiene en cuenta: La distancia de parada de los aparatos móviles o la longitud del elemento de amarre.', '', '', '', '', '', '', 'V', '2020-06-12 20:25:14', '2020-06-12 20:25:14'),
(719, 49, 2, '6. La energía potencial de un bombero en altura depende de su masa y de la altura de la caída', '', '', '', '', '', '', 'V', '2020-06-12 20:26:12', '2020-06-12 20:26:12'),
(720, 49, 2, '7. Una  Cuerda de tracción será la cuerda que nos proporcione seguridad en caso de que falle algún elemento de la parte de tracción (SAS, mosquetones o la propia cuerda', '', '', '', '', '', '', 'F', '2020-06-12 20:26:38', '2020-06-12 20:26:38'),
(721, 49, 2, '8. Los nudos tienen la misión de unir al bombero con la cuerda y la cuerda con los seguros', '', '', '', '', '', '', 'V', '2020-06-12 20:27:01', '2020-06-12 20:27:01'),
(722, 49, 2, '9. Aseguramiento estático: cuando el dispositivo de freno (ocho, nudo dinámico) permite el deslizamiento de la cuerda, se produce una fricción que transforma parte de la energía en calor.', '', '', '', '', '', '', 'F', '2020-06-12 20:27:31', '2020-06-12 20:27:31'),
(723, 49, 2, '10. Los desviadores son una de las instalaciones más utilizadas en rescate urbano y trabajos verticales hasta el punto de que a veces incluso se utiliza el trípode como desviador', '', '', '', '', '', '', 'V', '2020-06-12 20:29:32', '2020-06-12 20:29:32'),
(724, 58, 1, '1.	la utilización de productos químicos en el trabajo, cada frasco, envase , garrafa, tambor, tanque o vasija que contenga cualquier tipo de sustancia química, debe estar debidamente etiquetado y marcado con la identidad del producto químico que contiene y debe incluir también las advertencias sobre sus riesgos. ¿Está conforme a la ley?', 'Ley 55 de 1993', 'Ley 11 de 1987', 'Ley 38 de 2001', 'Ley 65 de 1998', '', '', 'a', '2020-06-14 03:40:11', '2020-06-14 03:40:11'),
(725, 58, 1, '2.	Indican con precisión el nombre del producto, su estado físico y su concentración.', 'Las Tapas', 'Las Etiquetas', 'El envase', 'Todas las anteriores', '', '', 'b', '2020-06-14 03:43:56', '2020-06-14 03:43:56'),
(726, 58, 1, '3.	Es una clasificación originada en la Organización Marítima Internacional - Manejo de Carga Peligrosa (IMDG por su sigla en inglés).', 'OMI', 'DOT', 'CMY', 'Ninguna de las anteriores', '', '', 'a', '2020-06-14 03:45:24', '2020-06-14 03:45:24'),
(727, 58, 1, '4.	El sistema de pictogramas o etiquetas de la CEE es obligatorio para los proveedores de sustancias químicas peligrosas del continente', 'a)	Americano', 'Asiático', 'Africano', 'Europeo', '', '', 'd', '2020-06-14 03:48:50', '2020-06-14 03:48:50'),
(729, 58, 2, '5.	El Numero de las Naciones Unidas, Corresponde a un número de identificación designado por la Organización de las Naciones Unidas para cada sustancia química comercial.', '', '', '', '', '', '', 'V', '2020-06-14 03:49:36', '2020-06-14 03:49:36'),
(730, 58, 2, '6.	El sistema NFPA ha sido adoptado en los EEUU y en muchos otros países como complemento de los otros sistemas de identificación e información, especialmente para recipientes como tanques estacionarios y carro tanques', '', '', '', '', '', '', 'V', '2020-06-14 03:50:07', '2020-06-14 03:50:07'),
(732, 58, 2, '7.	Las Hojas de Datos de Seguridad (conocidas en inglés como Material Safety Data Sheets o MSDS), contienen información valiosa y detallada sobre las propiedades físicas y químicas de las sustancias', '', '', '', '', '', '', 'V', '2020-06-14 03:51:36', '2020-06-14 03:51:36'),
(733, 58, 2, '8.	El casco, anteojos y carteas, hacen parte de los criterios tlv’s para sustancias químicas', '', '', '', '', '', '', 'F', '2020-06-14 03:52:02', '2020-06-14 03:52:02'),
(734, 58, 2, '9.	El almacenamiento de sustancias peligrosas es de crítica importancia, ya que estas sustancias pueden quemar, explotar, contaminar, corroer, disolver, manchar, y producir reacciones perjudiciales.', '', '', '', '', '', '', 'V', '2020-06-14 03:52:27', '2020-06-14 03:52:27'),
(735, 58, 2, '10.	En el almacenamiento se debe considerar la reactividad y/o toxicidad de las sustancias', '', '', '', '', '', '', 'V', '2020-06-14 03:52:58', '2020-06-14 03:52:58'),
(736, 47, 2, '1. El estudiante está en la capacidad de reconocer los signos vitales y reanimar una persona', '', '', '', '', '', '', 'F', '2020-06-14 14:34:53', '2020-06-14 14:34:53'),
(737, 47, 2, '2.   El estudiante está en la capacidad de trasladar un lesionado', '', '', '', '', '', '', 'F', '2020-06-14 14:35:16', '2020-06-14 14:35:16'),
(740, 47, 2, '3. El estudiante está en la capacidad de tratar una persona en caso de fractura', '', '', '', '', '', '', 'F', '2020-06-14 14:38:45', '2020-06-14 14:38:45'),
(741, 47, 2, '4. El estudiante está en la capacidad de tratar una persona en caso de una hemorragia', '', '', '', '', '', '', 'F', '2020-06-14 14:39:09', '2020-06-14 14:39:09'),
(742, 47, 2, '5. El estudiante está en la capacidad de tratar una persona en caso de una obstrucción de la vía aérea', '', '', '', '', '', '', 'F', '2020-06-14 14:39:30', '2020-06-14 14:39:30'),
(743, 47, 2, '6 . El estudiante está en la capacidad de tratar una persona en caso de una alteración de la consciencia', '', '', '', '', '', '', 'F', '2020-06-14 14:39:58', '2020-06-14 14:39:58'),
(744, 47, 2, '8. El estudiante está en la capacidad de tratar una persona en caso de una lesión traumatológica', '', '', '', '', '', '', 'F', '2020-06-14 14:40:29', '2020-06-14 14:40:29'),
(745, 47, 2, '9. El estudiante está en la capacidad de tratar una persona en caso de una quemaduras', '', '', '', '', '', '', 'F', '2020-06-14 14:40:51', '2020-06-14 14:40:51'),
(746, 47, 2, '10 . El estudiante está en la capacidad de tratar una persona en caso de una lesión térmica', '', '', '', '', '', '', 'F', '2020-06-14 14:41:13', '2020-06-14 14:41:13'),
(747, 47, 2, '11 El estudiante está en la capacidad de tratar una persona en caso de una lesión eléctrica', '', '', '', '', '', '', 'F', '2020-06-14 14:41:35', '2020-06-14 14:41:35'),
(748, 47, 2, '12 . El estudiante está en la capacidad de tratar una persona en caso de una lesión ocular', '', '', '', '', '', '', 'F', '2020-06-14 14:41:58', '2020-06-14 14:41:58'),
(749, 47, 2, '13 .  El estudiante está en la capacidad de tratar una persona en caso de una intoxicación', '', '', '', '', '', '', 'F', '2020-06-14 14:42:26', '2020-06-14 14:42:26'),
(751, 55, 2, '1. Los principios ergonómicos tienen como objetivo mejorar la adecuación de un trabajador a una actividad.', '', '', '', '', '', '', 'V', '2020-06-14 15:01:41', '2020-06-14 15:01:41'),
(772, 46, 1, '1. ¿Qué es la Señalización Vertical Luminosa?', 'Son señales compuestas por unidades ópticas de luz propia variable.', 'Señales y órdenes de los agentes de tránsito.', 'Son señales con luz propia, continua o intermitente, destinada al usuario de la vía pública', 'Ninguna de las anteriores.', '', '', 'c', '2020-06-14 15:57:09', '2020-06-14 15:57:09'),
(773, 46, 1, '2. La atención en la conducción puede disminuir fundamentalmente por:', 'La fatiga', 'La somnolencia', 'La monotonía del viaje', 'Todas las anteriores', '', '', 'd', '2020-06-14 15:59:49', '2020-06-14 15:59:49'),
(774, 46, 1, '3. ¿Qué es sensibilidad al encandilamiento?', 'Es la perturbación y malestar  provocados en los órganos visuales por una fuente lumínica demasiado intensa.', 'Transcurre desde la percepción de una señal o de un obstáculo imprevisto', 'Ninguna de las anteriores', '', '', '', 'a', '2020-06-14 16:00:43', '2020-06-14 16:00:43'),
(775, 46, 2, '4. La Señalización ¿es el lenguaje de comunicación destinado a transmitir al usuario de la vía las advertencias, prohibiciones, obligaciones, informaciones?', '', '', '', '', '', '', 'V', '2020-06-14 16:01:13', '2020-06-14 16:01:13'),
(776, 46, 2, '5. La señalización comprende la Demarcación horizontal.', '', '', '', '', '', '', 'V', '2020-06-14 16:01:42', '2020-06-14 16:01:42'),
(777, 46, 2, '6. Los semáforos  tienen por objeto regular el derecho de paso o de acceso en forma alternativa para vehículos o peatones que confluyen sobre un determinado punto de la vía.', '', '', '', '', '', '', 'V', '2020-06-14 16:04:33', '2020-06-14 16:04:33'),
(779, 46, 2, '8. La conducción nocturna es mucho menos  peligrosa que la diurna.', '', '', '', '', '', '', 'F', '2020-06-14 16:05:34', '2020-06-14 16:05:34'),
(780, 46, 2, '9. Los espejos retrovisores son necesarios para ver lo que sucede a nuestra espalda.', '', '', '', '', '', '', 'V', '2020-06-14 16:06:10', '2020-06-14 16:06:10'),
(781, 46, 2, '10. Se considera accidente de tránsito todo hecho que produzca  daño en personas o cosas como consecuencia de la circulación', '', '', '', '', '', '', 'V', '2020-06-14 16:06:28', '2020-06-14 16:06:28'),
(784, 46, 1, '7  La señalización comprende:', 'Señales y órdenes dinámicas', 'Señales verticales', 'Demarcación horizontal', 'Todas las anteriores', '', '', 'd', '2020-06-14 21:11:42', '2020-06-14 21:11:42'),
(785, 42, 2, 'El objetivo de la ergonomía es adaptar el trabajo a las capacidades y posibilidades del ser humano.', '', '', '', '', '', '', 'V', '2020-06-15 23:07:29', '2020-06-15 23:07:29'),
(786, 55, 2, '2. Una mala postura puede provocar adormecimiento y hormigueo en la parte afectada del cuerpo.', '', '', '', '', '', '', 'V', '2020-07-20 18:54:09', '2020-07-20 18:54:09'),
(787, 55, 2, '3. A la acción ocasionada por la interrupción de la respiración, lo que provoca una disminución de oxígeno en el organismo, se le llama asfixia.', '', '', '', '', '', '', 'V', '2020-07-20 18:56:01', '2020-07-20 18:56:01'),
(788, 55, 2, '4. La exposición excesiva al frio se conoce como, insolación.', '', '', '', '', '', '', 'F', '2020-07-20 18:57:33', '2020-07-20 18:57:33'),
(789, 55, 1, '5. Su cuerpo puede verse estresado por', 'vibración.', 'frío.', 'iluminación deficiente.', 'todas las anteriores.', '', '', 'd', '2020-07-20 19:00:21', '2020-07-20 19:00:21'),
(790, 55, 1, '6. La posición neutra es:', 'la posición que produce la menor cantidad de tensión en el cuerpo.', 'la posición más difícil que el cuerpo puede mantener.', 'una posición segura que protege sólo la espalda.', 'la única posición en la que su cuerpo puede trabajar.', '', '', 'a', '2020-07-20 19:03:26', '2020-07-20 19:03:26'),
(791, 55, 1, '7. A los cuidados o medidas que realiza el auxiliador, en el mismo lugar donde ha ocurrido el accidente y con material prácticamente improvisado, hasta que llega el personal especializado, se le llama.', 'Observación médica', 'Primeros auxilios', 'Atención médica', 'Ninguna de las anteriorese las anteriores', '', '', 'b', '2020-07-20 19:07:19', '2020-07-20 19:07:19'),
(792, 55, 1, '8. ¿Cuál de las siguientes, es una de las 10 reglas de primeros auxilios?', 'Gritar para llamar la atención', 'Llamar a los amigos para contar lo sucedido', 'Conservar la serenidad y tomar el mando de la situación.', 'Ninguna de las anteriores.', '', '', 'c', '2020-07-20 19:11:49', '2020-07-20 19:11:49'),
(793, 55, 1, '9. ¿Cuál de los siguientes artículos es necesario en el botiquín de primeros auxilios?', 'Yodo', 'Morfina', 'Camilla', 'Todas las anteriores.', '', '', 'a', '2020-07-20 19:13:26', '2020-07-20 19:13:26'),
(794, 55, 1, '10. Las lesiones provocadas por un agente de calor, ¿se les llama?', 'Mutilación', 'Quemadura', 'Politraumatismo', 'Todas las anteriores', '', '', 'b', '2020-07-20 19:15:49', '2020-07-20 19:15:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultados`
--

CREATE TABLE `resultados` (
  `id` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL,
  `id_modulo` int(11) NOT NULL,
  `id_evaluacion` int(11) DEFAULT NULL,
  `preguntas` int(11) DEFAULT NULL,
  `respondidas` int(11) DEFAULT NULL,
  `resultado` int(11) DEFAULT NULL,
  `estado_eva` int(11) DEFAULT NULL,
  `fecha_realiz` timestamp NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_inscripcion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `resultados`
--

INSERT INTO `resultados` (`id`, `id_alumno`, `id_modulo`, `id_evaluacion`, `preguntas`, `respondidas`, `resultado`, `estado_eva`, `fecha_realiz`, `created_at`, `updated_at`, `id_inscripcion`) VALUES
(1, 1, 34, NULL, 10, 8, 80, 1, '2020-06-07 22:00:00', '2020-06-08 05:21:28', '2020-06-08 05:21:28', 5),
(2, 12, 41, NULL, 10, 7, 70, 1, '2020-06-09 22:00:00', '2020-06-10 17:27:54', '2020-06-10 17:27:54', 10),
(3, 10, 41, NULL, 10, 7, 70, 1, '2020-06-10 22:00:00', '2020-06-11 02:06:55', '2020-06-11 02:06:55', 42),
(4, 10, 44, NULL, 17, 17, 100, 1, '2020-06-10 22:00:00', '2020-06-11 09:28:31', '2020-06-11 09:28:31', 44),
(5, 13, 41, NULL, 10, 10, 100, 1, '2020-06-13 22:00:00', '2020-06-14 17:57:21', '2020-06-14 17:57:21', 11),
(6, 13, 34, NULL, 10, 10, 100, 1, '2020-06-13 22:00:00', '2020-06-14 18:06:57', '2020-06-14 18:06:57', 13),
(7, 13, 25, NULL, 10, 10, 100, 1, '2020-06-13 22:00:00', '2020-06-14 18:19:44', '2020-06-14 18:19:44', 107),
(8, 13, 27, NULL, 10, 10, 100, 1, '2020-06-13 22:00:00', '2020-06-14 18:22:11', '2020-06-14 18:22:11', 14),
(9, 13, 52, NULL, 13, 13, 100, 1, '2020-06-13 22:00:00', '2020-06-14 18:25:07', '2020-06-14 18:25:07', 108),
(10, 13, 30, NULL, 10, 9, 90, 1, '2020-06-13 22:00:00', '2020-06-14 18:28:36', '2020-06-14 18:28:36', 109),
(11, 13, 31, NULL, 10, 8, 80, 1, '2020-06-13 22:00:00', '2020-06-14 18:37:44', '2020-06-14 18:37:44', 110),
(12, 13, 32, NULL, 10, 9, 90, 1, '2020-06-13 22:00:00', '2020-06-14 18:56:41', '2020-06-14 18:56:41', 111),
(13, 13, 26, NULL, 10, 10, 100, 1, '2020-06-13 22:00:00', '2020-06-14 18:58:49', '2020-06-14 18:58:49', 112),
(14, 13, 28, NULL, 11, 11, 100, 1, '2020-06-13 22:00:00', '2020-06-14 19:01:07', '2020-06-14 19:01:07', 113),
(15, 13, 38, NULL, 10, 10, 100, 1, '2020-06-13 22:00:00', '2020-06-14 19:03:08', '2020-06-14 19:03:08', 114),
(16, 13, 42, NULL, 10, 10, 100, 1, '2020-06-13 22:00:00', '2020-06-14 19:05:11', '2020-06-14 19:05:11', 115),
(17, 13, 29, NULL, 10, 10, 100, 1, '2020-06-13 22:00:00', '2020-06-14 19:09:05', '2020-06-14 19:09:05', 116),
(18, 13, 22, NULL, 5, 5, 100, 1, '2020-06-13 22:00:00', '2020-06-14 19:12:17', '2020-06-14 19:12:17', 117),
(19, 13, 19, NULL, 10, 10, 100, 1, '2020-06-13 22:00:00', '2020-06-14 19:14:41', '2020-06-14 19:14:41', 118),
(20, 13, 21, NULL, 10, 10, 100, 1, '2020-06-13 22:00:00', '2020-06-14 19:16:41', '2020-06-14 19:16:41', 119),
(21, 13, 39, NULL, 10, 10, 100, 1, '2020-06-13 22:00:00', '2020-06-14 20:00:41', '2020-06-14 20:00:41', 123),
(22, 13, 55, NULL, 20, 17, 85, 1, '2020-06-13 22:00:00', '2020-06-14 20:12:33', '2020-06-14 20:12:33', 126),
(23, 13, 53, NULL, 10, 10, 100, 1, '2020-06-13 22:00:00', '2020-06-14 20:30:36', '2020-06-14 20:30:36', 128),
(24, 13, 49, NULL, 10, 10, 100, 1, '2020-06-13 22:00:00', '2020-06-14 20:33:23', '2020-06-14 20:33:23', 50),
(25, 13, 49, NULL, 10, 10, 100, 1, '2020-06-13 22:00:00', '2020-06-14 20:35:20', '2020-06-14 20:35:20', 129),
(26, 13, 40, NULL, 10, 10, 100, 1, '2020-06-13 22:00:00', '2020-06-14 20:51:51', '2020-06-14 20:51:51', 131),
(27, 13, 51, NULL, 10, 10, 100, 1, '2020-06-13 22:00:00', '2020-06-14 20:56:53', '2020-06-14 20:56:53', 132),
(28, 13, 46, NULL, 10, 10, 100, 1, '2020-06-13 22:00:00', '2020-06-14 21:01:51', '2020-06-14 21:15:03', 133),
(29, 13, 58, NULL, 10, 10, 100, 1, '2020-06-13 22:00:00', '2020-06-14 21:18:00', '2020-06-14 21:18:00', 134),
(30, 13, 32, NULL, 10, 6, 60, 0, '2020-06-14 22:00:00', '2020-06-15 11:34:40', '2020-06-15 11:35:26', 171),
(31, 13, 54, NULL, 10, 10, 100, 1, '2020-06-14 22:00:00', '2020-06-15 11:41:38', '2020-06-15 11:41:38', 172),
(32, 17, 54, NULL, 10, 9, 90, 1, '2020-06-14 22:00:00', '2020-06-15 13:13:14', '2020-06-15 13:13:14', 173),
(33, 11, 54, NULL, 10, 10, 100, 1, '2020-06-14 22:00:00', '2020-06-15 14:14:47', '2020-06-15 14:14:47', 100),
(34, 19, 42, NULL, 10, 10, 100, 1, '2020-06-14 22:00:00', '2020-06-15 19:07:19', '2020-06-15 19:07:19', 179),
(35, 13, 54, NULL, 10, 10, 100, 1, '2020-06-15 22:00:00', '2020-06-16 21:39:30', '2020-06-16 21:39:30', 186),
(36, 26, 52, NULL, 13, 12, 92, 1, '2020-06-18 22:00:00', '2020-06-19 13:38:16', '2020-06-19 13:38:16', 205),
(37, 24, 21, NULL, 10, 9, 90, 1, '2020-06-18 22:00:00', '2020-06-19 20:37:28', '2020-06-19 20:37:28', 191),
(38, 24, 19, NULL, 10, 10, 100, 1, '2020-06-21 22:00:00', '2020-06-22 00:09:50', '2020-06-22 00:09:51', 190),
(39, 24, 25, NULL, 10, 10, 100, 1, '2020-06-21 22:00:00', '2020-06-22 00:13:52', '2020-06-22 00:13:55', 189),
(40, 24, 34, NULL, 10, 9, 90, 1, '2020-06-21 22:00:00', '2020-06-22 00:28:08', '2020-06-22 00:28:18', 188),
(41, 24, 51, NULL, 10, 10, 100, 1, '2020-06-21 22:00:00', '2020-06-22 00:34:36', '2020-06-22 00:34:36', 192),
(42, 24, 46, NULL, 10, 10, 100, 1, '2020-06-21 22:00:00', '2020-06-22 00:52:24', '2020-06-22 00:52:24', 193),
(43, 24, 58, NULL, 10, 9, 90, 1, '2020-06-21 22:00:00', '2020-06-22 01:07:32', '2020-06-22 01:07:37', 194),
(44, 207, 26, NULL, 10, 7, 70, 1, '2020-07-07 22:00:00', '2020-07-07 22:18:25', '2020-07-07 22:18:25', 271),
(45, 214, 26, NULL, 10, 9, 90, 1, '2020-07-07 22:00:00', '2020-07-07 22:43:38', '2020-07-07 22:43:38', 266),
(46, 215, 26, NULL, 10, 8, 80, 1, '2020-07-07 22:00:00', '2020-07-08 01:19:18', '2020-07-08 01:19:18', 267),
(47, 207, 26, NULL, 10, 7, 70, 1, '2020-07-07 22:00:00', '2020-07-08 16:59:22', '2020-07-08 17:00:36', 259),
(48, 218, 26, NULL, 10, 9, 90, 1, '2020-07-08 22:00:00', '2020-07-09 00:10:26', '2020-07-09 00:10:26', 270),
(49, 209, 26, NULL, 10, 9, 90, 1, '2020-07-08 22:00:00', '2020-07-09 00:20:00', '2020-07-09 00:20:00', 261),
(50, 210, 26, NULL, 10, 9, 90, 1, '2020-07-08 22:00:00', '2020-07-09 00:40:48', '2020-07-09 00:40:48', 262),
(51, 230, 26, NULL, 10, 9, 90, 1, '2020-07-08 22:00:00', '2020-07-09 00:42:23', '2020-07-09 00:46:14', 272),
(52, 217, 26, NULL, 10, 9, 90, 1, '2020-07-08 22:00:00', '2020-07-09 10:52:00', '2020-07-09 10:52:00', 269),
(53, 221, 26, NULL, 10, 9, 90, 1, '2020-07-08 22:00:00', '2020-07-09 10:59:09', '2020-07-09 10:59:09', 256),
(54, 235, 26, NULL, 10, 9, 90, 1, '2020-07-08 22:00:00', '2020-07-09 11:10:24', '2020-07-09 11:10:24', 274),
(55, 234, 26, NULL, 10, 9, 90, 1, '2020-07-08 22:00:00', '2020-07-09 11:14:50', '2020-07-09 11:14:50', 273),
(56, 208, 26, NULL, 10, 8, 80, 1, '2020-07-08 22:00:00', '2020-07-09 11:22:15', '2020-07-09 11:22:15', 260),
(57, 211, 26, NULL, 10, 8, 80, 1, '2020-07-08 22:00:00', '2020-07-09 11:27:00', '2020-07-09 11:27:00', 263),
(58, 212, 26, NULL, 10, 10, 100, 1, '2020-07-08 22:00:00', '2020-07-09 11:31:29', '2020-07-09 11:31:29', 264),
(59, 213, 26, NULL, 10, 8, 80, 1, '2020-07-08 22:00:00', '2020-07-09 11:34:09', '2020-07-09 11:34:09', 265),
(60, 216, 26, NULL, 10, 8, 80, 1, '2020-07-08 22:00:00', '2020-07-09 11:42:08', '2020-07-09 11:42:08', 268),
(61, 219, 26, NULL, 10, 9, 90, 1, '2020-07-08 22:00:00', '2020-07-09 11:44:59', '2020-07-09 11:44:59', 254),
(62, 220, 26, NULL, 10, 8, 80, 1, '2020-07-08 22:00:00', '2020-07-09 11:47:36', '2020-07-09 11:47:36', 255),
(63, 222, 26, NULL, 10, 8, 80, 1, '2020-07-08 22:00:00', '2020-07-09 11:50:20', '2020-07-09 11:50:20', 257),
(64, 263, 26, NULL, 10, 9, 90, 1, '2020-07-08 22:00:00', '2020-07-09 11:54:12', '2020-07-09 11:54:12', 276),
(65, 223, 26, NULL, 10, 9, 90, 1, '2020-07-08 22:00:00', '2020-07-09 11:57:11', '2020-07-09 11:57:11', 258),
(66, 274, 26, NULL, 10, 8, 80, 1, '2020-07-08 22:00:00', '2020-07-09 12:08:26', '2020-07-09 12:08:26', 278),
(67, 240, 26, NULL, 10, 8, 80, 1, '2020-07-08 22:00:00', '2020-07-09 12:13:45', '2020-07-09 12:13:45', 279),
(68, 208, 51, NULL, 10, 9, 90, 1, '2020-07-09 22:00:00', '2020-07-09 22:34:19', '2020-07-09 22:34:27', 283),
(69, 218, 51, NULL, 10, 10, 100, 1, '2020-07-09 22:00:00', '2020-07-10 12:46:20', '2020-07-10 12:46:20', 294),
(70, 290, 26, NULL, 10, 9, 90, 1, '2020-07-09 22:00:00', '2020-07-10 13:54:04', '2020-07-10 13:54:04', 304),
(71, 215, 51, NULL, 10, 7, 70, 1, '2020-07-09 22:00:00', '2020-07-10 20:08:40', '2020-07-10 20:08:40', 291),
(72, 210, 51, NULL, 10, 10, 100, 1, '2020-07-10 22:00:00', '2020-07-10 23:13:09', '2020-07-11 00:28:16', 285),
(73, 213, 51, NULL, 10, 10, 100, 1, '2020-07-10 22:00:00', '2020-07-11 00:05:18', '2020-07-11 00:05:18', 289),
(74, 230, 51, NULL, 10, 10, 100, 1, '2020-07-10 22:00:00', '2020-07-11 00:15:55', '2020-07-11 00:15:55', 287),
(75, 209, 51, NULL, 10, 10, 100, 1, '2020-07-10 22:00:00', '2020-07-11 00:31:32', '2020-07-11 00:34:28', 284),
(76, 235, 51, NULL, 10, 9, 90, 1, '2020-07-12 22:00:00', '2020-07-13 13:25:05', '2020-07-13 13:25:05', 280),
(77, 234, 51, NULL, 10, 10, 100, 1, '2020-07-12 22:00:00', '2020-07-13 13:47:21', '2020-07-13 13:49:30', 281),
(78, 207, 51, NULL, 10, 9, 90, 1, '2020-07-12 22:00:00', '2020-07-13 14:18:07', '2020-07-13 14:18:07', 286),
(79, 211, 51, NULL, 10, 10, 100, 1, '2020-07-12 22:00:00', '2020-07-13 14:32:22', '2020-07-13 14:32:22', 309),
(80, 212, 51, NULL, 10, 10, 100, 1, '2020-07-12 22:00:00', '2020-07-13 16:53:08', '2020-07-13 16:53:08', 288),
(81, 214, 51, NULL, 10, 10, 100, 1, '2020-07-12 22:00:00', '2020-07-13 16:57:48', '2020-07-13 16:57:48', 290),
(82, 216, 51, NULL, 10, 9, 90, 1, '2020-07-12 22:00:00', '2020-07-13 17:01:40', '2020-07-13 17:01:43', 292),
(83, 217, 51, NULL, 10, 9, 90, 1, '2020-07-12 22:00:00', '2020-07-13 17:05:08', '2020-07-13 17:05:08', 293),
(84, 219, 51, NULL, 10, 9, 90, 1, '2020-07-12 22:00:00', '2020-07-13 17:09:05', '2020-07-13 17:09:05', 295),
(85, 220, 51, NULL, 10, 9, 90, 1, '2020-07-12 22:00:00', '2020-07-13 17:13:22', '2020-07-13 17:13:22', 296),
(86, 240, 51, NULL, 10, 9, 90, 1, '2020-07-12 22:00:00', '2020-07-13 17:16:34', '2020-07-13 17:16:34', 297),
(87, 221, 51, NULL, 10, 10, 100, 1, '2020-07-12 22:00:00', '2020-07-13 17:19:26', '2020-07-13 17:19:26', 298),
(88, 290, 51, NULL, 10, 9, 90, 1, '2020-07-12 22:00:00', '2020-07-13 17:21:21', '2020-07-13 17:21:21', 303),
(89, 263, 51, NULL, 10, 9, 90, 1, '2020-07-12 22:00:00', '2020-07-13 17:23:07', '2020-07-13 17:23:07', 300),
(90, 318, 51, NULL, 10, 10, 100, 1, '2020-07-12 22:00:00', '2020-07-13 17:29:05', '2020-07-13 17:29:05', 311),
(91, 319, 51, NULL, 10, 9, 90, 1, '2020-07-12 22:00:00', '2020-07-13 17:34:11', '2020-07-13 17:34:11', 313),
(92, 223, 51, NULL, 10, 10, 100, 1, '2020-07-12 22:00:00', '2020-07-13 17:38:00', '2020-07-13 17:38:00', 301),
(93, 274, 51, NULL, 10, 9, 90, 1, '2020-07-12 22:00:00', '2020-07-13 17:41:54', '2020-07-13 17:41:54', 302),
(94, 215, 19, NULL, 10, 9, 90, 1, '2020-07-14 22:00:00', '2020-07-14 22:19:55', '2020-07-14 22:19:55', 325),
(95, 218, 19, NULL, 10, 9, 90, 1, '2020-07-14 22:00:00', '2020-07-14 22:41:45', '2020-07-14 22:41:45', 328),
(96, 210, 19, NULL, 10, 10, 100, 1, '2020-07-14 22:00:00', '2020-07-15 00:23:25', '2020-07-15 00:23:25', 337),
(97, 209, 19, NULL, 10, 9, 90, 1, '2020-07-14 22:00:00', '2020-07-15 00:24:54', '2020-07-15 00:27:03', 319),
(98, 213, 19, NULL, 10, 10, 100, 1, '2020-07-14 22:00:00', '2020-07-15 00:34:59', '2020-07-15 00:34:59', 323),
(99, 230, 19, NULL, 10, 10, 100, 1, '2020-07-14 22:00:00', '2020-07-15 00:59:29', '2020-07-15 00:59:29', 321),
(100, 234, 19, NULL, 10, 8, 80, 1, '2020-07-14 22:00:00', '2020-07-15 13:33:53', '2020-07-15 13:33:53', 316),
(101, 235, 19, NULL, 10, 10, 100, 1, '2020-07-14 22:00:00', '2020-07-15 13:47:08', '2020-07-15 13:47:08', 315),
(102, 207, 19, NULL, 10, 10, 100, 1, '2020-07-14 22:00:00', '2020-07-15 13:49:58', '2020-07-15 13:49:58', 317),
(103, 208, 19, NULL, 10, 9, 90, 1, '2020-07-14 22:00:00', '2020-07-15 13:52:09', '2020-07-15 13:52:09', 318),
(104, 211, 19, NULL, 10, 9, 90, 1, '2020-07-14 22:00:00', '2020-07-15 13:57:12', '2020-07-15 13:57:12', 320),
(105, 212, 19, NULL, 10, 9, 90, 1, '2020-07-14 22:00:00', '2020-07-15 17:44:55', '2020-07-15 17:44:55', 322),
(106, 214, 19, NULL, 10, 10, 100, 1, '2020-07-14 22:00:00', '2020-07-15 17:51:45', '2020-07-15 17:51:45', 324),
(107, 216, 19, NULL, 10, 9, 90, 1, '2020-07-14 22:00:00', '2020-07-15 17:57:18', '2020-07-15 17:57:18', 326),
(108, 217, 19, NULL, 10, 9, 90, 1, '2020-07-14 22:00:00', '2020-07-15 18:00:23', '2020-07-15 18:00:23', 327),
(109, 219, 19, NULL, 10, 8, 80, 1, '2020-07-14 22:00:00', '2020-07-15 18:05:54', '2020-07-15 18:05:54', 329),
(110, 220, 19, NULL, 10, 10, 100, 1, '2020-07-14 22:00:00', '2020-07-15 18:09:08', '2020-07-15 18:09:08', 330),
(111, 240, 19, NULL, 10, 9, 90, 1, '2020-07-14 22:00:00', '2020-07-15 18:12:24', '2020-07-15 18:15:10', 331),
(112, 221, 19, NULL, 10, 9, 90, 1, '2020-07-14 22:00:00', '2020-07-15 18:16:28', '2020-07-15 18:16:28', 332),
(113, 290, 19, NULL, 10, 10, 100, 1, '2020-07-14 22:00:00', '2020-07-15 18:18:00', '2020-07-15 18:18:00', 333),
(114, 263, 19, NULL, 10, 9, 90, 1, '2020-07-14 22:00:00', '2020-07-15 18:23:49', '2020-07-15 18:23:49', 334),
(115, 318, 19, NULL, 10, 8, 80, 1, '2020-07-14 22:00:00', '2020-07-15 18:26:04', '2020-07-15 18:26:04', 341),
(116, 319, 19, NULL, 10, 9, 90, 1, '2020-07-14 22:00:00', '2020-07-15 18:30:58', '2020-07-15 18:31:40', 342),
(117, 223, 19, NULL, 10, 8, 80, 1, '2020-07-14 22:00:00', '2020-07-15 18:33:23', '2020-07-15 18:33:23', 335),
(118, 274, 19, NULL, 10, 10, 100, 1, '2020-07-14 22:00:00', '2020-07-15 18:35:18', '2020-07-15 18:35:18', 336),
(119, 210, 58, NULL, 10, 10, 100, 1, '2020-07-16 22:00:00', '2020-07-17 00:14:04', '2020-07-17 00:14:04', 348),
(120, 218, 58, NULL, 10, 10, 100, 1, '2020-07-16 22:00:00', '2020-07-17 00:30:56', '2020-07-17 00:30:56', 356),
(121, 209, 58, NULL, 10, 9, 90, 1, '2020-07-16 22:00:00', '2020-07-17 00:30:58', '2020-07-17 00:30:58', 347),
(122, 213, 58, NULL, 10, 9, 90, 1, '2020-07-16 22:00:00', '2020-07-17 00:33:58', '2020-07-17 00:33:58', 352),
(123, 230, 58, NULL, 10, 9, 90, 1, '2020-07-16 22:00:00', '2020-07-17 00:51:18', '2020-07-17 00:51:18', 350),
(124, 235, 58, NULL, 10, 10, 100, 1, '2020-07-16 22:00:00', '2020-07-17 02:37:57', '2020-07-17 02:37:57', 343),
(125, 234, 58, NULL, 10, 9, 90, 1, '2020-07-16 22:00:00', '2020-07-17 02:40:02', '2020-07-17 02:40:02', 344),
(126, 207, 58, NULL, 10, 9, 90, 1, '2020-07-16 22:00:00', '2020-07-17 02:43:05', '2020-07-17 02:43:05', 345),
(127, 208, 58, NULL, 10, 8, 80, 1, '2020-07-16 22:00:00', '2020-07-17 02:45:25', '2020-07-17 02:45:25', 346),
(128, 211, 58, NULL, 10, 9, 90, 1, '2020-07-16 22:00:00', '2020-07-17 02:51:00', '2020-07-17 02:51:00', 349),
(129, 212, 58, NULL, 10, 9, 90, 1, '2020-07-16 22:00:00', '2020-07-17 02:58:41', '2020-07-17 02:58:41', 351),
(130, 214, 58, NULL, 10, 9, 90, 1, '2020-07-16 22:00:00', '2020-07-17 03:02:38', '2020-07-17 03:02:38', 353),
(131, 215, 58, NULL, 10, 9, 90, 1, '2020-07-16 22:00:00', '2020-07-17 03:04:24', '2020-07-17 03:04:52', 354),
(132, 216, 58, NULL, 10, 8, 80, 1, '2020-07-16 22:00:00', '2020-07-17 03:06:31', '2020-07-17 03:06:31', 355),
(133, 217, 58, NULL, 10, 9, 90, 1, '2020-07-16 22:00:00', '2020-07-17 03:09:56', '2020-07-17 03:09:56', 382),
(134, 219, 58, NULL, 10, 9, 90, 1, '2020-07-16 22:00:00', '2020-07-17 03:13:28', '2020-07-17 03:13:28', 357),
(135, 220, 58, NULL, 10, 9, 90, 1, '2020-07-16 22:00:00', '2020-07-17 03:15:11', '2020-07-17 03:15:11', 358),
(136, 240, 58, NULL, 10, 8, 80, 1, '2020-07-16 22:00:00', '2020-07-17 03:18:14', '2020-07-17 03:18:14', 359),
(137, 221, 58, NULL, 10, 9, 90, 1, '2020-07-16 22:00:00', '2020-07-17 03:19:51', '2020-07-17 03:19:51', 360),
(138, 290, 58, NULL, 10, 9, 90, 1, '2020-07-16 22:00:00', '2020-07-17 03:21:33', '2020-07-17 03:21:33', 361),
(139, 263, 58, NULL, 10, 8, 80, 1, '2020-07-16 22:00:00', '2020-07-17 03:23:26', '2020-07-17 03:23:26', 362),
(140, 318, 58, NULL, 10, 9, 90, 1, '2020-07-16 22:00:00', '2020-07-17 03:25:22', '2020-07-17 03:25:22', 363),
(141, 319, 58, NULL, 10, 9, 90, 1, '2020-07-16 22:00:00', '2020-07-17 03:27:02', '2020-07-17 03:27:02', 364),
(142, 223, 58, NULL, 10, 8, 80, 1, '2020-07-16 22:00:00', '2020-07-17 03:28:43', '2020-07-17 03:28:43', 365),
(143, 274, 58, NULL, 10, 10, 100, 1, '2020-07-16 22:00:00', '2020-07-17 03:30:18', '2020-07-17 03:30:18', 366),
(144, 218, 55, NULL, 10, 10, 100, 1, '2020-07-20 22:00:00', '2020-07-20 23:45:26', '2020-07-20 23:45:26', 384),
(145, 209, 55, NULL, 10, 8, 80, 1, '2020-07-20 22:00:00', '2020-07-21 00:27:48', '2020-07-21 00:27:48', 372),
(146, 213, 55, NULL, 10, 9, 90, 1, '2020-07-20 22:00:00', '2020-07-21 00:45:35', '2020-07-21 00:45:35', 377),
(147, 210, 55, NULL, 10, 10, 100, 1, '2020-07-20 22:00:00', '2020-07-21 00:47:00', '2020-07-21 00:47:00', 373),
(148, 235, 55, NULL, 10, 10, 100, 1, '2020-07-20 22:00:00', '2020-07-21 09:11:37', '2020-07-21 09:11:37', 368),
(149, 234, 55, NULL, 10, 10, 100, 1, '2020-07-20 22:00:00', '2020-07-21 09:23:03', '2020-07-21 09:23:03', 369),
(150, 207, 55, NULL, 10, 10, 100, 1, '2020-07-20 22:00:00', '2020-07-21 09:27:25', '2020-07-21 09:27:25', 370),
(151, 208, 55, NULL, 10, 9, 90, 1, '2020-07-20 22:00:00', '2020-07-21 09:31:27', '2020-07-21 09:31:27', 371),
(152, 211, 55, NULL, 10, 8, 80, 1, '2020-07-20 22:00:00', '2020-07-21 09:42:09', '2020-07-21 09:42:09', 374),
(153, 230, 55, NULL, 10, 10, 100, 1, '2020-07-20 22:00:00', '2020-07-21 09:46:27', '2020-07-21 09:46:27', 375),
(154, 212, 55, NULL, 10, 9, 90, 1, '2020-07-20 22:00:00', '2020-07-21 09:50:56', '2020-07-21 09:50:56', 376),
(155, 214, 55, NULL, 10, 9, 90, 1, '2020-07-20 22:00:00', '2020-07-21 09:57:04', '2020-07-21 09:57:04', 378),
(156, 215, 55, NULL, 10, 10, 100, 1, '2020-07-20 22:00:00', '2020-07-21 10:01:40', '2020-07-21 10:01:40', 379),
(157, 216, 55, NULL, 10, 9, 90, 1, '2020-07-20 22:00:00', '2020-07-21 10:08:08', '2020-07-21 10:08:08', 380),
(158, 217, 55, NULL, 10, 9, 90, 1, '2020-07-20 22:00:00', '2020-07-21 10:12:31', '2020-07-21 10:12:31', 381),
(159, 219, 55, NULL, 10, 10, 100, 1, '2020-07-20 22:00:00', '2020-07-21 10:20:08', '2020-07-21 10:20:08', 385),
(160, 220, 55, NULL, 10, 9, 90, 1, '2020-07-20 22:00:00', '2020-07-21 10:23:16', '2020-07-21 10:23:16', 386),
(161, 240, 55, NULL, 10, 10, 100, 1, '2020-07-20 22:00:00', '2020-07-21 10:28:36', '2020-07-21 10:28:36', 387),
(162, 263, 55, NULL, 10, 10, 100, 1, '2020-07-20 22:00:00', '2020-07-21 10:47:12', '2020-07-21 10:47:12', 390),
(163, 318, 55, NULL, 10, 9, 90, 1, '2020-07-20 22:00:00', '2020-07-21 10:56:03', '2020-07-21 10:56:03', 391),
(164, 319, 55, NULL, 10, 10, 100, 1, '2020-07-20 22:00:00', '2020-07-21 11:00:08', '2020-07-21 11:00:08', 392),
(165, 274, 55, NULL, 10, 9, 90, 1, '2020-07-20 22:00:00', '2020-07-21 11:05:36', '2020-07-21 11:05:36', 394),
(166, 223, 55, NULL, 10, 9, 90, 1, '2020-07-20 22:00:00', '2020-07-21 11:09:10', '2020-07-21 11:09:10', 393),
(167, 221, 55, NULL, 10, 10, 100, 1, '2020-07-20 22:00:00', '2020-07-21 12:10:03', '2020-07-21 12:10:03', 388),
(168, 290, 55, NULL, 10, 9, 90, 1, '2020-07-20 22:00:00', '2020-07-21 12:28:48', '2020-07-21 12:28:48', 389),
(169, 1172, 44, NULL, 17, 17, 100, 1, '2020-09-10 22:00:00', '2020-09-11 01:40:15', '2020-09-11 01:40:15', 398),
(170, 1174, 44, NULL, 17, 17, 100, 1, '2020-09-10 22:00:00', '2020-09-11 01:46:55', '2020-09-11 01:46:55', 399),
(171, 1175, 44, NULL, 17, 17, 100, 1, '2020-09-10 22:00:00', '2020-09-11 01:50:32', '2020-09-11 01:50:32', 400),
(172, 1176, 44, NULL, 17, 17, 100, 1, '2020-09-10 22:00:00', '2020-09-11 01:53:54', '2020-09-11 01:53:54', 401),
(173, 1177, 44, NULL, 17, 17, 100, 1, '2020-09-10 22:00:00', '2020-09-11 01:57:26', '2020-09-11 01:57:26', 402),
(174, 1178, 44, NULL, 17, 17, 100, 1, '2020-09-10 22:00:00', '2020-09-11 02:03:09', '2020-09-11 02:03:09', 403),
(175, 1200, 44, NULL, 17, 17, 100, 1, '2020-09-11 22:00:00', '2020-09-12 02:32:10', '2020-09-12 02:32:10', 405),
(176, 1201, 44, NULL, 17, 17, 100, 1, '2020-09-11 22:00:00', '2020-09-12 02:37:15', '2020-09-12 02:39:04', 406),
(177, 1202, 44, NULL, 17, 17, 100, 1, '2020-09-11 22:00:00', '2020-09-12 02:48:42', '2020-09-12 02:48:42', 407),
(178, 1203, 44, NULL, 17, 17, 100, 1, '2020-09-11 22:00:00', '2020-09-12 03:00:51', '2020-09-12 03:00:51', 408),
(179, 1204, 44, NULL, 17, 17, 100, 1, '2020-09-11 22:00:00', '2020-09-12 03:05:28', '2020-09-12 03:05:28', 409),
(180, 1205, 44, NULL, 17, 17, 100, 1, '2020-09-11 22:00:00', '2020-09-12 03:11:07', '2020-09-12 03:11:07', 410),
(181, 1207, 44, NULL, 17, 17, 100, 1, '2020-09-11 22:00:00', '2020-09-12 03:16:41', '2020-09-12 03:16:41', 412),
(182, 1223, 44, NULL, 17, 17, 100, 1, '2020-09-13 22:00:00', '2020-09-14 13:35:20', '2020-09-14 13:35:20', 413),
(183, 1228, 44, NULL, 17, 17, 100, 1, '2020-09-13 22:00:00', '2020-09-14 15:03:52', '2020-09-14 15:03:52', 417),
(184, 1229, 44, NULL, 17, 17, 100, 1, '2020-09-13 22:00:00', '2020-09-14 15:12:23', '2020-09-14 15:12:23', 418),
(185, 1230, 44, NULL, 17, 17, 100, 1, '2020-09-13 22:00:00', '2020-09-14 15:28:09', '2020-09-14 15:28:09', 419),
(186, 1231, 44, NULL, 17, 17, 100, 1, '2020-09-13 22:00:00', '2020-09-14 15:33:22', '2020-09-14 15:33:22', 420),
(187, 1232, 44, NULL, 17, 17, 100, 1, '2020-09-13 22:00:00', '2020-09-14 15:37:37', '2020-09-14 15:37:37', 421),
(188, 1233, 44, NULL, 17, 17, 100, 1, '2020-09-13 22:00:00', '2020-09-14 15:43:13', '2020-09-14 15:43:13', 422),
(189, 1235, 44, NULL, 17, 17, 100, 1, '2020-09-13 22:00:00', '2020-09-14 15:47:54', '2020-09-14 15:47:54', 423),
(190, 1236, 44, NULL, 17, 17, 100, 1, '2020-09-13 22:00:00', '2020-09-14 15:56:46', '2020-09-14 15:56:46', 424),
(191, 1237, 44, NULL, 17, 17, 100, 1, '2020-09-13 22:00:00', '2020-09-14 16:00:01', '2020-09-14 16:00:01', 425),
(192, 1238, 44, NULL, 17, 17, 100, 1, '2020-09-13 22:00:00', '2020-09-14 16:14:21', '2020-09-14 16:14:21', 426),
(193, 1239, 44, NULL, 17, 17, 100, 1, '2020-09-13 22:00:00', '2020-09-14 16:18:22', '2020-09-14 16:18:22', 427),
(194, 1227, 3, NULL, 20, 19, 95, 1, '2020-11-18 23:00:00', '2020-11-19 12:15:22', '2020-11-19 12:15:22', 415),
(195, 1227, 4, NULL, 20, 19, 95, 1, '2020-11-18 23:00:00', '2020-11-19 12:22:38', '2020-11-19 12:22:38', 415),
(196, 1227, 5, NULL, 19, 18, 95, 1, '2020-11-18 23:00:00', '2020-11-19 12:26:15', '2020-11-19 12:26:15', 415),
(197, 1227, 6, NULL, 20, 20, 100, 1, '2020-11-18 23:00:00', '2020-11-19 12:29:48', '2020-11-19 12:29:48', 415),
(198, 11, 3, NULL, 20, 17, 85, 1, '2020-11-18 23:00:00', '2020-11-19 13:35:57', '2020-11-19 13:35:57', 430),
(199, 11, 4, NULL, 20, 19, 95, 1, '2020-11-18 23:00:00', '2020-11-19 13:37:08', '2020-11-19 13:37:08', 430),
(200, 11, 5, NULL, 19, 16, 84, 1, '2020-11-18 23:00:00', '2020-11-19 13:39:15', '2020-11-19 13:39:15', 430),
(201, 11, 6, NULL, 20, 17, 85, 1, '2020-11-18 23:00:00', '2020-11-19 13:41:34', '2020-11-19 13:41:34', 430),
(202, 2158, 44, NULL, 17, 17, 100, 1, '2020-12-14 23:00:00', '2020-12-15 13:02:53', '2020-12-15 13:02:53', 431),
(203, 2159, 44, NULL, 17, 16, 94, 1, '2020-12-14 23:00:00', '2020-12-15 13:13:15', '2020-12-15 13:13:15', 432),
(204, 2160, 44, NULL, 17, 16, 94, 1, '2020-12-14 23:00:00', '2020-12-15 13:27:23', '2020-12-15 13:27:23', 433),
(205, 2161, 44, NULL, 17, 17, 100, 1, '2020-12-14 23:00:00', '2020-12-15 13:33:10', '2020-12-15 13:33:10', 434),
(206, 2162, 44, NULL, 17, 17, 100, 1, '2020-12-14 23:00:00', '2020-12-15 13:36:56', '2020-12-15 13:36:56', 435),
(207, 2163, 44, NULL, 17, 17, 100, 1, '2020-12-14 23:00:00', '2020-12-15 13:39:49', '2020-12-15 13:39:49', 436),
(208, 2164, 44, NULL, 17, 17, 100, 1, '2020-12-14 23:00:00', '2020-12-15 13:42:33', '2020-12-15 13:42:33', 437),
(209, 2165, 44, NULL, 17, 17, 100, 1, '2020-12-14 23:00:00', '2020-12-15 13:45:59', '2020-12-15 13:45:59', 438),
(210, 2207, 15, NULL, 20, 20, 100, 1, '2021-01-17 23:00:00', '2021-01-18 14:04:26', '2021-01-18 14:04:26', 440),
(211, 2207, 16, NULL, 20, 20, 100, 1, '2021-01-17 23:00:00', '2021-01-18 14:07:36', '2021-01-18 14:07:36', 440),
(212, 2207, 17, NULL, 20, 18, 90, 1, '2021-01-17 23:00:00', '2021-01-18 14:11:07', '2021-01-18 14:11:07', 440),
(213, 2207, 18, NULL, 20, 20, 100, 1, '2021-01-17 23:00:00', '2021-01-18 14:16:39', '2021-01-18 14:16:39', 440),
(214, 2214, 15, NULL, 21, 21, 100, 1, '2021-01-21 23:00:00', '2021-01-22 14:46:00', '2021-01-22 14:46:00', 441),
(215, 2214, 16, NULL, 21, 21, 100, 1, '2021-01-21 23:00:00', '2021-01-22 15:03:57', '2021-01-22 15:03:57', 441),
(216, 2214, 17, NULL, 20, 20, 100, 1, '2021-01-21 23:00:00', '2021-01-22 15:23:23', '2021-01-22 15:32:37', 441),
(217, 2214, 18, NULL, 20, 20, 100, 1, '2021-01-21 23:00:00', '2021-01-22 15:35:48', '2021-01-22 15:35:48', 441),
(218, 2214, 44, NULL, 17, 17, 100, 1, '2021-01-21 23:00:00', '2021-01-22 19:08:24', '2021-01-22 19:08:24', 442);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `bio` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'profile.png',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `apellido` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `documento` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefonos` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lugar_expe` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `empresa` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `instructor` int(11) NOT NULL DEFAULT 0,
  `titulo` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_tutor` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `type`, `bio`, `photo`, `remember_token`, `created_at`, `updated_at`, `apellido`, `tipo_id`, `documento`, `telefonos`, `lugar_expe`, `empresa`, `estado`, `instructor`, `titulo`, `info_tutor`) VALUES
(1, 'Cristhiam Camilo Monsalve p.', 'ccmonpan@hotmail.com', '$2y$10$sDApmbFHedx/JrsjEPvRA.hd6a8JT8sX1wbGWUXDuEVP26W47GFLu', 'admin', 'Desarrollador web', '1590919100.jpeg', 'NYFovSYQhaqPtSgZwSfkZ27ljnK8k5LsjnjnxLm4X5bxZBMrWdqkG0kt8vhy', '2020-05-14 08:07:46', '2020-06-15 19:37:16', '', 'Cédula de Ciudadanía', '1123201184', NULL, 'Puerto Asís', NULL, 1, 0, '', ''),
(2, 'adsfad', 'prueba@correo.com', '$2y$10$c29xTAYnf71jBfD/LKV1mO7qHGNEeGFezeBvy3.UMzVM7GlaFXbzu', 'user', NULL, 'profile.png', 'LVfedjjdMmHwRHJJr6ddehKAOBUyZOVbZvpugbN4HPvvaWhYhMYNVxwWIRhb', '2020-05-20 09:40:00', '2020-05-20 09:40:00', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '', ''),
(3, 'adfadsf', 'prueba2@correo.com', '$2y$10$LlX.MlODPdxiRbDURs1Hted42fmGeVfAzbwnRHRjUsHK7yhkWaI9O', 'user', NULL, 'profile.png', '75MofoYWLIUmklHWOr4CgfzW9jpTvMIbRRQZjAyfOCEuFSMtNwDOXrUHz2zs', '2020-05-20 09:46:20', '2020-05-20 09:46:20', 'asdfasdf', NULL, NULL, NULL, NULL, NULL, 1, 0, '', ''),
(4, 'jhkh', 'prueba6@correo.com', '$2y$10$CMjEpdpPMXVH4PvRRANG0uJUm9bPpkis73k2mOOSkQQH7Rlbfstk6', 'user', NULL, 'profile.png', NULL, '2020-05-20 12:32:08', '2020-05-20 12:32:08', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL),
(6, 'Yesica Murcia', 'yekamur@gmail.com', '$2y$10$gy9bvBWWONrG9u9aNQMpoOSUQ4lOD/MqHwszEkycGSHgsGokBRSKu', 'author', 'Profesional en Contabilidad', 'person_2.jpg', NULL, '2020-05-29 11:10:16', '2020-05-29 11:25:33', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 'Contadora', 'Profesional con muchos años de experiencia en el sector'),
(10, 'Rodolfo Silva', 'rodsilva56@hotmail.com', '$2y$10$VnxDSA33WnU62.XvWN3OSekf6CuOLJTAhKN/v/7rTI7d.cYyzB9WC', 'admin', NULL, 'profile.png', '32IuUHnVRO8C4WxkJKqucT2kdG1Mt8RtyJVnRZzaOq6sEJMBa72DApG5X6gs', '2020-06-01 22:08:13', '2020-06-01 22:08:13', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL),
(12, 'Camilo Monsalve', 'ccmonpantoja@hotmail.com', '$2y$10$NNW5jiWYdOLTmlA2idDZEeZg1reakrwVmJlyqCRK6fIpgzlMEhzYW', 'user', NULL, 'profile.png', NULL, '2020-06-10 17:14:03', '2020-06-10 17:14:03', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL),
(16, 'Test', 'test@correo.com', '$2y$10$YtD71CzT9GmySdQsPc6spePqNzV5HxS4/DFNMnR8OCpmZavBiEHwi', 'user', '', '', 'e7L2YFeTkUylTtzMytxphCaYCCos1Se9XsIzyLSiVO7RMH5yQYIVBTfVcnSY', '2020-06-12 04:48:11', '2020-06-12 04:48:11', '', 'Cédula de Ciudadanía', '123131321', '231332132', 'PUERTO ASíS', NULL, 1, 0, NULL, NULL),
(18, 'Huber Silva Rojas', 'hubersilvarojas@gmail.com', '$2y$10$jaFXXvMgYLCgO28rZKMaI.DM3sbXxlEL/4iqz1bfbidsCP.gR6Zly', 'user', '', '', 'p1oZjTR9wpBuBQL9AtsLzpPkDszdB0uEXzt4L6AElfJtwahJomkDUWu1Q3Jf', '2020-06-15 18:57:08', '2020-06-15 18:57:08', '', 'Cédula de Ciudadanía', '18109052', '3103638025', 'PUERTO ASíS', NULL, 1, 0, NULL, NULL),
(19, 'Cristina Martinez Delgado', 'criss0915@gmail.com', '$2y$10$lQMtoQDwHsxOGAjhza3neOt.6HCIY2RiqzuMC7JvVA4TtTeyT/jNG', 'user', NULL, NULL, 'DgnwXuVBzgfGzRRWMLdIXGkpUZ3bu9qmeWWy1PNfjrviB3ghyd7XGIWniYON', '2020-06-15 18:58:43', '2020-06-17 23:30:39', '', 'Cédula de Ciudadanía', '30733280', '3125333573', 'PASTO', NULL, 1, 0, NULL, NULL),
(20, 'DOMENICK MONSALVE', 'dom@hotmail.com', '$2y$10$ZMi5ZFmPuyufRW.6WlpoAOqWkSkFkt8vCkQUkvf7wnH1Y6BKOc64S', 'user', '', '', 'aLz6g5SLhjsz5LPX4okRQUClHhwDuy6bLy0uUAvTd0O9O92HkZhS7Aau3VMr', '2020-06-15 19:40:55', '2020-06-15 19:40:55', '', 'Tarjeta de Identidad', '123123123', '2132132132', 'PASTO, NARIñO', NULL, 1, 0, NULL, NULL),
(21, 'Alumno de Pruebas', 'test@test.com', '$2y$10$g6PSdr66cxlpn9c3WKfTUOuZkFY7NxJEXVhVzYJGb.fNun0uEQFD2', 'user', NULL, NULL, 'RmzjpYzSgNgm8kLSDtlMi0AjaHUEBGyjs3ZOWCcoUS5hdlHuZf7ciDSmGIjQ', '2020-06-15 19:44:15', '2020-06-15 19:53:37', '', 'Cédula de Ciudadanía', '132131321', '78900809890', 'TESTE', NULL, 1, 0, NULL, NULL),
(22, 'Dalila Vanessa Benavides Erazo', 'dalilab86@hotmail.com', '$2y$10$Jj1S70.zEXma6187RR3cPO3rpXeCl.CHP/Mqw8KBJ3Qgi22UhXQW6', 'user', '', 'profile.png', NULL, '2020-06-15 23:23:04', '2020-06-15 23:23:04', '', 'Cédula de Ciudadanía', '1110443060', '3212491798', 'IBAGUé', NULL, 1, 0, NULL, NULL),
(23, 'ALEJANDRA FLOREZ MEJIA', 'alflor1217@gmail.com', '$2y$10$JuZkJftPNvLKFaZMISb6quYo/3I6fLjBxF04oIMZOcN.2jQ4GyQoG', 'user', '', 'profile.png', 'nzLzOJPPlBcp8xtb91RdVWPsBpTFEWbirAV0B0x2ju7ic0iDUnqxwJ2Zt4ur', '2020-06-16 20:13:08', '2020-06-16 20:13:08', '', 'Cédula de Ciudadanía', '1054987119', '3218907825', 'CHINCHINA CALDAS', NULL, 1, 0, NULL, NULL),
(24, 'Henry Orlando Baron Angarita', 'horba47@hotmail.com', '$2y$10$QY37mH7QsY6fWmfAl1E1keqe.VXJeKI2aTDPIVuyVi/WzSey3BhBy', 'user', '', 'profile.png', 'QiAuLah6PN7lAd0YxjgjBzb1oho70qV0LrRXfV518rUYz2SkjuwNlOB8EZi2', '2020-06-16 22:47:08', '2020-06-16 22:47:08', '', 'Cédula de Ciudadanía', '19.440.468', '311 488 4380', 'BOGOTA D.C', NULL, 1, 0, NULL, NULL),
(25, 'oscar rubiano palacios', 'oscareduardorp2020@gmi.com', '$2y$10$2JdcuuALk2XLXiqO0auFsuxr2y/JxBULzhKMt4xt81aFgsnmZFNhO', 'user', '', 'profile.png', '39Rvl9FBIqLBcDphcyUaqeq6zJfC1hDdjyCxfKHlCBHNGXuzBJBM8kF4fpTi', '2020-06-19 12:44:51', '2020-06-19 12:44:51', '', 'Cédula de Extranjería', '15205282', '3143994990', 'VENEZUELA', NULL, 1, 0, NULL, NULL),
(26, 'Sisleny Gamboa', 'sisgam841027@gmail.com', '$2y$10$3ayz8PU/7WLeGKH1wWib4ebtsYXifnxqTPiGpaEh5Av7knXQghdmG', 'admin', NULL, 'profile.png', NULL, '2020-06-19 13:28:56', '2020-06-23 15:14:38', '', 'Cédula de Ciudadanía', '69022798', '3183813129', 'PUERTO ASíS', NULL, 1, 0, NULL, NULL),
(27, 'MELIZAZBETH RIVERA DAZA', 'melizabethrd@gmail.com', '$2y$10$Dcfk6rtiebX1ETcKaM8t0etzdzFzPW9WqjmBeLCl/f8YT8owjoEsa', 'user', '', 'profile.png', NULL, '2020-06-19 13:29:22', '2020-06-19 13:29:22', '', 'Cédula de Ciudadanía', '1061726168', '3148365909', 'POPAYÁN CAUCA', NULL, 1, 0, NULL, NULL),
(28, 'jhon alexander campos cubides', 'jhonalexandercamposcubides@gmail.com', '$2y$10$Q11pt9/lsj4P457ypE9ytur5BOVo5t4DUNMM2HQd2U5KST5H7GgBO', 'user', '', 'profile.png', NULL, '2020-06-19 19:50:46', '2020-06-19 19:50:46', '', 'Cédula de Ciudadanía', '1075263917', '3104815832', 'NEIVA', NULL, 1, 0, NULL, NULL),
(29, 'oscar rubiano palacios', 'oscareduardorp2020@gmail.com', '$2y$10$V8cQnt53aVh8s1nB8xBFKumcjVGknGcNa6nN1BRAb8bdyoBe9.yke', 'user', '', 'profile.png', NULL, '2020-06-20 17:32:17', '2020-06-20 17:32:17', '', 'Cédula de Ciudadanía', '15205282', '3143994990', 'VENEZUELA', NULL, 1, 0, NULL, NULL),
(30, 'Gerson Lizardo Zambrano Trujillo', 'biotravelingzb@gmail.com', '$2y$10$.OGS7mTcI2ci.ivxdjRXbuW9ILz4vu6z6ITnDHrNkNKglqheWvJIe', 'user', '', 'profile.png', NULL, '2020-06-22 12:53:25', '2020-06-22 12:53:25', '', 'Cédula de Ciudadanía', '1110543078', '3125316582', 'IBAGUE-TOLIMA', NULL, 1, 0, NULL, NULL),
(31, 'Óscar David Gómez Lasso', 'oscardavidg1996@gmail.com', '$2y$10$4G.vvk.f3qkD9QYjFzwWR.ZgzdPxVkwGOb3jbC0PaizkY7I0j9GX6', 'user', '', 'profile.png', NULL, '2020-06-22 12:58:47', '2020-06-22 12:58:47', '', 'Cédula de Ciudadanía', '1123331855', '3133740037', 'ORITO PUTUMAYO', NULL, 1, 0, NULL, NULL),
(50, 'Carlos Armando Rebolledo Ortega', 'carlos_rebolledo13@hotmail.es', '$2y$10$730qWby0Qc51nR714XitJeJFaFm5CZL7ZhTeNxRssBKnuiWHXqVXG', 'user', '', 'profile.png', NULL, '2020-06-23 18:54:16', '2020-06-23 18:54:16', '', 'Cédula de Ciudadanía', '1143836318', '3175020854', 'CALI', NULL, 1, 0, NULL, NULL),
(98, 'Oskar Gomez', 'oskarnahum@hotmail.com', '$2y$10$5bkxhvdVtxXQhPrKu7ctCugpbjWSWk7QUhi6DPjpb3yGZrauovXi2', 'user', '', 'profile.png', NULL, '2020-06-26 23:21:55', '2020-06-26 23:21:55', '', 'Cédula de Ciudadanía', '4759528', '3165351941', 'VILLA RICA CAUCA', NULL, 1, 0, NULL, NULL),
(207, 'Argemiro Castellano Molina', 'castellano4176@gmail.com', '$2y$10$txRZlBt6o5JnuSu9MucYSupgOSYN7EzIIHosNyG4zZep/9F3fWBOy', 'user', NULL, 'profile.png', 'jcgGSZ1SxARM0Aa0kaRnxdefZtpc4MpmoYN7oiTjNyZmYBiZ4eH30ifXnZEV', '2020-07-06 20:55:24', '2020-07-07 18:30:51', '', 'Cédula de Ciudadanía', '6801841', '3212664534', 'FLORENCIA CAQUETA', NULL, 1, 0, NULL, NULL),
(208, 'Bayron Wilson Lara Cortes', 'bayron99lara@gmail.com', '$2y$10$KM2Nzj2qSBU2Ms44z3Su2OFyvkR2z51BX3RQh7t/bq/QS4XY6sOvS', 'user', '', 'profile.png', 'Gbpf6aMYMH2Jq6Rgxk5V84xKgU0GS62XZqQgtyRoPOtOdPzpkisU7uLh37wf', '2020-07-06 20:58:24', '2020-07-06 20:58:24', '', 'Cédula de Ciudadanía', '1123305311', '3219918698', 'PUERTO ASíS', NULL, 1, 0, NULL, NULL),
(209, 'Tatiana Andrea Laverde', 'laverdet52@gmail.com', '$2y$10$/zdwZoSuFM9.FYaJesPSyuSNOCv5vJ8IoNcZ1xzGc.bjBQnXqLG.6', 'user', '', 'profile.png', 'P2nBPEIydYxAe5hKYnTi8LoBdojXTyyCrZMtoNRCegdJDd6ydq5YSk395ZrE', '2020-07-06 21:01:18', '2020-07-06 21:01:18', '', 'Cédula de Ciudadanía', '1123304402', '3106790921', 'PUERTO ASíS', NULL, 1, 0, NULL, NULL),
(210, 'Luis Carlos Camaño Mahecha', 'luiscarlos2509@hotmail.com', '$2y$10$3Tr6TR4WSbvO0nxg6HS2t.bg1u5g8ZANJTRhD9orEy3ByREVZYS8a', 'user', '', 'profile.png', 'aVmB3jnLULYETMBKUUMjd5A20JlFtDPit40kwBFNBzJN9Lzu9Jn4U025BXoq', '2020-07-06 21:04:40', '2020-07-06 21:04:40', '', 'Cédula de Ciudadanía', '7255467', '3164950776', 'PUERTO BOYACá', NULL, 1, 0, NULL, NULL),
(211, 'Jaime Anibal Pazos Acosta', 'jaimepazos751@gmail.com', '$2y$10$6U9xfKHCAZd3YT.W.0szVO4WwB/2cQksyeQ.WBYn2uggWNh2w4H8G', 'user', '', 'profile.png', 'AVq9UFTfQu2az8314v2gu2tN9tIKlzpCvNUDfeCKWaLOPEJZr5aUYqupzXTK', '2020-07-06 21:07:10', '2020-07-06 21:07:10', '', 'Cédula de Ciudadanía', '98397785', '3113295966', 'PASTO NARIñO', NULL, 1, 0, NULL, NULL),
(212, 'Norvey Antonio Gomez Jaramillo', 'norveygomez3@gmail.com', '$2y$10$Ota8Opj7sbn15BZ74KwnxO9Oed3.Irz2T1dbBy9S50ZtDTZuCMT6W', 'user', '', 'profile.png', 'KC3KqYpQIbVMEJyDoCQm1Ixx8g5IfdTnGkrCsfrIYCBRrj4UUAb5NKOFZSRc', '2020-07-06 21:12:37', '2020-07-06 21:12:37', '', 'Cédula de Ciudadanía', '18188067', '3208545693', 'PUERTO ASíS', NULL, 1, 0, NULL, NULL),
(213, 'Jean Guillermo Medina Kutdo', 'kumegol@gmail.com', '$2y$10$p2KPeH3p5c1ONfPoRBu0rOBUEqPvg7O79jSmXjauGd6MWM.Z/kLTW', 'user', '', 'profile.png', 'QvaMbrxbBgvCKFqaO96z6qvmrx7vmrqZq0U2dTgXyNxfFbMc1uPhIFfYYRks', '2020-07-06 21:16:04', '2020-07-06 21:16:04', '', 'Cédula de Ciudadanía', '1123203592', '3125701053', 'PUERTO ASíS', NULL, 1, 0, NULL, NULL),
(214, 'Leydi Maritza Contreras Florez', 'maritzacontreras720@gmail.com', '$2y$10$DBmh26bimhcrMmW6zDhcy.YdsoOfvBwcXi7hgzWXPNug.EyjTCmEO', 'user', '', 'profile.png', '22sGdtm7Qu0WZBUNh8VXs4mUM4BjrkuKIsw4JsnpGBEVzXT2wso2fMsXJZrR', '2020-07-06 21:18:42', '2020-07-06 21:18:42', '', 'Cédula de Ciudadanía', '69023506', '3107720582', 'PUERTO ASíS', NULL, 1, 0, NULL, NULL),
(215, 'Jorge Ordoñez', 'jorge14-03@hotmail.com', '$2y$10$2jCG1VwqRzOxkNcjjt3CjOp9Ez1mAqoFvkrxyNEXNEeQsGcos87EO', 'user', '', 'profile.png', 'vQ9b8hULvKOTEJEKMgww4rxTMUvFyJj1lrfBd41buqpsxhrDrktOQ4LGzcn0', '2020-07-06 21:21:47', '2020-07-06 21:21:47', '', 'Cédula de Ciudadanía', '97435293', '3222166595', 'PUERTO ASíS', NULL, 1, 0, NULL, NULL),
(216, 'Wilmer Quiñonez Rosero', 'quinonesroserowilmer@gmail.com', '$2y$10$XOn0yRe.xunjZ8SlvZk0H.p/Yhtcuvt0z18F3.OSX886bUw7u3UIq', 'user', '', 'profile.png', '1V9C3VNMWfbWafmzyDJTM9iamSTlUGALzEKNDdi661y86eVx5f7V0RI9AlGn', '2020-07-06 21:25:46', '2020-07-06 21:25:46', '', 'Cédula de Ciudadanía', '1125408557', '3102243830', 'PUERTO CAICEDO', NULL, 1, 0, NULL, NULL),
(217, 'Eider Rodriguez', 'yelarodriguez1989@gmail.com', '$2y$10$lNZT2wTKoIR.QHDalTcHNeJnd7Ibb9nHielGu6qtILpwgLzdAlUE.', 'user', '', 'profile.png', 'mRYbzoKh34HEmj0Pej06vxf38UVFx2wwp4MI3k1DAFzvdUIOHVieCFDRtTBy', '2020-07-06 21:30:54', '2020-07-06 21:30:54', '', 'Cédula de Ciudadanía', '1088732959', '3212973845', 'SAMANIEGO NARIñO', NULL, 1, 0, NULL, NULL),
(218, 'Juan Carlos Cadena Zuñiga', 'carloscadena9705@gmail.com', '$2y$10$mq6TEiJcc6VdsHjGfH6RfevwbbI4uzd7WGnFvRr5WGZU5J8u6EYdG', 'user', NULL, 'profile.png', 'V6YHvAJ1RFnYKSH97O2ggDcReodOxE4yXr3KqzjiUvHrda4YIGlbEUKBE7ay', '2020-07-06 21:33:02', '2020-07-13 17:07:38', '', 'Cédula de Ciudadanía', '18185820', '3102813225', 'PUERTO ASíS', NULL, 1, 0, NULL, NULL),
(219, 'Luz Nelly Aguinda  Lanza', 'luzney14176@gmail.com', '$2y$10$bEp3oUQVpBpuohP2.TqTNelF4/lYAVQd8FzO9O8jshDIM3h4f9ZBu', 'user', NULL, 'profile.png', '4urTRIFQ9AnweeIeyfMCFx1S6u4awi3SgAwk480syT56jMoobrabELZmuFpT', '2020-07-06 21:36:06', '2020-07-13 17:09:45', '', 'Cédula de Ciudadanía', '69020460', '3214757491', 'PUERTO ASíS', NULL, 1, 0, NULL, NULL),
(220, 'Wilfra Lilialdo Romo Coral', 'yiselabarco98@gmail.com', '$2y$10$poPwHhns2cAarMKf3tPqwu8fM.59j0UILvyK8qsuUxSg94vr3Vt2q', 'user', NULL, 'profile.png', 'P00Md6h7nw8HjAXEGRhcUay4QnfCVXRCWJE60Rt90f0xiDcwYu760wYsK8VG', '2020-07-06 21:39:07', '2020-07-13 21:14:29', '', 'Cédula de Ciudadanía', '1123304929', '3102663832', 'PUERTO ASíS', NULL, 1, 0, NULL, NULL),
(221, 'José Fernando Montealegre', 'femomenati1967@gmail.com', '$2y$10$azeKPs/W2EslTaRujYaPVuomRigYXxnt2JQFsIuXRXlSR6jjwZvYG', 'user', NULL, 'profile.png', '4MOss6DNmLBS780gfIlFZzWNyAsDJa0M6OYRcUOLCyqcalvYKn4BsOPvBeqw', '2020-07-06 21:42:17', '2020-07-21 11:37:24', '', 'Cédula de Ciudadanía', '18111000', '3143074789', '-', NULL, 1, 0, NULL, NULL),
(223, 'María Segura', 'segura2019@gmail.com', '$2y$10$OJb0cUNmszBEw/WZS1ilX.oVqvyCcZl32qHlYiwDHOGZ0vfzAgjm.', 'user', '', 'profile.png', 'CA4PspBcSXO5JbET9trfjrKy8UCuVKXRqvqcvsKa96dK4CkZzQ2QY4ciVhgr', '2020-07-06 21:52:31', '2020-07-06 21:52:31', '', 'Cédula de Ciudadanía', '69022179', '3228281118', 'PUERTO ASíS', NULL, 1, 0, NULL, NULL),
(230, 'Edison Andrés Basante', 'andresbasante93@hotmail.com', '$2y$10$6/60wEpqGcJCcZYAzoSSCuOKpaJ6mOh.W/J/PUM9a6ivLmRnt2ezO', 'user', '', 'profile.png', 'JWKyRmb0hK2yuCcSRYfiRQmnmvuGu1iO4sTGWamfKv4jQ1BQ9MMjntb8jrYu', '2020-07-07 13:14:22', '2020-07-07 13:14:22', '', 'Cédula de Ciudadanía', '1123307177', '3108790660', 'PUERTO ASIS', NULL, 1, 0, NULL, NULL),
(234, 'Campo Elías Montealegre Mera', 'campomera007@gmail.com', '$2y$10$YgMqTIEkC5j.ixYR4qQwJ.P.BNndcp3wA4kFgTvbFave/Rr3Lxoga', 'user', NULL, 'profile.png', 'WodCpdV6NYMw3nw6vQNpsGoXlfrVLYPA5uTBnUlMMCvgXIDDZNqM1Mux9Pwz', '2020-07-07 16:38:35', '2020-07-07 23:34:08', '', 'Cédula de Ciudadanía', '18110492', '3114851720', 'PUERTO ASIS', NULL, 1, 0, NULL, NULL),
(235, 'Jesus ivan Benavides lopez', 'ivan35lopz@gmail.com', '$2y$10$T1pF1aRZNOiEg0ChcnWRzOx.4T9A/rZ8BO5YxvQkhM5Mf.zAWK9wS', 'user', NULL, 'profile.png', 'f4XQx8Vh1lddZPCT0UCkFlwkhMYe8YGrWy5LCMU3GHHBHFvPyV2NTV8Aku7u', '2020-07-07 16:52:38', '2020-07-09 11:07:18', '', 'Cédula de Ciudadanía', '13072035', '3216656383', 'PASTO NARIñO', NULL, 1, 0, NULL, NULL),
(240, 'Juan Manuel Camargo charriz', 'marce-mile@hotmail.com', '$2y$10$zQg6wm187VA3i1IzwhoG6uvoEvz0pBr3UONfb7LG79PdkwKykfssW', 'user', '', 'profile.png', 'jhjP27hDNarpvj56IubLeYIYG5eoqjOnVso4ihsTXICp69U0zaxw1EGSDb0I', '2020-07-07 22:56:19', '2020-07-07 22:56:19', '', 'Cédula de Ciudadanía', '77163231', '3134848847', 'PASO CESAR', NULL, 1, 0, NULL, NULL),
(242, 'Alberto', 'beto8879@hotmail.com', '$2y$10$Qhd5Qm2MJa9B/dWmodwqe.GM8S8AaswNN3v3ZAXB9mSufHUMalxdi', 'user', '', 'profile.png', NULL, '2020-07-07 23:23:59', '2020-07-07 23:23:59', '', 'Cédula de Ciudadanía', '1123207495', '3232375846', 'PUERTO ASIS', NULL, 1, 0, NULL, NULL),
(263, 'Javier Hernan Potosí', 'alejandrapotosi@gmail.com', '$2y$10$ELYFqynGcNl.wu/g56ZQ2eABJbCORP72yQ9SCMvKSIT6PDAmW5j4O', 'user', '', 'profile.png', 'VtF7O5S7bEEWvOn0Dpyck6Vy05WUMlSjObU1JJOzPMB7aBHo8o8jAGbOCCyP', '2020-07-08 20:44:53', '2020-07-08 20:44:53', '', 'Cédula de Ciudadanía', '18186740', '3112230971', 'PUERTO ASIS', NULL, 1, 0, NULL, NULL),
(274, 'Octavio Mina  Melesio', 'minamelesio@hormail.com', '$2y$10$GPhNYoguu/mmQMNijtPOLu.sXr8vYdGbW9gk4JL3zmhRjLrDnMA.y', 'user', '', 'profile.png', 'stgeZiolG4SO4QfbsTt07g2Eg3wkIujlsHbinzH5BFSrG6hyTqOAb9Dvxd95', '2020-07-09 12:07:09', '2020-07-09 12:07:09', '', 'Cédula de Ciudadanía', '94486970', '3112230971', 'CALI', NULL, 1, 0, NULL, NULL),
(290, 'Joel Torres Alvarez', 'Jtorrealba323@gmail.com', '$2y$10$4JJwMrd1R5KjQQRKIJAfbezJjSIA5IQmCmcZtQ2E5BJQLl8GoDfOq', 'user', '', 'profile.png', 'u10SvGUX90EfyDKfl1nKuiPVwD6MtwVC3ZUk7BGPBVZdrCu3liwMQ7KbOIbe', '2020-07-10 13:51:59', '2020-07-10 13:51:59', '', 'Cédula de Ciudadanía', '18107547', '3208475321', 'PUERTO ASIS', NULL, 1, 0, NULL, NULL),
(291, 'jhordi96@hotmail.com', 'jhordi96@hotmail.com', '$2y$10$NyBxtkuz9buuXUlE7Q0o2.LhTXI68aSUKwBQLjv2ItRz8HYd41iyO', 'user', '', 'profile.png', NULL, '2020-07-10 14:05:13', '2020-07-10 14:05:13', '', 'Cédula de Ciudadanía', '1123312772', '3213159551', 'PUERTO ASIS', NULL, 1, 0, NULL, NULL),
(311, 'María Alejandra Ojeda Londoño', 'alejandra.life99@gmail.com', '$2y$10$IGanIWilHYOhTiWKe7133O7MEQbYk0eH9Q3VtSBpmLHBNvD8wCNvS', 'user', '', 'profile.png', NULL, '2020-07-13 13:12:10', '2020-07-13 13:12:10', '', 'Cédula de Ciudadanía', '1123318492', '3209194314', 'PUERTO ASíS', NULL, 1, 0, NULL, NULL),
(318, 'Luis Guillermo Rivas Moreano', 'yohana8gonzalez@gmail.com', '$2y$10$/o5weOCErQs8eT8agCrqXejUhVB.yTSMXm3JF1gzTMj1SIPLHlN/e', 'user', '', 'profile.png', 'lO9td4C6EQ4MzN0KseBiI5hVZHMZau0Z7z7tPkpIBnjghmk7O8wfFyjFWAOg', '2020-07-13 17:27:16', '2020-07-13 17:27:16', '', 'Cédula de Ciudadanía', '13069219', '313 8483360', 'PASTO NARIñO', NULL, 1, 0, NULL, NULL),
(319, 'Sandro joel torres fajardo', 'joeltorresh2020@gmail.com', '$2y$10$7e0mu6BJNxsuNxXP0xiFa.PXtgSO7TPzGdNAJufpD0RuQFDsH194q', 'user', '', 'profile.png', 'sNR0WAsP29z3yXvyUed3cZIUkxw3v0ID0KmQLWp3KxN4eJVRcI1WN1BEDOEf', '2020-07-13 17:32:45', '2020-07-13 17:32:45', '', 'Cédula de Ciudadanía', '1123204285', '321 3893981', 'PUERTO ASIS', NULL, 1, 0, NULL, NULL),
(344, 'Laura Susana Rodriguez Gomez', 'capacitacionfosfec@gmail.com', '$2y$10$ziJp0GA0GGfqhDdye2X1FOFcAmjya7SmfzvLC17UcsXiD8mqB/Xd.', 'user', '', 'profile.png', 'MPbU4rTCmY6UjYMDawAcZvFt9hJFQHsBTgbKhdjeGyBMUakXK0m1CofMD9n0', '2020-07-14 20:04:10', '2020-07-14 20:04:10', '', 'Cédula de Ciudadanía', '1123206343', '320 9023248', 'EXPEDIDA EN PTO ASIS', NULL, 1, 0, NULL, NULL),
(514, 'Jorge', 'yeser3233@outlook.com', '$2y$10$HdC25ZXy/dGmEKPXv9x8g.RHMgk2WMws/Lm0n4zIXVoGcZHWASGSq', 'user', '', 'profile.png', NULL, '2020-07-25 19:56:27', '2020-07-25 19:56:27', '', 'Cédula de Ciudadanía', '1083916445', '3177231563', 'PITALITO', NULL, 1, 0, NULL, NULL),
(531, 'Jorge', 'yeser3233@outloock.com', '$2y$10$I2WnqfCqmtJ.zriMTm9BjO7n7YenBVv3DwY7OTWqbALWRuVXwZR9q', 'user', '', 'profile.png', NULL, '2020-07-27 10:36:31', '2020-07-27 10:36:31', '', 'Cédula de Ciudadanía', '1083916445', '3177231563', 'PITALITO', NULL, 1, 0, NULL, NULL),
(758, 'Luis carlos', 'luis792@gmail.com', '$2y$10$zonnqcd40RFy3Fn4Fbd/Geq0/CosOOO1pLat4avZ5OAxA1YIfrLCm', 'user', '', 'profile.png', NULL, '2020-08-17 01:00:18', '2020-08-17 01:00:18', '', 'Cédula de Ciudadanía', '97472693', '3102900275', 'SIBUNDOY', NULL, 1, 0, NULL, NULL),
(792, 'AlekZenderr_Smir', 'karli2020f@mail.ru', '$2y$10$lfh/O985BiMuwMYc3gMgnuZaxFGC/LLMjU8gR.AQmbXBxCBWZNCjO', '', '', '', NULL, '2020-08-19 21:28:50', '2020-08-19 21:28:50', '', 'Cedula de Extranjeria', '', '81521164944', 'стеклянный козырек на тросах', NULL, 1, 0, NULL, NULL),
(841, 'Kirka_Maymn', 'kari332211@mail.ru', '$2y$10$mWRB84LdKxtSFO4WA/3DEuzs6K0mNt2SOShGwDWq6x2ZGWQjhtWtC', '', '', '', NULL, '2020-08-24 10:13:02', '2020-08-24 10:13:02', '', 'Cedula de Extranjeria', '', '87768312616', 'стеклянные козырьки из закаленного стекла', NULL, 1, 0, NULL, NULL),
(937, 'Ramiro carlosama', 'ramirocarlosama8@gmail.com', '$2y$10$xbrkKBb3b93DQR.KKyPUOO9cLJ5RRW3/SIRlDnaQ/2/8Lt4f2j/Zq', '', '', '', NULL, '2020-08-28 14:24:33', '2020-08-28 14:24:33', '', 'Cédula de Ciudadanía', '18157509', '3223313632', 'LA HORMIGA PUTUMAYO', NULL, 1, 0, NULL, NULL),
(1200, 'Lisbeth Tatiana Caicedo Romo', 'Tatiana5romo@gmail.com', '$2y$10$7VbOzSmzdRGw2KKpz/bZCeOUEUVWG.fVyrA.3hj73cnYzW4aJofX2', '', '', '', 'EaGdw6rxVBAd3aI6RyurfG7mMer2GqPrPyhJR7txH0Mz78TTxuCh6KAhMwht', '2020-09-12 02:29:46', '2020-09-12 02:29:46', '', 'Cédula de Ciudadanía', '1004598723', '3143907339', 'VALLE DEL GUAMUEZ', NULL, 1, 0, NULL, NULL),
(1201, 'YIBY LORENA YANDUN SUAREZ', 'yibisuarez19@gmail.com', '$2y$10$66HzYhPMEdUsQMQFMwH7Ceq946pW/Sekbq8JdHEiwPp8WH62hM/ru', '', '', '', 'OFuFhTpcHrCjuWnypETn5GO7sB9mZdfQa56c4IFEak8qvsdXm2ykAvQY3yEl', '2020-09-12 02:35:08', '2020-09-12 02:35:08', '', 'Cédula de Ciudadanía', '1126456505', '3132811721', 'VALLE DEL GUAMUEZ', NULL, 1, 0, NULL, NULL),
(1202, 'Yenifer Nicol Andrade  cañar', 'yenifer.1234nicol@Hotmail.com', '$2y$10$IaE3ixVi1Ayo0khYKKtkEu0A/yo72g2c3uPfdtJUCE1LOnnCXUiXu', '', '', '', 'VztfdfuV1pjlilRzrrjqnpTDThXfWQia09ACuz8wbkawqq6z6TL330LOW3JY', '2020-09-12 02:47:13', '2020-09-12 02:47:13', '', 'Cédula de Ciudadanía', '1004535204', '3222757210', 'VALLE DEL GUAMUEZ', NULL, 1, 0, NULL, NULL),
(1203, 'Yenith Paola Erazo Gómez', 'paito20013@gmail.com', '$2y$10$gBg2WPTOFQ9NJb65C/SruOql.BFo79rG2WA0ZixELRCJtuBAcUHSe', '', '', '', 'e3HOK6ePOA0rUjFjn3LyEK16SZiv7zokWhliyXJKuG2Lvk7R9nxPK4W3ijLj', '2020-09-12 02:57:17', '2020-09-12 02:57:17', '', 'Cédula de Ciudadanía', '1006516370', '3227699256', 'PIAMONTE CAUCA', NULL, 1, 0, NULL, NULL),
(1204, 'Edly Johana Díaz Figueroa', 'edlydiazfigueroa@gmail.com', '$2y$10$9o4bTanBys.T4x9RXiOnHOn83qNuI/LfnqqEIVl3ad09MolNJSogi', '', '', '', '6T27dNqoiwq8kuRhD3W3K1eT8B7wIldVcLtY8sC8kAwc7XAtWtCwGNGpR4Vq', '2020-09-12 03:03:19', '2020-09-12 03:03:19', '', 'Cédula de Ciudadanía', '1123329871', '3138664175', 'ORITO', NULL, 1, 0, NULL, NULL),
(1205, 'LORENA LISBETH BURBANO ROJAS', 'lorenitabr2017@gmail.com', '$2y$10$IndQ3hI4SUxFSh3Z5j6BVu/S6VhAH2GOT04zwg5cdq3b52eRSY.Pq', '', '', '', '3YS957QbNUPfHEO1RblVLiMEfKd4Mml9PqUOi00csKPyvi6QJE5kMj0JSQwi', '2020-09-12 03:08:32', '2020-09-12 03:08:32', '', 'Cédula de Ciudadanía', '1006996332', '3228660800', 'VALLE DEL GUAMUEZ', NULL, 1, 0, NULL, NULL),
(1207, 'Silvia Yesica Morales Andrade', '1126455847@gmail.com', '$2y$10$5xw3/o16pRbf9zW6bBE18um2LafzoG2I1avSqSintBe5bo/vP.My.', '', '', '', 'LAfCKfoXLt6x92DX1zsz3uhM9unRqkt5rutPVzlzuy9pUbZrXLfnw3iDtwNC', '2020-09-12 03:14:34', '2020-09-12 03:14:34', '', 'Cédula de Ciudadanía', '1126455847', '3203218585', 'VALLE DEL GUAMUEZ', NULL, 1, 0, NULL, NULL),
(1223, 'Silvia Yesica Morales Andrade', 'silviayesica1126455847@gmail.com', '$2y$10$3g43txkCcSHjQZ.xpe3BH.osJWpn/G9QTP00MCNqIeqtt/y4KIEWm', '', '', '', 'BvsB03k45Qs7PyR5jvs4xHSzKymqB1glOfdtPu7PtErms6AUEold9d4hS9bL', '2020-09-14 13:34:15', '2020-09-14 13:34:15', '', 'Cédula de Ciudadanía', '1126455847', '3203218585', 'VALLE DEL GUAMUEZ', NULL, 1, 0, NULL, NULL),
(1227, 'JOHANA ANGELICA YAGARI TAMANIZA', 'johayagari@gmail.com', '$2y$10$LlOgT/DVU8lC2dbniEozw.Nc7i0pM6R5GOZQHed1pa5K4vAoLROwy', 'user', NULL, NULL, 'iFajo72YzckSnx80FzkE9OhG5g8IuSDLzwSMKg634KemNLMNygXwGq1NidNm', '2020-09-14 14:33:03', '2020-11-19 12:59:23', '', 'Cédula de Ciudadanía', '1123313289', '3107909851', 'PUERTO ASIS', NULL, 1, 0, NULL, NULL),
(1228, 'yulitza Andrea  Gómez', 'andrea.gomez20002000@gmail.com', '$2y$10$/q9XGToeTJVETNdNiBDEoOrkt4XR4w1JnEKNPjmhk4os0S7O/AC2K', '', '', '', 'SZbGnM5ByPJdSz17iQYj55Cod95P03RCmPYA43z8l0MhtVS1fB9OI6EQeZ82', '2020-09-14 15:03:01', '2020-09-14 15:03:01', '', 'Cédula de Ciudadanía', '1006788861', '3123883828', 'VALLE DEL GUAMUEZ', NULL, 1, 0, NULL, NULL),
(1229, 'Yenny yomaira cundar yatacue', 'yennyyomairacundar@gmail.com', '$2y$10$JCS3zWJqo8kufEFrtc5NsuDSmsmTx207H75CAC6UxL8ySiYzErZb6', '', '', '', 'epi4uYyPulgOcWyVbIQ44FjEAiS8QYn98tG4ZllZLdZ2rqw5JMc1GNEJNCKW', '2020-09-14 15:10:01', '2020-09-14 15:10:01', '', 'Cédula de Ciudadanía', '1122336948', '3115674348', '1122336948', NULL, 1, 0, NULL, NULL),
(1230, 'Jenny elizabeth revelo cuaran', 'noty.19902@gmail.com', '$2y$10$.5f7w82LKQpbtwzEGWAwx.1LkgNCPGs2DfA/iGfhTDBvMxYVY19iu', '', '', '', 'qxaW8Vi0XwegtgrGvFyFqix5GYuMxaySQEwvbH0MgsGac02wVMUW0DejY4CP', '2020-09-14 15:27:19', '2020-09-14 15:27:19', '', 'Cédula de Ciudadanía', '1126451429', '3223247979', 'VALLE DEL GUAMUEZ', NULL, 1, 0, NULL, NULL),
(1231, 'ONEYDA IDALI RODRÍGUEZ TAPIA', 'idalyrodriguez68@gmail.com', '$2y$10$i6f0rHhDNUqqUQa.1aE/f.uG486fMvF9ZqN6UhIgLrgHVjV5vcqfS', '', '', '', 'cDzOtmJXh7z5PCq1aD2C7PzJRQ8V80UZqAmU2Z8lhxBU0vIQUodWw1dzjzqq', '2020-09-14 15:32:05', '2020-09-14 15:32:05', '', 'Cédula de Ciudadanía', '1007012846', '3102750431', 'VALLE DEL GUAMUEZ', NULL, 1, 0, NULL, NULL),
(1232, 'Richard Arnelio Bolaños', 'richard.arnelio@gmail.com', '$2y$10$v.tHzY4uriq4k1iK8.EvXeZDm5xKKMUHxdD5BC3ysrECzqRB68uXq', '', '', '', 'n63HvsFpiMlCPJtBhJdvJ4dG9jyEgv1aXERuhG9cxDYGXljKSonlG18KySNs', '2020-09-14 15:35:54', '2020-09-14 15:35:54', '', 'Cédula de Ciudadanía', '1147954863', '3155072726', 'ORITO', NULL, 1, 0, NULL, NULL),
(1233, 'Anyi Paola Rodríguez Ramírez', 'paorodriguez-1998@outlook.com', '$2y$10$Hawy3GE/wlkrTr.3WpIQoezU3g7vPYOoB44LGdESx6m/o1kA964Iy', '', '', '', 'VqSJVPaYkVAI5U1gMCPKrnQqSestwJ6Hm9g9WZoRyVbKF1FErJdno0nEclBt', '2020-09-14 15:42:10', '2020-09-14 15:42:10', '', 'Cédula de Ciudadanía', '1126458070', '3186321528', 'VALLE DEL GUAMUEZ', NULL, 1, 0, NULL, NULL),
(1235, 'Jorge Armando Galíndez Rodríguez', 'jorgegalindezcontacto@gmail.com', '$2y$10$HSYHAkq6kRrr7tcCV/FumeMCL13kWV.bUfZlzdTKwOl9J810XKiA.', '', '', '', '1dwqKM2oonP227GzUJmCtcjvzf85dDDOXep5vzbpOQM91P7ACwV2y72irtrE', '2020-09-14 15:46:31', '2020-09-14 15:46:31', '', 'Cédula de Ciudadanía', '1126454233', '3202002053', 'VALLE DEL GUAMUEZ', NULL, 1, 0, NULL, NULL),
(1236, 'Jairo Alexander Guerrero', '17jairoguerrero@gmail.com', '$2y$10$M7KZGMg2y2eQLY4HL597V.FMMgWUeCIkVGL8GewQNEicvdFnDDqKq', '', '', '', 'F6hijZvg6JprLltFC40FYqwmUB3tRbBRqZguOJHFNPinPlYllfdkNyQFqMgP', '2020-09-14 15:55:00', '2020-09-14 15:55:00', '', 'Cédula de Ciudadanía', '1006842632', '3138920221', 'ORITO', NULL, 1, 0, NULL, NULL),
(1237, 'Yuli Nayeli ruano', 'nayiberuano239@gmail.com', '$2y$10$Zg.pcyKR2T44AuDZQFCOW.Hhhz8SRb8CVYyrxkugFqy7IelSlBiVy', '', '', '', 'CMUU9938Xh0zq8GJFu5HCvVhiivq6V1PpBhvEp9r2yweforgOLxGJ1hDGsWh', '2020-09-14 15:58:57', '2020-09-14 15:58:57', '', 'Cédula de Ciudadanía', '1006997520', '3133431911', 'VALLE DEL GUAMUEZ', NULL, 1, 0, NULL, NULL),
(1238, 'Angela briyith Chaves estrada', 'abchaves9@misena.edu.co', '$2y$10$gmLNQveMPqc3rEJULgWJb.jwmZ7VbBT0NnoK2gipQWOH3ootRx4SK', '', '', '', 'fcVvsoVzWZ9wM9dQOp5Bm38iRTAZJBQRGtqq3AN1y9jNW1iLlEDiDhawknos', '2020-09-14 16:13:04', '2020-09-14 16:13:04', '', 'Cédula de Ciudadanía', '1085943115', '3157817019', 'IPIALES NARIñO', NULL, 1, 0, NULL, NULL),
(1239, 'Leidy Alexandra Daza Ruales', 'leidyalexandradaza@gmail.com', '$2y$10$ChkTPFTAGpJbE.vOOOQVme9yGwlzTEbe/220roCs8OG.gXQjNxeia', '', '', '', NULL, '2020-09-14 16:17:21', '2020-09-14 16:17:21', '', 'Cédula de Ciudadanía', '1123328848', '3115075163', 'ORITO', NULL, 1, 0, NULL, NULL),
(1752, 'Giovanny Andres Moriano Morales', 'andresmoriano812@gmail.com', '$2y$10$/YF5ksDbuOyOycwhE83cduR.QJjmTsOF.FcFHSGjYQftMRwjdB5Rq', '', '', '', 'np6DjdsBAeixVZftv1JNMf7IGNmaBkOsUzBAUN92kuVcPiq148Z7zQOsIKq9', '2020-10-06 01:24:41', '2020-10-06 01:24:41', '', 'Cédula de Ciudadanía', '1123311568', '3224039927', 'PUERTO ASíS', NULL, 1, 0, NULL, NULL),
(1754, 'Ricardo Pardo', 'ricardopardor@gmail.com', '$2y$10$pzNuBMpmfcPr38ylX.G3tumpG7RErChSvZg68JL8CVv2uwdJI5.FW', '', '', '', NULL, '2020-10-06 01:33:04', '2020-10-06 01:33:04', '', 'Cédula de Ciudadanía', '1075258351', '3165672400', 'NEIVA', NULL, 1, 0, NULL, NULL),
(1787, 'Jeferson rueda torres', 'dcs_jrueda403@pedagogica.edu.co', '$2y$10$2db4mX15aIkVsaRLrgKWweY9Q2Av29oNi/jFT1bOQle6kmiCJel3q', '', '', '', NULL, '2020-10-06 14:21:19', '2020-10-06 14:21:19', '', 'Cédula de Ciudadanía', '1016038639', '310 4893126', 'BOGOTá', NULL, 1, 0, NULL, NULL),
(2158, 'BOLANOS  RICHARD ARNELIO', '1147954863@gmail.com', '$2y$10$jj1ZBYzsyrSGeHqahTbnf.McrJaGsYEn0q6x.HUaiAhvE54uSlJ0W', '', '', '', 'J12QLWAA18x8urUIoBibpOVqFjCTlWGwskzPUpuR3DraXh1CEJQVudiwfK2x', '2020-12-15 12:57:34', '2020-12-15 12:57:34', '', 'Cédula de Ciudadanía', '1147954863', '320 468 8543', 'ORITO', NULL, 1, 0, NULL, NULL),
(2159, 'CAÑAS VASQUEZ KATHERINE', '1122340595@gmail.com', '$2y$10$QnB2NrAok9odD5SY2VKMK.ZGzDhsoPoKL7qIk985Fjf9GEJzltCki', '', '', '', '4OFv1nBgzTMack1UnDkJWzHnZftamXzagRH8CjVGndT6OoF8QBvCvl5zb6Vf', '2020-12-15 13:09:07', '2020-12-15 13:09:07', '', 'Cédula de Ciudadanía', '1122340595', '320 468 8543', 'SAN MIGUEL LA DORADA', NULL, 1, 0, NULL, NULL),
(2160, 'JHON JAIRO PINCHAO CUARAN', '1006997520@gmail.com', '$2y$10$X5/LOCpwExplnYPnKF.0i.Fun41fvUMiQH.GQTRU/ARokyBdAjZxq', '', '', '', 'nzc0CH8ksKsay95JXz3LbgOI5qyKRzZ7XoUh9ME4GfHbquJUqk5bShYrTETD', '2020-12-15 13:26:11', '2020-12-15 13:26:11', '', 'Cédula de Ciudadanía', '1006997520', '320 468 8543', 'VALLE DEL GUAMUEZ', NULL, 1, 0, NULL, NULL),
(2161, 'ROSERO BOLAÑOS JUAN GIRALDO', '1006995870@gmail.com', '$2y$10$ClmZrHZq24kaBm/IumC.F.oAwlUp6G389mQAkx55fo5jCeIngYpZu', '', '', '', 'szhDwNvjdnVDvVtj8Q2fbtLljtL9BQFLCHifE09CKIJqhGJZErho9XsusWUS', '2020-12-15 13:30:09', '2020-12-15 13:30:09', '', 'Cédula de Ciudadanía', '1006995870', '320 468 8543', 'VALLE DEL GUAMUEZ', NULL, 1, 0, NULL, NULL),
(2162, 'CASTRO LOPEZ SONIA ROCIO', '1010101312@gmail.com', '$2y$10$NdBQJ8ckUGCq2UDBuMHcleaqJt3fqRR2bRBAuwQwGST0lHxYwBbP.', '', '', '', 'BrsbRqfuOVPwMNkg8C2284Di3fkwX6gwengFmOdQOaHU2KDrl8HdEqcrphRk', '2020-12-15 13:35:43', '2020-12-15 13:35:43', '', 'Cédula de Ciudadanía', '1010101312', '320 468 8543', 'SAN MIGUEL LA DORADA', NULL, 1, 0, NULL, NULL),
(2163, 'HERNANDEZ CASTRO ZOLANYI CRISTINA', '1006996322@gmail.com', '$2y$10$YQZD0MsZZc49UYOkIrB/AOdD85Aful8WRZwQVWUQx1TjmaonXTyQi', '', '', '', 'PyJSgTEZiNFF6Q5nbFNQ4sInV86g4N9l9SDn01JZ9KwOAKwzs2uxfH8tCatA', '2020-12-15 13:38:30', '2020-12-15 13:38:30', '', 'Cédula de Ciudadanía', '1006996322', '320 468 8543', 'VALLE DEL GUAMUEZ', NULL, 1, 0, NULL, NULL),
(2164, 'MOYA ABAUNZA JOHANA', '1126452751@gmail.com', '$2y$10$QdZitK1K70Hr8v51f3upv.V6g5FTRXWL2qATMKV3EQ68xyjuSunGW', '', '', '', 'UmIGxM9JM7sQCciEhWmehe3puQKMD55FKhfBMaqMKxA9RRXdyZsrm82pqLrD', '2020-12-15 13:41:38', '2020-12-15 13:41:38', '', 'Cédula de Ciudadanía', '1126452751', '320 468 8543', 'VALLE DEL GUAMUEZ', NULL, 1, 0, NULL, NULL),
(2165, 'GERSON LIZARDO ZAMBRANO TRUJILLO', '1110543078@gmail.com', '$2y$10$rUPEqB3SfPeN/SKOzu5aYOdq9GOr2WOq6641a7FCnHT51Wrijt8zq', '', '', '', NULL, '2020-12-15 13:45:06', '2020-12-15 13:45:06', '', 'Cédula de Ciudadanía', '1110543078', '320 468 8543', 'IBAGUE-TOLIMA', NULL, 1, 0, NULL, NULL),
(2168, 'Stefany Yineth Guamanga Cometa', 'Stefanyguamanga2676@gmail.com', '$2y$10$iBbi3op3HzNR6Evgpj4E4Ow2F8DrVzZZKPw0Vtcvxhte2cuYlFm36', '', '', '', NULL, '2020-12-17 14:37:52', '2020-12-17 14:37:52', '', 'Cédula de Ciudadanía', '1002862005', '3142807489', 'PUERTO ASíS-PUTUMAYO', NULL, 1, 0, NULL, NULL),
(2207, 'nufu3 enfiqjm fnunc aoajfm0i', 'cojanfuqnfamfo@gmail.com', '224466', 'user', NULL, NULL, NULL, '2021-01-17 23:57:38', '2021-01-18 14:34:46', '', 'Cédula de Ciudadanía', '16844068', '3158254291', 'JAMUNDí-VALLE', NULL, 1, 0, NULL, NULL),
(2214, 'Rider', 'riderzambrano557@gmail.com', '$2y$10$KmCaDcgHFmyf9ZfTQAA7ROhJ3AAmuHZ0v4q7jnDXe0E58C8rCaHhm', '', '', '', 'vZZ1ZsC1k5a1pmnbNrYqrPrFYz6w0OHBWaNjYhFz5TTosWeK0V3tMd7vfOgF', '2021-01-21 15:38:55', '2021-01-21 15:38:55', '', 'Cédula de Ciudadanía', '1123306007', '3113815373', 'PUERTO ASIS', NULL, 1, 0, NULL, NULL),
(2224, 'Camilo', 'ccmonpantoja@gmail.com', '$2y$10$3BuUGflDA3zgnk4GKj3d3eRe/L3ewKvpPvZ4bBq5.McAgHlm8Aowi', '', '', '', NULL, '2021-02-01 09:11:06', '2021-02-01 09:11:06', '', 'Cédula de Ciudadanía', '123456789', '321321312', 'PTO ASIS', NULL, 1, 0, NULL, NULL),
(2225, 'Rodolfo Silva', 'coordinacion@surcoestudios.com', '$2y$10$8dCMyHecUyfI8QiZ.ttUZOl0IlZqsvcLH2DbCug2yG1bAhIm5jLES', 'author', 'author', 'profile.png', NULL, NULL, NULL, NULL, 'Cédula de Ciudadanía', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `evaluaciones`
--
ALTER TABLE `evaluaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modulos`
--
ALTER TABLE `modulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `resultados`
--
ALTER TABLE `resultados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `documentos`
--
ALTER TABLE `documentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `evaluaciones`
--
ALTER TABLE `evaluaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=444;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `modulos`
--
ALTER TABLE `modulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=797;

--
-- AUTO_INCREMENT de la tabla `resultados`
--
ALTER TABLE `resultados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2228;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
