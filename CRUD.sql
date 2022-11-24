CREATE SCHEMA `playgroundS`;

CREATE TABLE `playgroundS`.`categoria`(
`idcategoria` INT NOT NULL,
`nombre` VARCHAR(100) NULL,
PRIMARY KEY (`idcategoria`));

CREATE TABLE `playgroundS`. `usuario`(
`idusuario` INT NOT NULL,
`nombre` VARCHAR(100) NULL,
`apellido` VARCHAR(100) NULL,
`email` VARCHAR(50) NULL,
`categoria` INT NULL,
PRIMARY KEY (`idusuario`),
INDEX `FKcategoria_idx` (`categoria` ASC) VISIBLE,
CONSTRAINT `FKcategoria`
FOREIGN KEY (`categoria`)
REFERENCES `playgroundS`.`categoria`(`idcategoria`));


CREATE TABLE `playgroundS`.`carrera`(
`idcarrera` INT NOT NULL,
`titulo` VARCHAR(45) NULL,
`descripcion` VARCHAR(100) NULL,
PRIMARY KEY (`idcarrera`));

CREATE TABLE `playgroundS`.`usuario_carrera`(
`id` INT NOT NULL,
`usuario` INT NULL,
`carrera` INT NULL,
`fecha_inscripcion` DATE NULL,
PRIMARY KEY (`id`),
INDEX `usuario_idx` (`usuario` ASC) VISIBLE,
INDEX `carrera_idx` (`carrera` ASC),
CONSTRAINT `usuario`
FOREIGN KEY (`usuario`)
REFERENCES `playgroundS`.`usuario` (`idusuario`),
CONSTRAINT `carrera`
FOREIGN KEY (`carrera`)
REFERENCES `playgroundS`.`carrera` (`idcarrera`)
);

INSERT INTO `playgroundS`.`categoria`
(`idcategoria`,`nombre`)
VALUES
(1,"Alumno"),
(2,"Docente"),
(3,"Editor"),
(4,"Administrador");

DELETE FROM `playgrounds`.`categoria`
WHERE nombre="Editor";












