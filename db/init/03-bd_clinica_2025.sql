SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

USE bd_clinica_2025;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `CrearCita` (IN `p_fecha` DATE, IN `p_hora` TIME, IN `p_id_paciente` INT, IN `p_id_medico` INT, IN `p_nombreMedico` VARCHAR(200))   BEGIN
    DECLARE citasPaciente INT;
    DECLARE totalMedicos INT;
    DECLARE citasMismaHora INT;

    -- Obtener cuántas citas tiene el paciente
    SELECT COUNT(*) INTO citasPaciente
    FROM citas
    WHERE Pacientes_Id_Pacientes = p_id_paciente;

    -- Obtener cuántos médicos existen
    SELECT COUNT(*) INTO totalMedicos
    FROM medicos;

    -- Verificar si ya existe una cita en la misma fecha y dentro de 30 minutos
    SELECT COUNT(*) INTO citasMismaHora
    FROM citas
    WHERE Pacientes_Id_Pacientes = p_id_paciente
      AND Fecha = p_fecha
      AND ABS(TIMESTAMPDIFF(MINUTE, Hora, p_hora)) < 30;

    -- Validación principal
    IF citasPaciente < totalMedicos AND citasMismaHora = 0 THEN
        
        INSERT INTO citas (
            Fecha, Hora, 
            Pacientes_Id_Pacientes, 
            Medicos_Id_Medicos, 
            Especialidad_Nombre
        ) VALUES (
            p_fecha, p_hora, 
            p_id_paciente, 
            p_id_medico, 
            p_nombreMedico
        );

    ELSEIF citasMismaHora > 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'El paciente ya tiene una cita en ese rango de 30 minutos.';
    ELSE
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'El paciente ya alcanzó el límite máximo de citas permitidas.';
    END IF;

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `Id_Citas` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  `Pacientes_Id_Pacientes` int(11) NOT NULL,
  `Medicos_Id_Medicos` int(11) NOT NULL,
  `Especialidad_Nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`Id_Citas`, `Fecha`, `Hora`, `Pacientes_Id_Pacientes`, `Medicos_Id_Medicos`, `Especialidad_Nombre`) VALUES
(42, '2025-12-23', '11:20:00', 9, 28, 'Kevin Morales Marquez - Cirujano'),
(44, '2025-12-27', '15:11:00', 16, 27, 'Yarely Morales Acevedo - Pediatra'),
(46, '2026-05-15', '10:48:00', 26, 26, 'wdadasdawdaw asfawdaws awfasd - Internista'),
(56, '2026-06-06', '10:37:00', 28, 26, 'Jose Gonzales Rosales - Internista'),
(58, '2026-06-05', '09:29:00', 32, 26, 'Jose Gonzales Rosales - Internista'),
(59, '2026-06-06', '10:33:00', 32, 28, 'Kevin Morales Marquez - Cirujano'),
(61, '2026-06-06', '09:30:00', 33, 27, 'Yarely Morales Acevedo - Pediatra');

--
-- Disparadores `citas`
--
DELIMITER $$
CREATE TRIGGER `tr_cita_registrada` AFTER INSERT ON `citas` FOR EACH ROW BEGIN
    INSERT INTO notificacion_citas (mensaje, fecha)
    VALUES ('Se registró una nueva cita', NOW());
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicos`
--

