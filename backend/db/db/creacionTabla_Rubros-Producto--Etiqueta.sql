CREATE TABLE IF NOT EXISTS `proyecto`.`etiqueta` (
  `etiq_idRubro` INT NOT NULL,
  `etiq_idProducto` INT NOT NULL,
  PRIMARY KEY (`etiq_idRubro`, `etiq_idProducto`),
  INDEX `idx_etiq_idProducto` (`etiq_idProducto` ASC),
  INDEX `idx_etiq_idRubro` (`etiq_idRubro` ASC),
  INDEX `idx_idRubroIdProducto` (`etiq_idRubro` ASC, `etiq_idProducto` ASC),
  CONSTRAINT `fk_etiq_idRubro`
    FOREIGN KEY (`etiq_idRubro`)
    REFERENCES `proyecto`.`rubros` (`idRubro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_etiq_idProducto`
    FOREIGN KEY (`etiq_idProducto`)
    REFERENCES `proyecto`.`productos` (`idProducto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
