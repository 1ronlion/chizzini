-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.20-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para mydb
/*CREATE DATABASE IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
/*USE `mydb`; */

-- Volcando estructura para tabla mydb.article
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `excerpt` varchar(600) NOT NULL,
  `content` varchar(3000) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla mydb.article: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` (`id`, `title`, `excerpt`, `content`, `photo`, `created_at`, `updated_at`, `user_id`) VALUES
	(3, 'El 95% de las trabajadoras judiciales sufrió violencia de género en el ámbito laboral', 'La información surge en base a una encuesta realizada durante los últimos tres meses por el grupo de mujeres a 267 empleadas, funcionarias y magistradas del Poder Judicial.', 'El sondeo arrojó que, en los casos en que la trabajadora agredida efectivizó una denuncia, reclamo o queja, el 59% no obtuvo respuesta institucional, en el 29% la víctima se vio perjudicada o fue trasladada y en el 12% de los casos el agresor fue sancionado o trasladado.', 'https://images.pexels.com/photos/4613878/pexels-photo-4613878.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', NULL, NULL, 1),
	(4, 'El Gobierno propone cambios en la Justicia para responder a la demanda social', 'Las iniciativas anunciadas por el Ejecutivo nacional buscan  producir reformas y garantizar procedimientos más transparentes en el Poder Judicial.', 'El presidente Alberto Fernández anunció el lunes 1º de marzo una serie de iniciativas para producir reformas y garantizar procedimientos más transparentes en el Poder Judicial, como la creación de un Tribunal Federal de Garantías, la reglamentación más estricta del artículo 280, que permite a la Corte Suprema rechazar un recurso extraordinario o de queja sin fundamentarlo por escrito, y cambios en el mecanismo de designación de jueces y el control de sus conductas.', 'https://images.pexels.com/photos/1000740/pexels-photo-1000740.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', NULL, NULL, 1),
	(5, 'Reglamentan la Ley de los 1000 Días para el cuidado integral de madres y niños', 'El Senado la había convirtido en ley en la madrugada del 30 de diciembre de 2020, minutos después de la histórica sanción del aborto legal en la Argentina.', 'Con la oficialización de la reglamentación de la Ley Nacional de Atención y Cuidado Integral de la Salud durante el Embarazo y la Primera Infancia, conocida también como de los 1000 días (ley 27611/2020), el Gobierno concreta así uno de sus compromisos fundamentales de campaña, junto a la también sancionada y reglamentada Ley de Interrupción Voluntaria del Embarazo (IVE).\r\n\r\nLa reglamentación fue publicada este sábado en el Boletín Oficial por medio del decreto 515/2021, firmado por el presidente Alberto Fernández; el jefe de Gabinete, Santiago Cafiero, y los ministros Carla Vizzotti (Salud), Elizabeth Gómez Alcorta (Mujeres, Géneros y Diversidad), Claudio Moroni (Trabajo) y Eduardo "Wado" De Pedro (Interior).\r\n\r\nEn el decreto se establece que "a los fines de garantizar el ejercicio de los derechos y el cumplimiento de las obligaciones establecidos" en la ley de los 1000 días "resulta necesario el diseño del modelo de atención y cuidado integral por parte de la Autoridad de Aplicación", que en este caso corresponde, al igual que en la ley IVE, al Ministerio de Salud.\r\n\r\nEl Plan de los 1000 Días estableceuna nueva asignación por Cuidado de Salud Integral\r\nEn ese sentido, el decreto también dispone que la cartera sanitaria -en tanto autoridad de aplicación- deberá "establecer las prestaciones que brindará el sistema, definir su cobertura y/o su inclusión en el Programa Médico Obligatorio", y que también tendrá que elaborar "un Plan Nacional de Implementación" con un cronograma público a cumplir.\r\n\r\nEn el anexo al decreto, suscripto por la secretaria de Acceso a la Salud, Sandra Tirado, se precisan montos y competencias para cumplir con los distintos artículos de la ley 27611/2020, que en uno de sus apartados fundamentales creó la Asignación por Cuidado de Salud Integral y la incorporó al Régimen de Asignaciones Familiares.\r\n\r\nEn este último caso, se trata de un pago una vez por año de "una suma a las personas por cada niño o niña menor de tres años que se encuentre a su cargo, siempre que hayan tenido derecho al cobro de la AUH para protección social dentro del año calendario, y acrediten el cumplimiento del plan de vacunación y control sanitario".\r\n\r\n\r\nLa aprobación\r\n\r\nEl Senado había convertido en ley, por unanimidad, el Plan de los 1000 Días de asistencia a niños y niñas en la madrugada del 30 de diciembre de 2020, minutos después de la histórica sanción del aborto legal en la Argentina.\r\n\r\nLa iniciativa fue debatida al finalizar la discusión por el proyecto de ley del aborto que también fue sancionado de manera definitiva, tras más de doce horas de discusión.', 'https://images.pexels.com/photos/57529/pexels-photo-57529.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', NULL, NULL, 1),
	(6, 'Cuáles son las pautas para aplicar la ley IVE reglamentada por el Gobierno', 'El decreto 516/2021, publicado este sábado en el Boletín Oficial, reglamenta la ley 27610 sancionada el 30 de diciembre de 2020.', 'El decreto 516/2021 publicado este sábado en el BO reglamenta la ley IVE 27610, sancionada el 30 de diciembre de 2020, y promulgada el 14 de enero de este año.\r\nEn tanto, el 28 de mayo último se publicó en el Boletín el Protocolo para la Atención Integral de las personas con derecho a la Interrupción Voluntaria y Legal del Embarazo adecuado a la normativa.\r\nCon estos antecedentes, sólo estaba pendiente la reglamentación que respalda el Protocolo y establece "la responsabilidad institucional" para garantizar el acceso a la IVE hasta la semana 14 de gestación, y a la Interrupción legal del embarazo (ILE) por causales: peligro para la vida, para la salud de la mujer o violación.\r\nDe esta manera se garantiza el derecho a las mujeres y personas con otras identidades de género con capacidad de gestar en todo el territorio de la Argentina "en condiciones de igualdad".\r\nPor lo tanto el sector público de la salud, las obras sociales, las entidades de medicina prepaga "tienen responsabilidades y obligaciones" para garantizar el acceso a la interrupción del embarazo y la atención posaborto.\r\nPara cumplirlas, deben asegurar los recursos, mecanismos y personal de salud adecuado para su realización.\r\nEn cuanto al acceso a la interrupción del embarazo de personas con capacidad restringida la reglamentación señala que "estas limitaciones son excepcionales y expresamente establecidas".\r\nCuando la persona hubiera sido declarada incapaz judicialmente para este tipo de actos deberá implementar el sistema de apoyo que haya sido designado judicialmente, o a falta o ausencia de esta, la de una persona allegada, en los términos del artículo 59 del Código Civil y Comercial de la Nación, detalla el decreto.\r\nAl referirse a la objeción de conciencia deja en claro que el personal de salud "no podrá negarse" a la realización de la interrupción del embarazo en caso de emergencia, cuando la práctica deba realizarse en forma urgente "pues su no realización inmediata pondría en riesgo la salud física o la vida" de la persona gestante.\r\nAsimismo, el reglamento de la ley IVE indica que el Ministerio de Salud de la Nación y los ministerios provinciales y de la Ciudad Autónoma de Buenos Aires deberán definir indicadores "que permitan evaluar la consecución" de los programas de capacitación.\r\n\r\n', 'https://www.ibericonnect.blog/wp-content/uploads/2021/01/Copy-of-Bright-Header-Red-Three-Panel-Storyboard-3.png', NULL, NULL, 1),
	(7, 'El Gobierno bonaerense reabrió las paritarias con los gremios docentes', 'La reapertura de la paritaria salarial docente fue convocada por el Ministerio de Trabajo de la provincia de Buenos Aires para cumplir con lo acordado en la última reunión realizada el 13 de julio y de la que había participado el gobernador Axel Kicillof.', 'El Gobierno bonaerense reabrió este viernes la paritaria con el Frente Unidad Docente Bonaerense (FUDB), que reiteró la necesidad de recuperar el poder adquisitivo de los maestros y mantener la diferencia en la pauta salarial por arriba del índice inflacionario.\r\n\r\nLa reapertura de la paritaria salarial docente fue convocada por el Ministerio de Trabajo de la provincia de Buenos Aires para cumplir con lo acordado en la última reunión realizada el 13 de julio y de la que había participado el gobernador Axel Kicillof.\r\n\r\nDurante la apertura de la reunión de este viernes el ministro de Hacienda, Pablo López, destacó que en el inicio del diálogo paritario en febrero pasado el Gobierno provincial y gremios docentes "pudieron alcanzar un acuerdo que implicó un aumento en tres tramos, en marzo, julio y septiembre".\r\n\r\n"También asumimos el compromiso de continuar monitoreando la evolución salarial, lo que nos llevó, a partir del diálogo mantenido con los diversos sectores, a revisar el incremento pautado a principio de año", precisó el funcionario.\r\n\r\nPor ello, en julio "se decidió otorgar un adelanto salarial, y reabrir en agosto el diálogo paritario para discutir la pauta salarial para lo que resta de 2021, que es lo que estamos haciendo, reafirmando el compromiso con la mejora en las condiciones laborales de las y los trabajadores de la provincia", agregó.\r\n\r\nLa ministra de Trabajo, Mara Ruiz Malec, aseguró que se analiza "lo logrado hasta acá, las perspectivas para lo que queda del año y las estructuras" de los temas a discutir "en las próximas semanas para poder lograr una conformidad lo más pronto posible", y poder "afectar así los salarios a los beneficios acordados".\r\n\r\nEn tanto, el FUDB destacó en un comunicado el buen diálogo con las autoridades provinciales, e informó que se acordó "seguir avanzando en la calidad del salario teniendo en cuenta en su conformación el básico porque impacta en la escala salarial, así como la resolución de inequidades pendientes".\r\n\r\nTambién se mencionó la necesidad de la "resolución de la negociación salarial en la paritaria nacional docente, en virtud del impacto que la misma tiene sobre nuestros salarios".\r\n\r\n"La representación del Gobierno provincial, tomando los reclamos planteados, se comprometió a una próxima convocatoria para avanzar en una propuesta", consignaron en un comunicado.\r\n\r\nEl acuerdo original firmado a principio de año con los docentes contemplaba un 14,1% en marzo, un 7,9% en julio y un 13,2% en septiembre, con una reapertura en noviembre.\r\n\r\nPero, el 13 de julio pasado, el gobernador Axel Kicillof decidió adelantar 8 puntos de la última cuota para julio y reabrir la discusión en agosto.', 'https://px.cdn.lanueva.com/022020/1582647681047.webp?&extw=jpg', NULL, NULL, 1),
	(8, '¿Cómo evitar un robo de identidad en Internet?', 'Cada vez, ocurren más casos de robo de identidad en internet. Existen peligros como virus, ataques y hurtos de nuestros datos personales que permiten que los delincuentes accedan a nuestras cuentas bancarias.\r\n\r\nLiderman te brinda recomendaciones para proteger tu valiosa información, a través de los siguientes tips', 'Contraseñas: Aunque te parezca algo complicado, prueba tener contraseñas diferentes en tus cuentas. Trata de ser creativa usando combinaciones de números y letras. No olvides cambiarlos de vez en cuando.\r\nInformación personal: No des tus datos a cualquier Web que te lo pida. Pregúntate si esta es confiable primero. Un ejemplo muy claro de un caso de este tipo, es cuando las personas suelen ingresar su Currículum Vitae en cualquier página de ofertas laborales. Recuerda que no sabes quién accederá a tus datos ni qué uso les pueda dar.\r\nRealiza análisis constantes para ver se hay virus o malware: Estos programas informáticos se dedican a robar tus claves, prevenirlo sólo te toma unos minutos. Pon en funcionamiento el antivirus con el que cuentes o compra uno, los hay para diversos presupuestos y necesidades.\r\nFuga de tus datos: Para conocer eso, simplemente entra a buscadores como Google y Bing y dale una ojeada a los resultados. Si ves algo fuera de lo común (tus datos en una web desconocida para ti), trata de comunicarte con la administración de ese sitio.\r\n¡Felicidades, has ganado un premio!: Seguramente has recibido este mensaje en más de una ocasión, no lo creas, ya que al momento de reclamar tú “premio”, el atacante te solicita datos personales. Ahí está el robo de tu identidad.\r\nAsegúrate que tu conexión sea segura: Cambiar la contraseña del router que trae por defecto, es una manera de asegurar tu conexión. Existen personas que se dedican a introducirse en tu red y así robar tu información.\r\nTus fotos publicadas en redes sociales pueden caer en manos ajenas que podrían darles un mal uso. Para evitar eso, puedes hacer una búsqueda simple de tu fotografía en Google. Solo arrastra tu imagen a la barra de buscador.\r\nNo hables con extraños: Desde niños nos dijeron esto, pero es importante en la etapa adulta también lo tengamos presente, especialmente cuando se trata de personas que están en línea y nos preguntan datos personales.\r\nTen cuidado con las páginas de compra/venta y subastas: Si eres aficionado a las compras por internet, los atacantes pueden robar tu cuenta de usuario y estafarte económicamente, haciéndote creer que existen problemas en tu cuenta, que se han detectado movimientos sospechosos o que se actualizaron las condiciones del uso de servicio.\r\nCuida mucho la manera en que realizas pagos en línea:Ten cuidado al realizar pagos en línea, ya que el atacante es hábil al engañar al usuario, inventando por ejemplo, que se requiere un cambio en la normatividad del servicio, que su sesión se cerró de forma incorrecta, que son necesaria algunas mejoras en las medidas de seguridad, fue detectado un intruso en el sistema de seguridad, etc.', 'https://images.pexels.com/photos/3861969/pexels-photo-3861969.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', NULL, NULL, 1);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;

-- Volcando estructura para tabla mydb.expertise
CREATE TABLE IF NOT EXISTS `expertise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(33) NOT NULL,
  `excerpt` varchar(200) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `content` varchar(3000) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla mydb.expertise: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `expertise` DISABLE KEYS */;
