create database Hospital;
use Hospital;
CREATE TABLE `hospital`.`user_dtls` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `full_name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));
select * from user_dtls;


CREATE TABLE `hospital`.`specialist` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `spec_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));
select *from specialist;



CREATE TABLE `hospital`.`doctor` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `full_name` VARCHAR(45) NOT NULL,
  `dob` VARCHAR(45) NOT NULL ,
  `qualification` VARCHAR(45) NOT NULL,
  `specialist` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `mobno` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));
  select *from dstudentoctor;

  
INSERT INTO `hospital`.`specialist` (`id`, `spec_name`) VALUES ('1', 'Dentist');
INSERT INTO `hospital`.`specialist` (`id`, `spec_name`) VALUES ('2', 'Cardiologist');
INSERT INTO `hospital`.`specialist` (`id`, `spec_name`) VALUES ('3', 'Neurologist');
INSERT INTO `hospital`.`specialist` (`id`, `spec_name`) VALUES ('4', 'Dermatologist');

CREATE TABLE `hospital`.`appointment` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `fullname` VARCHAR(45) NOT NULL,
  `age` INT NOT NULL,
  `gender` VARCHAR(45) NOT NULL,
  `appoint_date` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `phno` VARCHAR(45) NOT NULL,
  `diseases` VARCHAR(45) NOT NULL,
  `doctor_id` INT NOT NULL,
  `address` VARCHAR(500) NOT NULL,
  `status` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `uid_idx` (`user_id` ASC) VISIBLE,
  INDEX `did_idx` (`doctor_id` ASC) VISIBLE,
  CONSTRAINT `uid`
    FOREIGN KEY (`user_id`)
    REFERENCES `hospital`.`user_dtls` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `did`
    FOREIGN KEY (`doctor_id`)
    REFERENCES `hospital`.`doctor` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

select *from appointment;
