USE MuebleriaEcommerce;

INSERT INTO Categorias (nombre_categoria, descripcion) VALUES 
('Sillas', 'Sillas de diferentes tipos'),
('Mesas', 'Mesas de diferentes tamaños'),
('Sofas', 'Sofas cómodos y elegantes');

INSERT INTO Productos (nombre_producto, descripcion, precio, stock, id_categoria) VALUES 
('Silla de Madera', 'Silla hecha de madera de alta calidad', 49.99, 20, 1),
('Mesa Redonda', 'Mesa redonda de vidrio', 99.99, 10, 2),
('Sofa de Cuero', 'Sofa de cuero negro', 299.99, 5, 3);

INSERT INTO Clientes (nombre_cliente, correo, telefono, direccion, ciudad, estado, codigo_postal) VALUES 
('Juan Perez', 'juan.perez@example.com', '555-1234', 'Calle Falsa 123', 'Ciudad A', 'Estado A', '12345'),
('Maria Gomez', 'maria.gomez@example.com', '555-5678', 'Avenida Siempre Viva 456', 'Ciudad B', 'Estado B', '67890');

INSERT INTO Pedidos (id_cliente, fecha_pedido, total, estado) VALUES 
(1, '2024-06-30', 149.98, 'Pendiente'),
(2, '2024-06-29', 299.99, 'Completado');

INSERT INTO DetallesPedidos (id_pedido, id_producto, cantidad, precio_unitario) VALUES 
(1, 1, 2, 49.99),
(2, 3, 1, 299.99);

INSERT INTO Envios (id_pedido, fecha_envio, fecha_entrega_estimada, metodo_envio, estado_envio) VALUES 
(1, '2024-07-01', '2024-07-05', 'DHL', 'En camino'),
(2, '2024-06-30', '2024-07-04', 'FedEx', 'Entregado');

INSERT INTO Usuarios (nombre_usuario, correo, contrasena, rol) VALUES 
('admin', 'admin@example.com', 'hashedpassword', 'ADMIN'),
('usuario', 'usuario@example.com', 'hashedpassword', 'USER');
