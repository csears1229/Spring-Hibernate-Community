CREATE DATABASE community;
USE community;
CREATE TABLE IF NOT EXISTS name (
  name_id INT AUTO_INCREMENT,
  first_name VARCHAR(16) NOT NULL,
  middle_name VARCHAR(16),
  last_name VARCHAR(16) NOT NULL,
  PRIMARY KEY (name_id));
CREATE TABLE IF NOT EXISTS address (
  address_id INT AUTO_INCREMENT,
  roadway VARCHAR(25) NOT NULL,
  state VARCHAR(2) NOT NULL,
  zip_code VARCHAR(5) NOT NULL,
  namekey INT NOT NULL,
  PRIMARY KEY (address_id),
  FOREIGN KEY (namekey) REFERENCES name(name_id));
CREATE TABLE IF NOT EXISTS phonenumber (
  phone_id INT AUTO_INCREMENT,
  phone_number VARCHAR(15) NOT NULL,
  namekey INT NOT NULL,
  PRIMARY KEY(phone_id),
  FOREIGN KEY (namekey) REFERENCES name(name_id));
