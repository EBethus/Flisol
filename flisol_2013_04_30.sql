-- 
-- Structure for table `anuncio`
-- 

DROP TABLE IF EXISTS `anuncio`;
CREATE TABLE IF NOT EXISTS `anuncio` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `contenido` varchar(500) NOT NULL,
  `usuario_id` int(10) unsigned NOT NULL,
  `creado_at` datetime DEFAULT NULL,
  `modificado_in` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- 
-- Data for table `anuncio`
-- 

INSERT INTO `anuncio` (`id`, `titulo`, `contenido`, `usuario_id`, `creado_at`, `modificado_in`) VALUES
  ('1', 'Primer Anuncio', 'KumbiaPHP es el mejor Framework', '1', '2013-04-21 23:27:05', NULL),
  ('2', 'Mi anuncio 2', 'Esta aplicación de Kumbia se hizo super fácil', '1', '2013-04-22 00:33:36', NULL),
  ('3', 'Tercer Anuncio', 'Alberto es un benio', '1', '2013-04-22 00:46:50', NULL);

-- 
-- Structure for table `usuario`
-- 

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `hash` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 
-- Data for table `usuario`
-- 

INSERT INTO `usuario` (`id`, `nombre`, `hash`) VALUES
  ('1', 'alberto', '337f3189cff69d766507df7ec1d07dc3b47c85db6a495c3d19753bac1eb75c08c7fc5f315a8144304b008d7b4f446f7fd373a09f3302473192d1a3274111ad62');

