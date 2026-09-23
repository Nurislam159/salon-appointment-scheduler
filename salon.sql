CREATE TABLE customers (
  customer_id SERIAL PRIMARY KEY,
  phone VARCHAR(15) UNIQUE NOT NULL,
  name VARCHAR(50) NOT NULL
);

CREATE TABLE services (
  service_id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

CREATE TABLE appointments (
  appointment_id SERIAL PRIMARY KEY,
  customer_id INT REFERENCES customers(customer_id),
  service_id INT REFERENCES services(service_id),
  time VARCHAR(45) NOT NULL
);

INSERT INTO services(name) VALUES ('cut');
INSERT INTO services(name) VALUES ('color');
INSERT INTO services(name) VALUES ('perm');
INSERT INTO services(name) VALUES ('style');
INSERT INTO services(name) VALUES ('trim');
