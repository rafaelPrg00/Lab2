-- Insertar datos en la tabla Usuarios
INSERT INTO Usuarios (email, contraseña, nombre) VALUES
('cliente1@example.com', 'password123', 'Cliente Uno'),
('empleado1@example.com', 'password123', 'Empleado Uno'),
('cliente2@example.com', 'password123', 'Cliente Dos');

-- Insertar datos en la tabla Empleados
-- El usuarioId corresponde al segundo usuario, que es un empleado
INSERT INTO Empleados (usuarioId, salario) VALUES
(2, 35000.00);

-- Insertar datos en la tabla Clientes
-- Corresponde a los usuarios cliente
INSERT INTO Clientes (usuarioId, direccionEnvio, codigoPostal, fechaNacimiento) VALUES
(1, '123 Calle Principal', '28001', '2005-03-25'),
(3, '456 Avenida Secundaria', '28002', '2008-07-15'); -- Mayor de 14 años

-- Insertar datos en la tabla TiposProducto
-- Insertar datos en la tabla TiposProducto
INSERT INTO TiposProducto (nombre) VALUES
('Físicos'),
('Digitales');

-- Insertar datos en la tabla Productos
INSERT INTO Productos (nombre, descripción, precio, tipoProductoId, puedeVenderseAMenores) VALUES
('Smartphone', 'Teléfono inteligente de última generación', 699.99, 1, TRUE), -- Físico
('Laptop', 'Portátil con características avanzadas', 1200.00, 1, TRUE), -- Físico
('Libro Electrónico', 'Libro descargable en formato PDF', 9.99, 2, TRUE), -- Digital
('Videojuego', 'Videojuego descargable para PC', 59.99, 2, FALSE), -- Digital no vendible a menores
('Camiseta', 'Camiseta de algodón', 15.99, 1, TRUE), -- Físico
('Curso Online', 'Acceso a curso en línea sobre programación', 150.00, 2, TRUE), -- Digital
('Película', 'Película en formato digital HD', 19.99, 2, FALSE), -- Digital no vendible a menores
('Audífonos', 'Audífonos inalámbricos', 29.99, 1, TRUE), -- Físico
('Tableta Gráfica', 'Tableta para diseño gráfico', 85.99, 1, TRUE), -- Físico
('Documental', 'Documental descargable', 12.99, 2, TRUE); -- Digital

-- Insertar datos en la tabla Pedidos
INSERT INTO Pedidos (fechaRealizacion, fechaEnvio, direccionEntrega, comentarios, clienteId, empleadoId) VALUES
('2024-10-01', '2024-10-03', '123 Calle Principal', 'Entregar en la puerta', 1,  1),
('2024-10-02', NULL, '456 Avenida Secundaria', 'Entregar en recepción', 2, NULL);

-- Insertar datos en la tabla LineasPedido - Conjunto de inserciones correctas
-- Productos permitidos para todos los clientes
INSERT INTO LineasPedido (pedidoId, productoId, unidades, precio) VALUES
(1, 1, 1, 699.99),   -- Smartphone (permitido)
(1, 5, 2, 15.99),    -- Camiseta (permitido)
(1, 3, 1, 9.99);     -- Libro Electrónico (permitido)

-- Insertar datos en la tabla LineasPedido - Conjunto de inserciones correctas
-- Productos permitidos para todos los clientes
INSERT INTO LineasPedido (pedidoId, productoId, unidades, precio) VALUES
(2, 8, 1, 29.99),    -- Audífonos (permitido)
(2, 9, 1, 59.99);    -- Tableta gráfica (permitido)
