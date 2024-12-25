-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'bd'
-- 
-- ---

DROP TABLE IF EXISTS `bd`;
		
CREATE TABLE `bd` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `titre` VARCHAR(50) NULL DEFAULT NULL,
  `auteur` VARCHAR(50) NULL DEFAULT NULL,
  `resume` MEDIUMTEXT NULL DEFAULT NULL,
  `numero_tome` INTEGER NULL DEFAULT NULL,
  `annee` INTEGER(4) NULL DEFAULT NULL,
  `genre` VARCHAR(50) NULL DEFAULT NULL,
  `nb_pages` INTEGER NULL DEFAULT NULL,
  `path_to_image` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys 
-- ---


-- ---
-- Table Properties
-- ---

-- ALTER TABLE `bd` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `bd` (`id`,`titre`,`auteur`,`resume`,`numero_tome`,`annee`,`genre`,`nb_pages`,`path_to_image`) VALUES
-- ('','','','','','','','','');
