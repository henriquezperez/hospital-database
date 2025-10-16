--BASE DE DATOS DE PRUEBA
CREATE DATABASE HOSPITAL;
USE HOSPITAL;
-- fhththt
CREATE TABLE Administrador (
    idAdministrador INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(45)
);

CREATE TABLE Doctor (
    CodigoColegiatura INT PRIMARY KEY,
    NombreApellido VARCHAR(45),
    NombreEspecialidad VARCHAR(45)
);

CREATE TABLE Usuario (
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    Usuario VARCHAR(45),
    Clave VARCHAR(45),
    Doctor_CodigoColegiatura INT,
    Administrador_idAdministrador INT,
    FOREIGN KEY (Doctor_CodigoColegiatura) REFERENCES Doctor(CodigoColegiatura),
    FOREIGN KEY (Administrador_idAdministrador) REFERENCES Administrador(idAdministrador)
);

CREATE TABLE Paciente (
    idPaciente INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(45),
    Apellidos VARCHAR(45),
    Edad INT,
    Sexo VARCHAR(45),
    Doctor_CodigoColegiatura INT,
    FOREIGN KEY (Doctor_CodigoColegiatura) REFERENCES Doctor(CodigoColegiatura)
);

CREATE TABLE Historial (
    idtabla1 INT PRIMARY KEY AUTO_INCREMENT,
    Fecha DATETIME,
    CodigoHistorial VARCHAR(45),
    NombrePaciente VARCHAR(45),
    EdadPaciente VARCHAR(45),
    Especialista VARCHAR(45),
    NombreDoctor VARCHAR(45),
    AreaClinica VARCHAR(45),
    Sintomas VARCHAR(45),
    Diagnostico VARCHAR(45)
);

INSERT INTO Administrador (Nombre) VALUES
('Ana Torres'),
('Luis Méndez'),
('Claudia Rivas'),
('Carlos Ortega'),
('María López');

INSERT INTO Doctor (CodigoColegiatura, NombreApellido, NombreEspecialidad) VALUES
(1001, 'Dr. Juan Pérez', 'Cardiología'),
(1002, 'Dra. Sofía Gómez', 'Pediatría'),
(1003, 'Dr. Andrés Ruiz', 'Neurología'),
(1004, 'Dra. Laura Martínez', 'Dermatología'),
(1005, 'Dr. Miguel Herrera', 'Ginecología');


INSERT INTO Usuario (Usuario, Clave, Doctor_CodigoColegiatura, Administrador_idAdministrador) VALUES
('jperez', 'clave123', 1001, 1),
('sgomez', 'pass456', 1002, 2),
('aruiz', 'neu789', 1003, 3),
('lmartinez', 'derma321', 1004, 4),
('mherrera', 'gyn654', 1005, 5);


INSERT INTO Paciente (Nombre, Apellidos, Edad, Sexo, Doctor_CodigoColegiatura) VALUES
('Carlos', 'Ramírez', 34, 'Masculino', 1001),
('Lucía', 'Fernández', 28, 'Femenino', 1002),
('José', 'Martínez', 45, 'Masculino', 1003),
('Elena', 'García', 52, 'Femenino', 1004),
('Mario', 'López', 39, 'Masculino', 1005),
('Sandra', 'Torres', 31, 'Femenino', 1001),
('Luis', 'Castro', 22, 'Masculino', 1002),
('Patricia', 'Mendoza', 47, 'Femenino', 1003),
('Diego', 'Navarro', 36, 'Masculino', 1004),
('Valeria', 'Cruz', 29, 'Femenino', 1005),
('Jorge', 'Salinas', 50, 'Masculino', 1001),
('Camila', 'Reyes', 33, 'Femenino', 1002),
('Raúl', 'Morales', 41, 'Masculino', 1003),
('Isabel', 'Vega', 26, 'Femenino', 1004),
('Fernando', 'Pineda', 38, 'Masculino', 1005),
('Natalia', 'Campos', 30, 'Femenino', 1001),
('Esteban', 'Aguilar', 44, 'Masculino', 1002),
('Rosa', 'Delgado', 37, 'Femenino', 1003),
('Tomás', 'Silva', 53, 'Masculino', 1004),
('Andrea', 'Palacios', 25, 'Femenino', 1005);

INSERT INTO Historial (Fecha, CodigoHistorial, NombrePaciente, EdadPaciente, Especialista, NombreDoctor, AreaClinica, Sintomas, Diagnostico) VALUES
(NOW(), 'H001', 'Carlos Ramírez', '34', 'Cardiología', 'Dr. Juan Pérez', 'Cardiología', 'Dolor de pecho', 'Angina'),
(NOW(), 'H002', 'Lucía Fernández', '28', 'Pediatría', 'Dra. Sofía Gómez', 'Pediatría', 'Fiebre alta', 'Infección viral'),
(NOW(), 'H003', 'José Martínez', '45', 'Neurología', 'Dr. Andrés Ruiz', 'Neurología', 'Mareos', 'Migraña'),
(NOW(), 'H004', 'Elena García', '52', 'Dermatología', 'Dra. Laura Martínez', 'Dermatología', 'Erupción cutánea', 'Dermatitis'),
(NOW(), 'H005', 'Mario López', '39', 'Ginecología', 'Dr. Miguel Herrera', 'Ginecología', 'Dolor abdominal', 'Quiste ovárico'),
(NOW(), 'H006', 'Sandra Torres', '31', 'Cardiología', 'Dr. Juan Pérez', 'Cardiología', 'Palpitaciones', 'Arritmia'),
(NOW(), 'H007', 'Luis Castro', '22', 'Pediatría', 'Dra. Sofía Gómez', 'Pediatría', 'Tos persistente', 'Bronquitis'),
(NOW(), 'H008', 'Patricia Mendoza', '47', 'Neurología', 'Dr. Andrés Ruiz', 'Neurología', 'Pérdida de memoria', 'Alzheimer temprano'),
(NOW(), 'H009', 'Diego Navarro', '36', 'Dermatología', 'Dra. Laura Martínez', 'Dermatología', 'Acné severo', 'Rosácea'),
(NOW(), 'H010', 'Valeria Cruz', '29', 'Ginecología', 'Dr. Miguel Herrera', 'Ginecología', 'Sangrado irregular', 'Endometriosis');
