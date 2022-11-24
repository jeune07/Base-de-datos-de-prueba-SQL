-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema playGround
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema playGround
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `playGround` DEFAULT CHARACTER SET utf8 ;
USE `playGround` ;

-- -----------------------------------------------------
-- Table `playGround`.`categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `playGround`.`categoria` (
  `idcategoria` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`idcategoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `playGround`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `playGround`.`usuario` (
  `idusuario` INT NOT NULL AUTO_INCREMENT,
  `mail` VARCHAR(45) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `contrasena` VARCHAR(1000) NOT NULL,
  `categoria_idcategoria` INT NOT NULL,
  PRIMARY KEY (`idusuario`, `categoria_idcategoria`),
  INDEX `fk_usuario_categoria_idx` (`categoria_idcategoria` ASC) VISIBLE,
  CONSTRAINT `fk_usuario_categoria`
    FOREIGN KEY (`categoria_idcategoria`)
    REFERENCES `playGround`.`categoria` (`idcategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `playGround`.`carrera`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `playGround`.`carrera` (
  `idCarrera` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(200) NOT NULL,
  `fechaInicio` DATE NOT NULL,
  `fechaFinal` DATE NOT NULL,
  `usuario_idusuario` INT NOT NULL,
  PRIMARY KEY (`idCarrera`, `usuario_idusuario`),
  INDEX `fk_carrera_usuario1_idx` (`usuario_idusuario` ASC) VISIBLE,
  CONSTRAINT `fk_carrera_usuario1`
    FOREIGN KEY (`usuario_idusuario`)
    REFERENCES `playGround`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `playGround`.`materia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `playGround`.`materia` (
  `idMateria` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(200) NOT NULL,
  `description` TINYTEXT NULL,
  `imagen` VARCHAR(200) NULL,
  `fechaDeInicio` DATE NOT NULL,
  `fechaDeFin` DATE NOT NULL,
  PRIMARY KEY (`idMateria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `playGround`.`carreraMateria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `playGround`.`carreraMateria` (
  `idcarreraMateria` INT NOT NULL AUTO_INCREMENT,
  `materia_idMateria` INT NOT NULL,
  `carrera_idCarrera` INT NOT NULL,
  PRIMARY KEY (`idcarreraMateria`),
  INDEX `fk_carreraMateria_materia1_idx` (`materia_idMateria` ASC) VISIBLE,
  INDEX `fk_carreraMateria_carrera1_idx` (`carrera_idCarrera` ASC) VISIBLE,
  CONSTRAINT `fk_carreraMateria_materia1`
    FOREIGN KEY (`materia_idMateria`)
    REFERENCES `playGround`.`materia` (`idMateria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_carreraMateria_carrera1`
    FOREIGN KEY (`carrera_idCarrera`)
    REFERENCES `playGround`.`carrera` (`idCarrera`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
