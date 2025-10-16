-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS EmpresaDemo;
USE EmpresaDemo;

-- Crear tabla de Departamentos
DROP TABLE IF EXISTS Departamentos;
CREATE TABLE Departamentos (
    id INT PRIMARY KEY,
    nombre VARCHAR(50)
);

-- Crear tabla de Empleados
DROP TABLE IF EXISTS Empleados;
CREATE TABLE Empleados (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    depto_id INT
);
-- Insertar datos en Departamentos
INSERT INTO Departamentos (id, nombre) VALUES
(1, 'Recursos Humanos'),
(2, 'Tecnología'),
(3, 'Marketing'),
(4, 'Finanzas');

-- Insertar 10 empleados por cada departamento
INSERT INTO Empleados (id, nombre, depto_id) VALUES
-- Recursos Humanos (id = 1)
(201, 'Ana', 1),
(202, 'Bruno', 1),
(203, 'Claudia', 1),
(204, 'David', 1),
(205, 'Eva', 1),
(206, 'Fernando', 1),
(207, 'Gabriela', 1),
(208, 'Hugo', 1),
(209, 'Isabel', 1),
(210, 'Jorge', 1),

-- Tecnología (id = 2)
(211, 'Karen', 2),
(212, 'Luis', 2),
(213, 'María', 2),
(214, 'Nicolás', 2),
(215, 'Olga', 2),
(216, 'Pablo', 2),
(217, 'Quetzal', 2),
(218, 'Rosa', 2),
(219, 'Samuel', 2),
(220, 'Teresa', 2),

-- Marketing (id = 3)
(221, 'Ulises', 3),
(222, 'Valeria', 3),
(223, 'Walter', 3),
(224, 'Ximena', 3),
(225, 'Yolanda', 3),
(226, 'Zacarías', 3),
(227, 'Ariadna', 3),
(228, 'Benjamín', 3),
(229, 'Cecilia', 3),
(230, 'Diego', 3),

-- Finanzas (id = 4)
(231, 'Elena', 4),
(232, 'Francisco', 4),
(233, 'Gloria', 4),
(234, 'Héctor', 4),
(235, 'Inés', 4),
(236, 'Jaime', 4),
(237, 'Karla', 4),
(238, 'Leonardo', 4),
(239, 'Mónica', 4),
(240, 'Norberto', 4),

-- Empleados sin departamento válido
(241, 'Oscar', NULL),
(242, 'Patricia', NULL),
(243, 'Ramiro', 5), -- depto_id inexistente
(244, 'Silvia', NULL),
(245, 'Tomás', 6); -- depto_id inexistente
