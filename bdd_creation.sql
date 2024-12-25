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
  `resume` MEDIUMTEXT NULL DEFAULT NULL,
  `numero_tome` INTEGER NULL DEFAULT NULL,
  `path_to_image` VARCHAR(50) NULL DEFAULT NULL,
  `annee` INTEGER(4) NULL DEFAULT NULL,
  `genre` VARCHAR(50) NULL DEFAULT NULL,
  `nb_pages` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'auteur'
-- 
-- ---

DROP TABLE IF EXISTS `auteur`;
		
CREATE TABLE `auteur` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(50) NULL DEFAULT NULL,
  `prenom` VARCHAR(50) NULL DEFAULT NULL,
  `ddn` INTEGER(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'nationalite'
-- 
-- ---

DROP TABLE IF EXISTS `nationalite`;
		
CREATE TABLE `nationalite` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'link_nationalite'
-- 
-- ---

DROP TABLE IF EXISTS `link_nationalite`;
		
CREATE TABLE `link_nationalite` (
  `id_nationalite` INTEGER NOT NULL,
  `id_auteur` INTEGER NOT NULL,
  PRIMARY KEY (`id_nationalite`, `id_auteur`)
);

-- ---
-- Table 'link_auteur'
-- 
-- ---

DROP TABLE IF EXISTS `link_auteur`;
		
CREATE TABLE `link_auteur` (
  `id_bd` INTEGER NOT NULL,
  `id_auteur` INTEGER NOT NULL,
  PRIMARY KEY (`id_auteur`, `id_bd`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `link_nationalite` ADD FOREIGN KEY (id_nationalite) REFERENCES `nationalite` (`id`);
ALTER TABLE `link_nationalite` ADD FOREIGN KEY (id_auteur) REFERENCES `auteur` (`id`);
ALTER TABLE `link_auteur` ADD FOREIGN KEY (id_bd) REFERENCES `bd` (`id`);
ALTER TABLE `link_auteur` ADD FOREIGN KEY (id_auteur) REFERENCES `auteur` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `bd` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `auteur` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `nationalite` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `link_nationalite` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `link_auteur` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `bd` (`id`,`titre`,`resume`,`numero_tome`,`path_to_image`,`annee`,`genre`,`nb_pages`) VALUES
-- ('','','','','','','','');
-- INSERT INTO `auteur` (`id`,`nom`,`prenom`,`ddn`) VALUES
-- ('','','','');
-- INSERT INTO `nationalite` (`id`,`nom`) VALUES
-- ('','');
-- INSERT INTO `link_nationalite` (`id_nationalite`,`id_auteur`) VALUES
-- ('','');
-- INSERT INTO `link_auteur` (`id_bd`,`id_auteur`) VALUES
-- ('','');
