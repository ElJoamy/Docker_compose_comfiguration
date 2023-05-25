CREATE USER IF NOT EXISTS 'joseph'@'%' IDENTIFIED BY 'root';
GRANT REPLICATION SLAVE ON *.* TO 'joseph'@'%';
FLUSH PRIVILEGES;

CREATE DATABASE IF NOT EXISTS DbOficial;
USE DbOficial;

CREATE TABLE IF NOT EXISTS Departamentos (
  id_departamento INT PRIMARY KEY,
  nombre_departamento VARCHAR(100),
  ubicacion VARCHAR(100)
);

INSERT INTO Departamentos (id_departamento, nombre_departamento, ubicacion) VALUES
  (1, 'Departamento A', 'Ubicacion A'),
  (2, 'Departamento B', 'Ubicacion B'),
  (3, 'Departamento C', 'Ubicacion C');

CREATE TABLE IF NOT EXISTS Categorias (
  id_categoria INT PRIMARY KEY,
  nombre_categoria VARCHAR(100),
  descripcion VARCHAR(100)
);

INSERT INTO Categorias (id_categoria, nombre_categoria, descripcion) VALUES
  (1, 'Categoria A', 'Descripcion A'),
  (2, 'Categoria B', 'Descripcion B'),
  (3, 'Categoria C', 'Descripcion C');

CREATE TABLE IF NOT EXISTS Articulos (
  id_articulo INT PRIMARY KEY,
  nombre_articulo VARCHAR(100),
  id_categoria INT,
  cantidad_disponible INT,
  precio_unitario DECIMAL(10,2),
  FOREIGN KEY (id_categoria) REFERENCES Categorias(id_categoria)
);

INSERT INTO Articulos (id_articulo, nombre_articulo, id_categoria, cantidad_disponible, precio_unitario) VALUES
  (1, 'Articulo A1', 1, 10, 9.99),
  (2, 'Articulo A2', 1, 5, 19.99),
  (3, 'Articulo B1', 2, 8, 14.99);

CREATE TABLE IF NOT EXISTS Usuarios (
  id_usuario INT PRIMARY KEY,
  nombre_usuario VARCHAR(100),
  departamento_id INT,
  FOREIGN KEY (departamento_id) REFERENCES Departamentos(id_departamento)
);

INSERT INTO Usuarios (id_usuario, nombre_usuario, departamento_id) VALUES
  (1, 'Usuario A', 1),
  (2, 'Usuario B', 2),
  (3, 'Usuario C', 3);

CREATE TABLE IF NOT EXISTS Movimientos (
  id_movimiento INT PRIMARY KEY,
  id_articulo INT,
  id_usuario INT,
  tipo_movimiento VARCHAR(10),
  cantidad INT,
  fecha_movimiento DATE,
  FOREIGN KEY (id_articulo) REFERENCES Articulos(id_articulo),
  FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);

INSERT INTO Movimientos (id_movimiento, id_articulo, id_usuario, tipo_movimiento, cantidad, fecha_movimiento) VALUES
  (1, 1, 1, 'entrada', 5, '2023-01-01'),
  (2, 2, 2, 'salida', 2, '2023-02-01'),
  (3, 3, 3, 'entrada', 3, '2023-03-01');

CREATE TABLE IF NOT EXISTS Proveedores (
  id_proveedor INT PRIMARY KEY,
  nombre_proveedor VARCHAR(100),
   ubicacion VARCHAR(100),
  telefono VARCHAR(20)
);

INSERT INTO Proveedores (id_proveedor, nombre_proveedor, ubicacion, telefono) VALUES
  (1, 'Proveedor A', 'Ubicacion A', '123-456-7890'),
  (2, 'Proveedor B', 'Ubicacion B', '987-654-3210'),
  (3, 'Proveedor C', 'Ubicacion C', '555-555-5555');

CREATE TABLE IF NOT EXISTS Compras (
  id_compra INT PRIMARY KEY,
  id_proveedor INT,
  id_articulo INT,
  cantidad INT,
  precio_unitario DECIMAL(10,2),
  fecha_compra DATE,
  FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id_proveedor),
  FOREIGN KEY (id_articulo) REFERENCES Articulos(id_articulo)
);

INSERT INTO Compras (id_compra, id_proveedor, id_articulo, cantidad, precio_unitario, fecha_compra) VALUES
  (1, 1, 1, 5, 8.99, '2023-01-15'),
  (2, 2, 2, 3, 16.99, '2023-02-20'),
  (3, 3, 3, 10, 12.99, '2023-03-25');

CREATE TABLE IF NOT EXISTS Consumos (
  id_consumo INT PRIMARY KEY,
  id_articulo INT,
  id_usuario INT,
  cantidad INT,
  fecha_consumo DATE,
  FOREIGN KEY (id_articulo) REFERENCES Articulos(id_articulo),
  FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);

INSERT INTO Consumos (id_consumo, id_articulo, id_usuario, cantidad, fecha_consumo) VALUES
  (1, 1, 1, 2, '2023-01-10'),
  (2, 2, 2, 1, '2023-02-12'),
  (3, 3, 3, 3, '2023-03-18');