INSERT INTO `expertise` (`id`, `category`, `excerpt`, `photo`, `content`, `created_at`, `updated_at`, `user_id`) VALUES
	(4, 'Derecho Laboral', 'Nos ocupamos de todos sus reclamos por despido, trabajo no registrado, diferencias salariales, sanciones, accidentes de trabajo, abusos e incumplimientos del empleador y de la ART.', 'https://images.pexels.com/photos/162534/grinder-hitachi-power-tool-flexible-162534.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', '', NULL, NULL, 1),
	(5, 'Derecho Familiar', 'Brindamos una asesoramiento apropiado integral en sucesiones y testamentos. Nuestro asesoramiento incluye todos los pasos desde de la tramitación de los partidos hasta la finalización del proceso.', 'https://images.pexels.com/photos/173666/pexels-photo-173666.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', '', NULL, NULL, 1),
	(6, 'Sucesiones', 'Nuestra amplia experiencia en sucesiones nos permite llevar adelante los procesos con la mayor celeridad, evitando demoras y asegurando a nuestros clientes que se conseguirá la finalización del trámit', 'https://images.pexels.com/photos/4917095/pexels-photo-4917095.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', '', NULL, NULL, 1),
	(7, 'Accidentes de tránsito', 'Te ayudamos a cobrar la mejor indemnización posible por los daños, lesiones o siniestros que sufriste vos o los tuyos en el menor tiempo posible.', 'https://images.pexels.com/photos/5835355/pexels-photo-5835355.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', '', NULL, NULL, 1),
	(8, 'Amparos de salud', 'realizamos amparos de salud para obtener la cobertura del 100% en la provisión de medicación oncológica.', 'https://images.pexels.com/photos/40568/medical-appointment-doctor-healthcare-40568.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', '', NULL, NULL, 1),
	(9, 'Mediaciones', 'Contamos con un sólido equipo integrado por abogados y asistentes paralegales que están dedicados en forma exclusiva a la atención de trámites de mediación previa obligatoria', 'https://images.pexels.com/photos/2058130/pexels-photo-2058130.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', '', NULL, NULL, 1);
