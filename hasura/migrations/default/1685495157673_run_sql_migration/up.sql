-- Create the schema for additional user info
CREATE SCHEMA user_info;

-- Create the "user" table in the main schema
CREATE TABLE "user" (
  user_id SERIAL PRIMARY KEY,
  user_name VARCHAR(100),
  date_of_birth DATE,
  gender VARCHAR(10),
  prescribing_doctor VARCHAR(100)
);

-- Create the "user_info" table in the user_info schema
CREATE TABLE user_info.user_info (
  user_id INT PRIMARY KEY,
  address VARCHAR(100),
  contact_number VARCHAR(20),
  email VARCHAR(100),
  prescription_support BOOLEAN
);

-- Create the "billing_info" table in the user_info schema
CREATE TABLE user_info.billing_info (
  user_id INT PRIMARY KEY,
  card_number VARCHAR(16),
  cardholder_name VARCHAR(100),
  expiration_date DATE,
  cvv VARCHAR(4)
);

-- Create the "device_info" table in the user_info schema
CREATE TABLE user_info.device_info (
  user_id INT,
  device_id SERIAL PRIMARY KEY,
  device_name VARCHAR(100),
  prescription_support BOOLEAN,
  FOREIGN KEY (user_id) REFERENCES "user" (user_id)
);
