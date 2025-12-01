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

INSERT INTO animals (animalid, name, species, breed, dateofbirth, gender, color, ownerid)
VALUES
(1, 'Whiskers', 'Cat', 'Persian', '2020-01-05', 'Female', 'White', 1),
(2, 'Simba', 'Cat', 'Siamese', '2019-03-12', 'Male', 'Cream', 2),
(3, 'Buddy', 'Dog', 'Labrador', '2018-07-18', 'Male', 'Yellow', 3),
(4, 'Max', 'Dog', 'German Shepherd', '2017-10-22', 'Male', 'Black', 4),
(5, 'Luna', 'Cat', 'Bengal', '2021-02-14', 'Female', 'Brown', 5),
(6, 'Bella', 'Dog', 'Poodle', '2020-05-30', 'Female', 'White', 6),
(7, 'Charlie', 'Dog', 'Beagle', '2019-11-09', 'Male', 'Tri-color', 7),
(8, 'Milo', 'Cat', 'Maine Coon', '2018-12-01', 'Male', 'Gray', 8),
(9, 'Coco', 'Dog', 'Shih Tzu', '2021-06-25', 'Female', 'Brown', 9),
(10, 'Rocky', 'Dog', 'Bulldog', '2019-09-17', 'Male', 'White', 10);