CREATE TABLE `medicos` (
  `Id_Medicos` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido_Paterno` varchar(100) NOT NULL,
  `Apellido_Materno` varchar(100) NOT NULL,
  `Especialidad` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medicos`
--

INSERT INTO `medicos` (`Id_Medicos`, `Nombre`, `Apellido_Paterno`, `Apellido_Materno`, `Especialidad`) VALUES
(26, 'Jose', 'Gonzales', 'Rosales', 'Internista'),
(27, 'Yarely', 'Morales', 'Acevedo', 'Pediatra'),
(28, 'Kevin', 'Morales', 'Marquez', 'Cirujano'),
(31, 'Carlos', 'Gutierrez', 'Montes', 'General'),
(32, 'xx', 'Argento', 'xx', 'Cirujano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificacion_citas`
--

CREATE TABLE `notificacion_citas` (
  `id` int(11) NOT NULL,
  `mensaje` varchar(100) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `notificacion_citas`
--

INSERT INTO `notificacion_citas` (`id`, `mensaje`, `fecha`) VALUES
(1, 'Se registró una nueva cita', '2025-11-26 01:10:28'),
(2, 'Se registró una nueva cita', '2025-11-26 17:13:24'),
(3, 'Se registró una nueva cita', '2025-11-26 17:18:05'),
(4, 'Se registró una nueva cita', '2025-11-26 19:12:12'),
(5, 'Se registró una nueva cita', '2025-11-26 23:25:30'),
(6, 'Se registró una nueva cita', '2025-12-05 22:31:55'),
(7, 'Se registró una nueva cita', '2025-12-05 22:40:52'),
(8, 'Se registró una nueva cita', '2025-12-08 13:38:44'),
(9, 'Se registró una nueva cita', '2025-12-08 13:47:03'),
(10, 'Se registró una nueva cita', '2025-12-08 13:53:19'),
(11, 'Se registró una nueva cita', '2025-12-08 22:23:51'),
(12, 'Se registró una nueva cita', '2025-12-08 22:28:42'),
(13, 'Se registró una nueva cita', '2025-12-08 22:29:30'),
(14, 'Se registró una nueva cita', '2025-12-08 23:03:14'),
(15, 'Se registró una nueva cita', '2025-12-08 23:06:27'),
(16, 'Se registró una nueva cita', '2025-12-08 23:11:54'),
(17, 'Se registró una nueva cita', '2025-12-09 09:26:54'),
(18, 'Se registró una nueva cita', '2026-05-11 22:48:46'),
(19, 'Se registró una nueva cita', '2026-05-18 22:52:51'),
(20, 'Se registró una nueva cita', '2026-05-18 23:10:03'),
(21, 'Se registró una nueva cita', '2026-05-18 23:31:56'),
(22, 'Se registró una nueva cita', '2026-05-18 23:32:14'),
(23, 'Se registró una nueva cita', '2026-05-31 06:24:35'),
(24, 'Se registró una nueva cita', '2026-05-31 06:26:53'),
(25, 'Se registró una nueva cita', '2026-05-31 06:32:23'),
(26, 'Se registró una nueva cita', '2026-05-31 06:33:04'),
(27, 'Se registró una nueva cita', '2026-05-31 06:36:01'),
(28, 'Se registró una nueva cita', '2026-05-31 06:37:34'),
(29, 'Se registró una nueva cita', '2026-05-31 06:39:33'),
(30, 'Se registró una nueva cita', '2026-05-31 16:29:31'),
(31, 'Se registró una nueva cita', '2026-05-31 16:33:22'),
(32, 'Se registró una nueva cita', '2026-05-31 19:29:34'),
(33, 'Se registró una nueva cita', '2026-05-31 19:30:28'),
(34, 'Se registró una nueva cita', '2026-05-31 19:30:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `Id_Pacientes` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido_Paterno` varchar(100) NOT NULL,
  `Apellido_Materno` varchar(100) NOT NULL,
  `Fecha_Nac` date NOT NULL,
  `Sexo` enum('M','F','Otro') NOT NULL,
  `Telefono` varchar(50) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `Tipo_Seguro` enum('Privado','Aseguradora','Gobierno','Indigente','Ninguno') NOT NULL DEFAULT 'Ninguno',
  `Contacto_Emergencia_Nombre` varchar(150) NOT NULL,
  `Contacto_Emergencia_Telefono` varchar(150) NOT NULL,
  `Id_Cuenta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`Id_Pacientes`, `Nombre`, `Apellido_Paterno`, `Apellido_Materno`, `Fecha_Nac`, `Sexo`, `Telefono`, `Email`, `Tipo_Seguro`, `Contacto_Emergencia_Nombre`, `Contacto_Emergencia_Telefono`, `Id_Cuenta`) VALUES
(4, 'Oscar', 'Vargas', 'Garcia', '2025-11-07', 'M', '4941063060', 'oscarvaasdawdargar@outlook.es', 'Aseguradora', 'Coso', '4941063060', 49),
(5, 'Oscar', 'Garcia', 'Vargas', '2025-10-15', 'M', '4941063060', 'oscarvargaswfar@outlook.es', 'Gobierno', 'asdfawedawe', '4941063060', 53),
(6, 'asdawd', 'jdffsfdgsd', 'Vargas', '2025-11-02', 'F', '4941063060', 'asdawafsrgar@outlook.es', 'Privado', 'Oscar', '4941063060', 54),
(9, 'Oscar', 'Vargas', 'Garcia', '1997-04-08', 'M', '4941063060', 'oscarvargar@outlook.es', 'Gobierno', 'Jose', '0987654321', 60),
(10, 'Oscar', 'Vargas', 'Garcia', '1997-04-08', 'M', '4941003247', 'vargasgarciaoscar947@gmail.com', 'Gobierno', 'Pedro', '4921234567', 64),
(11, 'Kevin', 'Cano', 'Murillo', '2001-07-13', 'M', '1234956787', 'x@x.x', 'Aseguradora', 'asdfawedawe', '9876543210', 66),
(12, 'Oscar', 'Cano', 'Vargas', '1888-09-18', 'M', '4941063060', 'z@z.z', 'Privado', 'Coso', '4941063060', 67),
(13, 'Oscar', 'Vargas', 'Garcia', '1997-04-08', 'M', '4941003247', 'vargasgarciaoscar947@gmail.com', 'Privado', 'Juan', '4949423204', 64),
(14, 'Jorge', 'Sanchez', 'Sanchez', '2000-12-05', 'M', '1234567890', 'hu@ki.com', 'Gobierno', 'oscar', '0987654322', 108),
(15, 'Jorge', 'Sanches', 'Sanches', '2002-12-04', 'M', '0987654321', 'po@po.s', 'Gobierno', 'k', '1234567890', 109),
(16, 'Kevin', 'Cano', 'Murillo', '2001-06-08', 'M', '1234567890', 'Kevin@kevin.kevin', 'Privado', 'samuel', '0987654321', 113),
(17, 'Kamina', 'Sama', 'Dai', '2025-12-01', 'M', '0987654321', 'TTGL@TTGL.TTGL', 'Gobierno', 'Simon', '1234567890', 114),
(18, 'Lorgenome', 'Rey', 'Spiral', '2015-12-09', 'M', '1111111111', 'Spiral@Spiral.Spiral', 'Aseguradora', 'Viral', '4444444444', 115),
(19, 'Viral', 'Eterno', 'Rival', '2025-06-18', 'M', '0000000000', 'Enki@enki.enki', 'Aseguradora', 'Lord', '1234567890', 116),
(20, 'Juanito', 'Alcachofa', 'Gonzalez', '2011-02-23', 'M', '4941063060', 'prueba@oscar.com', 'Privado', 'Samuel', '1234567890', 118),
(21, 'Alonso', 'Vargas', 'Garcia', '2026-04-29', 'M', '4941063060', 'oscarvar@outlook.es', 'Gobierno', 'asdfawedawe', '4941063060', 0),
(22, 'Carlos', 'Vargas', 'Garcia', '2002-06-11', 'M', '4941063066', 'Prueba1@outlook.es', 'Gobierno', 'Oscar', '4941063060', 0),
(23, 'Carlos', 'Vargas', 'Garcia', '1994-08-08', 'M', '4941063060', 'Prueba2@prueba.com', 'Privado', 'Oscar', '4941063060', 0),
(24, 'CarlosII', 'Vargas', 'Garcia', '1995-02-01', 'M', '4941063060', 'Prueba3@prueba.com', 'Gobierno', 'Oscar', '4941063060', 0),
(25, 'Oscar', 'Vargas', 'Vargas', '1992-12-09', 'M', '4941063060', 'ts@ts.ts', 'Gobierno', 'asdfawedawe', '4941063061', 197),
(26, 'Oscar', 's', 'Vargas', '1994-10-12', 'M', '4941063060', 'k@k.kl', 'Privado', 'Juan', '4941063060', 199),
(27, 'Oscar', 'Vargas', 'Vargass', '2008-02-15', 'M', '4941063060', 'oscar@pruebas.com', 'Privado', 'asdfawedawe', '4941063067', 203),
(28, 'Oscar II', 'Vargas', 'Vargas', '2007-07-11', 'M', '4941063060', 'oscar@pruebas2.com', 'Privado', 'Carlos Manuel', '4941063042', 204),
(29, 'a', '1', '1', '2026-06-06', '', '1111111111', '1@1.1', 'Privado', 'a', '2222222222', 209),
(30, 'a', 'a', 'a', '2026-05-12', 'M', '4941063060', 'a1@a1.a1', 'Aseguradora', 'a', '4941063060', 212),
(31, 'b', 'b', 'b', '2026-05-03', 'M', '4941063060', 'b@b.b', 'Gobierno', 'a', '4941063060', 213),
(32, 't', 't', 't', '2026-05-14', 'M', '1234567898', 'aaa@aaa.aaa', 'Aseguradora', 'dasdjgd', '1234567899', 219),
(33, 'o', 'o', 'o', '2026-05-22', 'M', '1234567890', 'oo@oo.oo', 'Aseguradora', 'N', '0987654321', 220);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`Id_Citas`),
  ADD UNIQUE KEY `unique_paciente_horario` (`Pacientes_Id_Pacientes`,`Fecha`,`Hora`),
  ADD UNIQUE KEY `unique_medico_horario` (`Medicos_Id_Medicos`,`Fecha`,`Hora`),
  ADD UNIQUE KEY `unique_cita_completa` (`Pacientes_Id_Pacientes`,`Medicos_Id_Medicos`,`Fecha`,`Hora`),
  ADD KEY `fk_Citas_Pacientes` (`Pacientes_Id_Pacientes`),
  ADD KEY `fk_Citas_Medicos` (`Medicos_Id_Medicos`);

--
-- Indices de la tabla `medicos`
--
ALTER TABLE `medicos`
  ADD PRIMARY KEY (`Id_Medicos`);

--
-- Indices de la tabla `notificacion_citas`
--
ALTER TABLE `notificacion_citas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`Id_Pacientes`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `Id_Citas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `medicos`
--
ALTER TABLE `medicos`
  MODIFY `Id_Medicos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `notificacion_citas`
--
ALTER TABLE `notificacion_citas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `Id_Pacientes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `citas`
--
ALTER TABLE `citas`
  ADD CONSTRAINT `fk_Citas_Medicos` FOREIGN KEY (`Medicos_Id_Medicos`) REFERENCES `medicos` (`Id_Medicos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Citas_Pacientes` FOREIGN KEY (`Pacientes_Id_Pacientes`) REFERENCES `pacientes` (`Id_Pacientes`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
