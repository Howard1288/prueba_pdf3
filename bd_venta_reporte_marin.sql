//base de datos utilizada en el .env
Create database mdn3

///tablas 

Create table productos (
    producto_id serial primary key,
    producto_nombre varchar (60) not null,
    producto_precio decimal (8,2) not null,
    producto_situacion char (1) DEFAULT '1'
);

Create table clientes (
    cliente_id serial primary key,
    cliente_nombre varchar (60) not null,
    cliente_nit varchar (10) not null,
    cliente_situacion char (1) DEFAULT '1'
);


Create table ventas (
    venta_id serial not null,
    venta_cliente integer not null,
    venta_fecha datetime year to minute not null,
    venta_situacion char (1) DEFAULT '1',
    primary key (venta_id),
    foreign key (venta_cliente) REFERENCES clientes (cliente_id) 
);  

Create table detalle_ventas (
    detalle_id serial not null,
    detalle_venta integer not null,
    detalle_producto integer not null,
    detalle_cantidad smallint not null,
    detalle_situacion char (1) DEFAULT '1',
    primary key (detalle_id),
    foreign key (detalle_venta) REFERENCES ventas (venta_id),
    foreign key (detalle_producto) REFERENCES productos (producto_id)
);



/////insert a cada tabla


///insert a la tabla productos


INSERT INTO productos (producto_nombre, producto_precio, producto_situacion)
VALUES ('Computadora', 1000.00, '1');

INSERT INTO productos (producto_nombre, producto_precio, producto_situacion)
VALUES ('Celular', 800.00, '1');

INSERT INTO productos (producto_nombre, producto_precio, producto_situacion)
VALUES ('Tablet', 300.00, '1');

INSERT INTO productos (producto_nombre, producto_precio, producto_situacion)
VALUES ('Impresora', 200.00, '1');

INSERT INTO productos (producto_nombre, producto_precio, producto_situacion)
VALUES ('Teclado', 30.00, '1');



/////insert a la tabla clientes 

INSERT INTO clientes (cliente_nombre, cliente_nit, cliente_situacion)
VALUES ('Juan Perez', '1234567890', '1');

INSERT INTO clientes (cliente_nombre, cliente_nit, cliente_situacion)
VALUES ('Ana Rodríguez', '9876543210', '1');

INSERT INTO clientes (cliente_nombre, cliente_nit, cliente_situacion)
VALUES ('Pedro Sánchez', '5678901234', '1');

INSERT INTO clientes (cliente_nombre, cliente_nit, cliente_situacion)
VALUES ('María López', '3456789012', '1');

INSERT INTO clientes (cliente_nombre, cliente_nit, cliente_situacion)
VALUES ('Luis Martínez', '0123456789', '1');




//insert a la tabla ventas


INSERT INTO ventas (venta_cliente, venta_fecha, venta_situacion)
VALUES (1, '2023-09-17 10:00', '1');

INSERT INTO ventas (venta_cliente, venta_fecha, venta_situacion)
VALUES (2, '2023-09-17 11:30', '1');

INSERT INTO ventas (venta_cliente, venta_fecha, venta_situacion)
VALUES (3, '2023-04-17 14:45', '1');

INSERT INTO ventas (venta_cliente, venta_fecha, venta_situacion)
VALUES (4, '2023-05-18 09:15', '1');

INSERT INTO ventas (venta_cliente, venta_fecha, venta_situacion)
VALUES (5, '2023-09-18 16:20', '1');


//insert a la tabla detalle_ventas



INSERT INTO detalle_ventas (detalle_venta, detalle_producto, detalle_cantidad, detalle_situacion)
VALUES (1, 1, 2, '1');

INSERT INTO detalle_ventas (detalle_venta, detalle_producto, detalle_cantidad, detalle_situacion)
VALUES (2, 2, 1, '1');

INSERT INTO detalle_ventas (detalle_venta, detalle_producto, detalle_cantidad, detalle_situacion)
VALUES (3, 3, 3, '1');

INSERT INTO detalle_ventas (detalle_venta, detalle_producto, detalle_cantidad, detalle_situacion)
VALUES (4, 4, 4, '1');

INSERT INTO detalle_ventas (detalle_venta, detalle_producto, detalle_cantidad, detalle_situacion)
VALUES (5, 5, 2, '1');



