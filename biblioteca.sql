-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-09-2021 a las 01:41:08
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `id_autor` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `nacionalidad` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`id_autor`, `nombre`, `apellido`, `nacionalidad`) VALUES
(1, 'Gabriel', 'García Márquez', 'colombiano'),
(2, 'Isabel', 'Allende', 'chilena'),
(3, 'Julio', 'Cortázar', 'argentino'),
(4, 'Alfonsina', 'Storni', 'argentina'),
(5, 'Ernesto', 'Sábato', 'argentino'),
(6, 'Gabriela', 'Mistral', 'chilena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `id_libro` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `anio` int(11) NOT NULL,
  `genero` varchar(20) NOT NULL,
  `sinopsis` varchar(500) NOT NULL,
  `id_autor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`id_libro`, `titulo`, `anio`, `genero`, `sinopsis`, `id_autor`) VALUES
(1, 'Cien años de soledad', 1967, 'novela', 'Entre la boda de José Arcadio Buendía con Amelia Iguarán hasta la maldición de Aureliano Babilonia transcurre todo un siglo. Cien años de soledad para una estirpe única, fantástica, capaz de fundar una ciudad tan especial como Macondo y de engendrar niños con cola de cerdo.', 1),
(2, 'Crónica de una muerte anunciada', 1981, 'novela', 'En un pequeño y aislado pueblo en la costa del Caribe, se casan Bayardo San Román, un hombre rico y recién llegado, y Ángela Vicario. Años después, Ángela Vicario estaría escribiendo cada día a Bayardo, primero formalmente, después con cartas de joven enamorada y, al final, fingiendo enfermedades.', 1),
(3, 'El amor en los tiempos del cólera', 1985, 'novela', 'De jóvenes, Florentino Ariza y Fermina Daza se enamoran apasionadamente, pero Fermina eventualmente decide casarse con un médico rico y de muy buena familia. Florentino está anonadado, pero es un romántico. A los cincuenta años, nueve meses y cuatro días de haberle profesado amor a Fermina, lo hará una vez más.', 1),
(4, 'La casa de los espíritus', 1982, 'novela', 'La casa de los espíritus narra la saga de una poderosa familia de terratenientes latinoamericanos. El despótico patriarca Esteban Trueba ha construido con mano de hierro un imperio privado que empieza a tambalearse con el paso del tiempo y un entorno social explosivo.', 2),
(5, 'De amor y de sombra', 1984, 'novela', 'En palabras de la propia autora, «es la historia de una mujer y un hombre que se amaron en plenitud, salvándose así de una historia vulgar. Escrita durante su exilio en Venezuela, el amor entre Irene y Francisco es un alegato apasionado a favor de la fe en la libertad y la dignidad humanas.', 2),
(6, 'Eva Luna', 1987, 'novela', 'Una niña solitaria se enamora del amante de su madre y practica misteriosas ceremonias rituales; una mujer permanece medio siglo encerrada en un sótano, víctima de un caudillo celoso; en el fragor de una batalla, un hombre viola a una muchacha y mata a su padre.', 2),
(7, 'Bestiario', 1951, 'cuentos', 'El narrador de éste capitulo es el propio protagonista, que vive en una casa enorme con su hermana, Irene, y juntos comparten las tareas. Irene es aficionada a tejer, él lee literatura francesa. Un día toman parte de la casa y entonces deben acostumbrarse a vivir en el otro lado.', 3),
(8, 'Final del juego', 1956, 'cuentos', 'El cuento es narrado por una niña que vive en una casa con su madre, su tía y sus hermanas, Holanda y Leticia. Leticia tiene un problema en su espalda (parálisis, al parecer) por el cual no se puede mover mucho. A la hora de la siesta, las niñas salen por la puerta que da a las vías del Ferrocarril Central Argentino.', 3),
(9, 'Rayuela', 1963, 'novela', 'El amor turbulento de Oliveira y La Maga, los amigos del Club de la Serpiente, las caminatas por Paría en busca del cielo y el infierno tienen su reverso en la aventura simétrica de Oliveira, Talira y Traveler en un Buenos Aires teñido por el recuerdo.', 3),
(10, 'Poemas de Amor', 1926, 'poemas', 'Estos Poemas de amor de Alfonsina Storni, única obra en prosa de su autora, fueron publicados en 1926 pero no figuran entre sus «Poesías completas», pese a ser uno de sus libros mas intensos y apasionados. Sobre su proceso de composición escribió: “Escribo estas líneas como un médium, bajo el dictado de seres misteriosos que me revelaran los pensamientos. No tengo tiempo de razonarlos. Se atropellan y bajan a mi mano a grandes saltos. Tiemblo y tengo miedo.”', 4),
(11, 'Antología poética', 1938, 'poemas', 'Su obra ocupa hoy un lugar en el canon que ella seguramente ni siquiera se atrevió a soñar desde su puesto de luchadora incansable, y casi podríamos decir autodidacta librada al instinto poético que respiraba en su oído, en el mundo de hombres que le tocó vivir.', 4),
(12, 'El túnel', 1948, 'novela', 'En una trama de amor y muerte que aborda la soledad del individuo contemporáneo, el pintor Juan Pablo Castel se debate por comprender las causas que lo arrastraron a matar a la mujer que amaba, María Iribarne, y que era su única vía de salvación.', 5),
(13, 'Sobre héroes y tumbas', 1961, 'novela', 'Un relato sobre los últimos representantes de una familia oligárquica venida a menos. Por un lado, Martín y Alejandra, que viven una relación tortuosa y atormentada, son incapaces de escapar de un turbio destino: la genética predisposición de la familia de ella a la locura.', 5),
(14, 'Abbadón el exterminador', 1974, 'novela', 'Cuando el Ángel del Apocalipsis irrumpe con la fuerza de un huracán devastador, el lector ingresa al fascinante y aterrador mundo de esta vasta novela onírica, visionaria y anunciadora de las desgracias de nuestro tiempo.', 5),
(15, 'Desolación', 1922, 'poemas', 'Es el paisaje desolado de la Patagonia, que Gabriela Mistral describe en Naturaleza, parte de esta obra, publicada por primera vez en Nueva York, en 1922. Tras esa edición, la figura de Gabriela Mistral comenzó a elevarse por entre los grandes autores de la literatura universal.', 6),
(16, 'Ternura', 1924, 'poemas', 'Para Gabriela Mistral Ternura no solamente pretendía entretener y educar a niños por medio de la poesía, sino que también era un llamado a los adultos respecto de su responsabilidad ante la situación de aquellos, en particular por los niños que vivían en situación de abandono.', 6),
(17, 'Lagar', 1954, 'poemas', 'Lagar fue el último libro de Mistral publicado en vida y el único libro de la poeta en ser publicado primero en Chile que en el extranjero, hecho por el que manifestó sentir gran satisfacción. El tono de la poesía que compone Lagar profundiza el carácter complejo de toda la obra poética de Mistral. Para algunos autores, refleja el momento culmen de su creación, el ansiado encuentro con la plenitud de la propia identidad.', 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id_autor`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`id_libro`),
  ADD KEY `fk_libro_autor` (`id_autor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `id_autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `id_libro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libro`
--
ALTER TABLE `libro`
  ADD CONSTRAINT `fk_libro_autor` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id_autor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