/*!40000 ALTER TABLE `expertise` ENABLE KEYS */;

-- Volcando estructura para tabla mydb.team
CREATE TABLE IF NOT EXISTS `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `excerpt` varchar(100) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(50) NOT NULL,
  `linkedin` varchar(50) NOT NULL,
  `content` varchar(3000) NOT NULL,
  `photo` varchar(450) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla mydb.team: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` (`id`, `excerpt`, `name`, `email`, `linkedin`, `content`, `photo`, `created_at`, `updated_at`, `user_id`) VALUES
	(3, 'Abogada especialista en divorcios', 'Holly P. Miceli', 'miceli@chizzini.com', 'miceli', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur neque lorem, ac sodales tortor semper tincidunt. Pellentesque sollicitudin consectetur diam, et faucibus tellus auctor porta. Proin tincidunt mauris eget mauris rutrum lobortis. Etiam ultricies risus a ullamcorper ultrices. Curabitur rhoncus rutrum porta. Pellentesque cursus tincidunt ipsum et dictum. Aliquam sed commodo justo. In id nisi eu ligula venenatis accumsan et vel sem. Nulla venenatis sollicitudin erat vel ullamcorper. Maecenas leo augue, dictum ut viverra pellentesque, maximus ac urna. Vestibulum turpis mi, consequat non consequat ac, ultricies et turpis. Duis eu porta enim.\r\n\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi semper tristique ipsum, id semper augue scelerisque non. Nunc risus ligula, ornare nec cursus in, varius a quam. Fusce vehicula urna quis dapibus egestas. Quisque accumsan dui laoreet vehicula ultrices. Praesent eu diam auctor, pulvinar velit laoreet, fermentum lectus. Cras eget nulla vel lorem tempor cursus vel non turpis. Sed a aliquam ipsum.\r\n\r\nDuis lacinia metus in libero dignissim, a mollis augue viverra. Nullam eget faucibus augue. Quisque a erat suscipit, commodo orci ac, porttitor libero. Nunc id augue eu odio sollicitudin fermentum condimentum at erat. Suspendisse justo sapien, mollis sed quam ac, viverra molestie nibh. Mauris sit amet lorem fringilla, tempor massa id, bibendum enim. Suspendisse dignissim tortor ac dolor mattis convallis. Phasellus tempor ac lacus et dignissim. Quisque interdum tristique elit, a finibus magna finibus nec. Nulla molestie, diam sit amet iaculis scelerisque, dui turpis convallis augue, ac rutrum ante magna a orci.\r\n\r\nProin vitae felis eu elit elementum efficitur. Nulla euismod vitae nulla id malesuada. Maecenas finibus ante magna, vel viverra magna rutrum sit amet. Curabitur id libero lorem. In maximus magna sed ipsum commodo, at viverra felis faucibus. Nam et sollicitudin orci. Suspendisse ut risus at augue scelerisque volutpat sed nec orci. Phasellus non leo nec odio molestie volutpat. Aenean porta lectus ac sem hendrerit rutrum. Nullam quis cursus tellus, ac consectetur lacus.\r\n\r\nMaecenas a sagittis justo. Phasellus ut dui nunc. Suspendisse quam est, condimentum id arcu non, mattis condimentum urna. Proin quis arcu lectus. Etiam venenatis nibh eu ligula hendrerit sollicitudin. Nunc sagittis iaculis velit ac malesuada. Cras vitae pulvinar libero. Proin suscipit nisi sem, id tristique odio varius quis. Nulla posuere orci eget dui dictum luctus. Curabitur aliquet nisi mauris, non ultricies lectus molestie in. Morbi in leo ac velit scelerisque egestas eu ut urna. Maecenas gravida, arcu iaculis ullamcorper hendrerit, metus urna pulvinar nunc, ut vulputate ligula mauris sed purus. Phasellus sollicitudin massa vel vehicula placerat. Etiam id mollis risus. Donec in erat auctor, sagittis mauris ac, iaculis nunc. Sed id ipsum magna.', 'https://images.pexels.com/photos/4427622/pexels-photo-4427622.jpeg?cs=srgb&dl=pexels-august-de-richelieu-4427622.jpg&fm=jpg', NULL, NULL, 1),
	(4, 'Abogado especialista en sucesiones', 'Steven Young', 'young@chizzini.com', 'young', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur neque lorem, ac sodales tortor semper tincidunt. Pellentesque sollicitudin consectetur diam, et faucibus tellus auctor porta. Proin tincidunt mauris eget mauris rutrum lobortis. Etiam ultricies risus a ullamcorper ultrices. Curabitur rhoncus rutrum porta. Pellentesque cursus tincidunt ipsum et dictum. Aliquam sed commodo justo. In id nisi eu ligula venenatis accumsan et vel sem. Nulla venenatis sollicitudin erat vel ullamcorper. Maecenas leo augue, dictum ut viverra pellentesque, maximus ac urna. Vestibulum turpis mi, consequat non consequat ac, ultricies et turpis. Duis eu porta enim.\r\n\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi semper tristique ipsum, id semper augue scelerisque non. Nunc risus ligula, ornare nec cursus in, varius a quam. Fusce vehicula urna quis dapibus egestas. Quisque accumsan dui laoreet vehicula ultrices. Praesent eu diam auctor, pulvinar velit laoreet, fermentum lectus. Cras eget nulla vel lorem tempor cursus vel non turpis. Sed a aliquam ipsum.\r\n\r\nDuis lacinia metus in libero dignissim, a mollis augue viverra. Nullam eget faucibus augue. Quisque a erat suscipit, commodo orci ac, porttitor libero. Nunc id augue eu odio sollicitudin fermentum condimentum at erat. Suspendisse justo sapien, mollis sed quam ac, viverra molestie nibh. Mauris sit amet lorem fringilla, tempor massa id, bibendum enim. Suspendisse dignissim tortor ac dolor mattis convallis. Phasellus tempor ac lacus et dignissim. Quisque interdum tristique elit, a finibus magna finibus nec. Nulla molestie, diam sit amet iaculis scelerisque, dui turpis convallis augue, ac rutrum ante magna a orci.\r\n\r\nProin vitae felis eu elit elementum efficitur. Nulla euismod vitae nulla id malesuada. Maecenas finibus ante magna, vel viverra magna rutrum sit amet. Curabitur id libero lorem. In maximus magna sed ipsum commodo, at viverra felis faucibus. Nam et sollicitudin orci. Suspendisse ut risus at augue scelerisque volutpat sed nec orci. Phasellus non leo nec odio molestie volutpat. Aenean porta lectus ac sem hendrerit rutrum. Nullam quis cursus tellus, ac consectetur lacus.\r\n\r\nMaecenas a sagittis justo. Phasellus ut dui nunc. Suspendisse quam est, condimentum id arcu non, mattis condimentum urna. Proin quis arcu lectus. Etiam venenatis nibh eu ligula hendrerit sollicitudin. Nunc sagittis iaculis velit ac malesuada. Cras vitae pulvinar libero. Proin suscipit nisi sem, id tristique odio varius quis. Nulla posuere orci eget dui dictum luctus. Curabitur aliquet nisi mauris, non ultricies lectus molestie in. Morbi in leo ac velit scelerisque egestas eu ut urna. Maecenas gravida, arcu iaculis ullamcorper hendrerit, metus urna pulvinar nunc, ut vulputate ligula mauris sed purus. Phasellus sollicitudin massa vel vehicula placerat. Etiam id mollis risus. Donec in erat auctor, sagittis mauris ac, iaculis nunc. Sed id ipsum magna.', 'https://images.pexels.com/photos/532220/pexels-photo-532220.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', NULL, NULL, 1),
	(5, 'Abogado especialista en mediaciones', 'Gregory J. Turner', 'turner@chizzini.com', 'turner', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur neque lorem, ac sodales tortor semper tincidunt. Pellentesque sollicitudin consectetur diam, et faucibus tellus auctor porta. Proin tincidunt mauris eget mauris rutrum lobortis. Etiam ultricies risus a ullamcorper ultrices. Curabitur rhoncus rutrum porta. Pellentesque cursus tincidunt ipsum et dictum. Aliquam sed commodo justo. In id nisi eu ligula venenatis accumsan et vel sem. Nulla venenatis sollicitudin erat vel ullamcorper. Maecenas leo augue, dictum ut viverra pellentesque, maximus ac urna. Vestibulum turpis mi, consequat non consequat ac, ultricies et turpis. Duis eu porta enim.\r\n\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi semper tristique ipsum, id semper augue scelerisque non. Nunc risus ligula, ornare nec cursus in, varius a quam. Fusce vehicula urna quis dapibus egestas. Quisque accumsan dui laoreet vehicula ultrices. Praesent eu diam auctor, pulvinar velit laoreet, fermentum lectus. Cras eget nulla vel lorem tempor cursus vel non turpis. Sed a aliquam ipsum.\r\n\r\nDuis lacinia metus in libero dignissim, a mollis augue viverra. Nullam eget faucibus augue. Quisque a erat suscipit, commodo orci ac, porttitor libero. Nunc id augue eu odio sollicitudin fermentum condimentum at erat. Suspendisse justo sapien, mollis sed quam ac, viverra molestie nibh. Mauris sit amet lorem fringilla, tempor massa id, bibendum enim. Suspendisse dignissim tortor ac dolor mattis convallis. Phasellus tempor ac lacus et dignissim. Quisque interdum tristique elit, a finibus magna finibus nec. Nulla molestie, diam sit amet iaculis scelerisque, dui turpis convallis augue, ac rutrum ante magna a orci.\r\n\r\nProin vitae felis eu elit elementum efficitur. Nulla euismod vitae nulla id malesuada. Maecenas finibus ante magna, vel viverra magna rutrum sit amet. Curabitur id libero lorem. In maximus magna sed ipsum commodo, at viverra felis faucibus. Nam et sollicitudin orci. Suspendisse ut risus at augue scelerisque volutpat sed nec orci. Phasellus non leo nec odio molestie volutpat. Aenean porta lectus ac sem hendrerit rutrum. Nullam quis cursus tellus, ac consectetur lacus.\r\n\r\nMaecenas a sagittis justo. Phasellus ut dui nunc. Suspendisse quam est, condimentum id arcu non, mattis condimentum urna. Proin quis arcu lectus. Etiam venenatis nibh eu ligula hendrerit sollicitudin. Nunc sagittis iaculis velit ac malesuada. Cras vitae pulvinar libero. Proin suscipit nisi sem, id tristique odio varius quis. Nulla posuere orci eget dui dictum luctus. Curabitur aliquet nisi mauris, non ultricies lectus molestie in. Morbi in leo ac velit scelerisque egestas eu ut urna. Maecenas gravida, arcu iaculis ullamcorper hendrerit, metus urna pulvinar nunc, ut vulputate ligula mauris sed purus. Phasellus sollicitudin massa vel vehicula placerat. Etiam id mollis risus. Donec in erat auctor, sagittis mauris ac, iaculis nunc. Sed id ipsum magna.', 'https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?cs=srgb&dl=pexels-chloe-1043474.jpg&fm=jpg', NULL, NULL, 1),
	(6, 'Abogado especialista en derecho laboral', 'Bogdan Zhirov', 'zhirov@chizzini.com', 'zhirov', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur neque lorem, ac sodales tortor semper tincidunt. Pellentesque sollicitudin consectetur diam, et faucibus tellus auctor porta. Proin tincidunt mauris eget mauris rutrum lobortis. Etiam ultricies risus a ullamcorper ultrices. Curabitur rhoncus rutrum porta. Pellentesque cursus tincidunt ipsum et dictum. Aliquam sed commodo justo. In id nisi eu ligula venenatis accumsan et vel sem. Nulla venenatis sollicitudin erat vel ullamcorper. Maecenas leo augue, dictum ut viverra pellentesque, maximus ac urna. Vestibulum turpis mi, consequat non consequat ac, ultricies et turpis. Duis eu porta enim.\r\n\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi semper tristique ipsum, id semper augue scelerisque non. Nunc risus ligula, ornare nec cursus in, varius a quam. Fusce vehicula urna quis dapibus egestas. Quisque accumsan dui laoreet vehicula ultrices. Praesent eu diam auctor, pulvinar velit laoreet, fermentum lectus. Cras eget nulla vel lorem tempor cursus vel non turpis. Sed a aliquam ipsum.\r\n\r\nDuis lacinia metus in libero dignissim, a mollis augue viverra. Nullam eget faucibus augue. Quisque a erat suscipit, commodo orci ac, porttitor libero. Nunc id augue eu odio sollicitudin fermentum condimentum at erat. Suspendisse justo sapien, mollis sed quam ac, viverra molestie nibh. Mauris sit amet lorem fringilla, tempor massa id, bibendum enim. Suspendisse dignissim tortor ac dolor mattis convallis. Phasellus tempor ac lacus et dignissim. Quisque interdum tristique elit, a finibus magna finibus nec. Nulla molestie, diam sit amet iaculis scelerisque, dui turpis convallis augue, ac rutrum ante magna a orci.\r\n\r\nProin vitae felis eu elit elementum efficitur. Nulla euismod vitae nulla id malesuada. Maecenas finibus ante magna, vel viverra magna rutrum sit amet. Curabitur id libero lorem. In maximus magna sed ipsum commodo, at viverra felis faucibus. Nam et sollicitudin orci. Suspendisse ut risus at augue scelerisque volutpat sed nec orci. Phasellus non leo nec odio molestie volutpat. Aenean porta lectus ac sem hendrerit rutrum. Nullam quis cursus tellus, ac consectetur lacus.\r\n\r\nMaecenas a sagittis justo. Phasellus ut dui nunc. Suspendisse quam est, condimentum id arcu non, mattis condimentum urna. Proin quis arcu lectus. Etiam venenatis nibh eu ligula hendrerit sollicitudin. Nunc sagittis iaculis velit ac malesuada. Cras vitae pulvinar libero. Proin suscipit nisi sem, id tristique odio varius quis. Nulla posuere orci eget dui dictum luctus. Curabitur aliquet nisi mauris, non ultricies lectus molestie in. Morbi in leo ac velit scelerisque egestas eu ut urna. Maecenas gravida, arcu iaculis ullamcorper hendrerit, metus urna pulvinar nunc, ut vulputate ligula mauris sed purus. Phasellus sollicitudin massa vel vehicula placerat. Etiam id mollis risus. Donec in erat auctor, sagittis mauris ac, iaculis nunc. Sed id ipsum magna.', 'https://images.pexels.com/photos/3778527/pexels-photo-3778527.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', NULL, NULL, 1),
	(7, 'Abogado especialista en amparos de salud', 'Eddie Ortiz', 'ortiz@chizzini.com', 'ortiz', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur neque lorem, ac sodales tortor semper tincidunt. Pellentesque sollicitudin consectetur diam, et faucibus tellus auctor porta. Proin tincidunt mauris eget mauris rutrum lobortis. Etiam ultricies risus a ullamcorper ultrices. Curabitur rhoncus rutrum porta. Pellentesque cursus tincidunt ipsum et dictum. Aliquam sed commodo justo. In id nisi eu ligula venenatis accumsan et vel sem. Nulla venenatis sollicitudin erat vel ullamcorper. Maecenas leo augue, dictum ut viverra pellentesque, maximus ac urna. Vestibulum turpis mi, consequat non consequat ac, ultricies et turpis. Duis eu porta enim.\r\n\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi semper tristique ipsum, id semper augue scelerisque non. Nunc risus ligula, ornare nec cursus in, varius a quam. Fusce vehicula urna quis dapibus egestas. Quisque accumsan dui laoreet vehicula ultrices. Praesent eu diam auctor, pulvinar velit laoreet, fermentum lectus. Cras eget nulla vel lorem tempor cursus vel non turpis. Sed a aliquam ipsum.\r\n\r\nDuis lacinia metus in libero dignissim, a mollis augue viverra. Nullam eget faucibus augue. Quisque a erat suscipit, commodo orci ac, porttitor libero. Nunc id augue eu odio sollicitudin fermentum condimentum at erat. Suspendisse justo sapien, mollis sed quam ac, viverra molestie nibh. Mauris sit amet lorem fringilla, tempor massa id, bibendum enim. Suspendisse dignissim tortor ac dolor mattis convallis. Phasellus tempor ac lacus et dignissim. Quisque interdum tristique elit, a finibus magna finibus nec. Nulla molestie, diam sit amet iaculis scelerisque, dui turpis convallis augue, ac rutrum ante magna a orci.\r\n\r\nProin vitae felis eu elit elementum efficitur. Nulla euismod vitae nulla id malesuada. Maecenas finibus ante magna, vel viverra magna rutrum sit amet. Curabitur id libero lorem. In maximus magna sed ipsum commodo, at viverra felis faucibus. Nam et sollicitudin orci. Suspendisse ut risus at augue scelerisque volutpat sed nec orci. Phasellus non leo nec odio molestie volutpat. Aenean porta lectus ac sem hendrerit rutrum. Nullam quis cursus tellus, ac consectetur lacus.\r\n\r\nMaecenas a sagittis justo. Phasellus ut dui nunc. Suspendisse quam est, condimentum id arcu non, mattis condimentum urna. Proin quis arcu lectus. Etiam venenatis nibh eu ligula hendrerit sollicitudin. Nunc sagittis iaculis velit ac malesuada. Cras vitae pulvinar libero. Proin suscipit nisi sem, id tristique odio varius quis. Nulla posuere orci eget dui dictum luctus. Curabitur aliquet nisi mauris, non ultricies lectus molestie in. Morbi in leo ac velit scelerisque egestas eu ut urna. Maecenas gravida, arcu iaculis ullamcorper hendrerit, metus urna pulvinar nunc, ut vulputate ligula mauris sed purus. Phasellus sollicitudin massa vel vehicula placerat. Etiam id mollis risus. Donec in erat auctor, sagittis mauris ac, iaculis nunc. Sed id ipsum magna.', 'https://images.pexels.com/photos/5668774/pexels-photo-5668774.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', NULL, NULL, 1),
	(8, 'Abogada especialista en derecho familiar', 'Terry White', 'white@chizzini.com', 'white', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur neque lorem, ac sodales tortor semper tincidunt. Pellentesque sollicitudin consectetur diam, et faucibus tellus auctor porta. Proin tincidunt mauris eget mauris rutrum lobortis. Etiam ultricies risus a ullamcorper ultrices. Curabitur rhoncus rutrum porta. Pellentesque cursus tincidunt ipsum et dictum. Aliquam sed commodo justo. In id nisi eu ligula venenatis accumsan et vel sem. Nulla venenatis sollicitudin erat vel ullamcorper. Maecenas leo augue, dictum ut viverra pellentesque, maximus ac urna. Vestibulum turpis mi, consequat non consequat ac, ultricies et turpis. Duis eu porta enim.\r\n\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi semper tristique ipsum, id semper augue scelerisque non. Nunc risus ligula, ornare nec cursus in, varius a quam. Fusce vehicula urna quis dapibus egestas. Quisque accumsan dui laoreet vehicula ultrices. Praesent eu diam auctor, pulvinar velit laoreet, fermentum lectus. Cras eget nulla vel lorem tempor cursus vel non turpis. Sed a aliquam ipsum.\r\n\r\nDuis lacinia metus in libero dignissim, a mollis augue viverra. Nullam eget faucibus augue. Quisque a erat suscipit, commodo orci ac, porttitor libero. Nunc id augue eu odio sollicitudin fermentum condimentum at erat. Suspendisse justo sapien, mollis sed quam ac, viverra molestie nibh. Mauris sit amet lorem fringilla, tempor massa id, bibendum enim. Suspendisse dignissim tortor ac dolor mattis convallis. Phasellus tempor ac lacus et dignissim. Quisque interdum tristique elit, a finibus magna finibus nec. Nulla molestie, diam sit amet iaculis scelerisque, dui turpis convallis augue, ac rutrum ante magna a orci.\r\n\r\nProin vitae felis eu elit elementum efficitur. Nulla euismod vitae nulla id malesuada. Maecenas finibus ante magna, vel viverra magna rutrum sit amet. Curabitur id libero lorem. In maximus magna sed ipsum commodo, at viverra felis faucibus. Nam et sollicitudin orci. Suspendisse ut risus at augue scelerisque volutpat sed nec orci. Phasellus non leo nec odio molestie volutpat. Aenean porta lectus ac sem hendrerit rutrum. Nullam quis cursus tellus, ac consectetur lacus.\r\n\r\nMaecenas a sagittis justo. Phasellus ut dui nunc. Suspendisse quam est, condimentum id arcu non, mattis condimentum urna. Proin quis arcu lectus. Etiam venenatis nibh eu ligula hendrerit sollicitudin. Nunc sagittis iaculis velit ac malesuada. Cras vitae pulvinar libero. Proin suscipit nisi sem, id tristique odio varius quis. Nulla posuere orci eget dui dictum luctus. Curabitur aliquet nisi mauris, non ultricies lectus molestie in. Morbi in leo ac velit scelerisque egestas eu ut urna. Maecenas gravida, arcu iaculis ullamcorper hendrerit, metus urna pulvinar nunc, ut vulputate ligula mauris sed purus. Phasellus sollicitudin massa vel vehicula placerat. Etiam id mollis risus. Donec in erat auctor, sagittis mauris ac, iaculis nunc. Sed id ipsum magna.', 'https://images.pexels.com/photos/7680207/pexels-photo-7680207.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', NULL, NULL, 1);
/*!40000 ALTER TABLE `team` ENABLE KEYS */;

-- Volcando estructura para tabla mydb.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla mydb.user: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
