CREATE DATABASE veterinary;

CREATE TABLE owners(
    ownerid INT PRIMARY KEY,
    ofirstname VARCHAR(50),
    olastname VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE animals (
    animalid INT PRIMARY KEY,
    name VARCHAR(50),
    species VARCHAR(50),
    breed VARCHAR(50),
    dateofbirth DATE,
    gender VARCHAR(10),
    color VARCHAR(50),
    ownerid INT,
    FOREIGN KEY (ownerid) REFERENCES owners(ownerid)
);

CREATE TABLE animals (
    animalid INT PRIMARY KEY,
    name VARCHAR(50),
    species VARCHAR(50),
    breed VARCHAR(50),
    dateofbirth DATE,
    gender VARCHAR(10),
    color VARCHAR(50),
    ownerid INT,
    FOREIGN KEY (ownerid) REFERENCES owners(ownerid)
);

CREATE TABLE appointments (
    appointid INT PRIMARY KEY,
    animalid INT,
    appointdate DATE,
    reason VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid)
);


CREATE TABLE doctors (
    doctorid INT PRIMARY KEY,
    dfirstname VARCHAR(50),
    dlastname VARCHAR(50),
    speciality VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE invoices (
    invoiceid INT PRIMARY KEY,
    appointid INT,
    totalamount DECIMAL(10,2),
    paymentdate TIME,
    FOREIGN KEY (appointid) REFERENCES appointments(appointid)
);

CREATE TABLE medicalrecords (
    recordid INT PRIMARY KEY,
    animalid INT,
    recorddate DATETIME,
    doctorid INT,
    diagnosis VARCHAR(255),
    prescription VARCHAR(255),
    notes VARCHAR(500),
    FOREIGN KEY (animalid) REFERENCES animals(animalid),
    FOREIGN KEY (doctorid) REFERENCES doctors(doctorid)
);

INSERT INTO owners (ownerid, ofirstname, olastname, address, phone, email)
VALUES
(1, 'Maria', 'Santos', '123 Main St', '09171234567', 'maria@example.com'),
(2, 'Juan', 'Dela Cruz', '456 Mabini St', '09182345678', 'juan@example.com'),
(3, 'Ana', 'Lopez', '789 Rizal Ave', '09271234567', 'ana@example.com'),
(4, 'Pedro', 'Garcia', '101 Bonifacio St', '09381237654', 'pedro@example.com'),
(5, 'Luisa', 'Reyes', '202 Aquino St', '09471239876', 'luisa@example.com'),
(6, 'Jose', 'Torres', '303 Luna St', '09581234566', 'jose@example.com'),
(7, 'Carmen', 'Flores', '404 Recto Ave', '09671234588', 'carmen@example.com'),
(8, 'Roberto', 'Fernandez', '505 Osmeña Blvd', '09781234577', 'roberto@example.com'),
(9, 'Elena', 'Mendoza', '606 Quirino St', '09891234566', 'elena@example.com'),
(10, 'Miguel', 'Ramos', '707 Roxas Blvd', '09901234555', 'miguel@example.com');
