create schema practica_sql authorization xbkorrvm;

--- Tabla de Vehículos
create table practica_sql.vehiculos(
	idVehiculo varchar(20) not null, --- PK
	idModelo varchar(20) not null, --- FK
	idColor varchar(20) not null, --- FK
	kmTotales varchar(20) not null,
	matricula varchar(20) not null,
	fechaCompra date not null default '4000-01-01',
	idAseguradora varchar(20) not null, --- FK 
	numPoliza varchar(20) not null
);

--- PK Tabla Vehículos
alter table practica_sql.vehiculos
add constraint vehiculosPK primary key (idVehiculo);

--- Tabla de Modelo
create table practica_sql.modelo(
	idModelo varchar(20) not null, --- PK
	nombreModelo varchar (200) not null,
	idMarca varchar(20) not null --- FK
);

--- PK Tabla Modelo
alter table practica_sql.modelo
add constraint modeloPK primary key (idModelo);

--- Tabla de Marca
create table practica_sql.marca(
	idMarca varchar(20) not null, --- PK
	nombreMarca varchar(200) not null,
	idGrupoEmp varchar(20) not null --- FK
);

--- PK Tabla Marca
alter table practica_sql.marca
add constraint marcaPK primary key (idMarca);

--- Tabla de Grupo Empresarial
create table practica_sql.grupo_empresarial(
	idGrupoEmp varchar(20) not null, --- PK
	nombreGrupoEmp varchar(200) not null
);

--- PK Tabla Grupo Empresarial
alter table practica_sql.grupo_empresarial
add constraint grupoEmpPK primary key (idGrupoEmp);

--- Tabla de Color
create table practica_sql.color(
	idColor varchar(20) not null, --- PK
	nombreColor varchar(200) not null
);

--- PK Tabla Color
alter table practica_sql.color
add constraint colorPK primary key (idColor);

--- Tabla de Moneda
create table practica_sql.moneda(
	idMoneda varchar(20) not null, --- PK
	nombreMoneda varchar(20) not null
);

--- PK Tabla Moneda
alter table practica_sql.moneda
add constraint monedaPK primary key (idMoneda);

--- Tabla de Aseguradora
create table practica_sql.aseguradora(
	idAseguradora varchar(20) not null, --- PK
	nombreAseguradora varchar(200) not null
);

--- PK Tabla Aseguradora
alter table practica_sql.aseguradora
add constraint aseguradoraPK primary key (idAseguradora);

--- Tabla de Historial Revisiones Flota Vehículos
create table practica_sql.historial_revisiones(
	idVehiculo varchar(20) not null, --- FK
	numRevision varchar(20) not null, --- PK
	fechaRevision date not null,
	kmRevision varchar(20) not null,
	importe varchar(20) not null,
	idMoneda varchar(20) not null --- FK
);

--- PK Tabla Historial Revisiones Flota Vehículos
alter table practica_sql.historial_revisiones
add constraint historialRevisionesPK primary key (numRevision);

--- FK Tabla Vehículos
alter table practica_sql.vehiculos
add constraint modeloFK foreign key (idModelo)
references practica_sql.modelo(idModelo);

alter table practica_sql.vehiculos
add constraint colorFK foreign key (idColor)
references practica_sql.color(idColor);

alter table practica_sql.vehiculos
add constraint idAseguradoraFK foreign key (idAseguradora)
references practica_sql.aseguradora(idAseguradora);

--- FK Tabla Modelo
alter table practica_sql.modelo
add constraint marcaFK foreign key (idMarca)
references practica_sql.marca(idMarca);

--- FK Tabla Marca
alter table practica_sql.marca
add constraint grupoEmpFK foreign key (idGrupoEmp)
references practica_sql.grupo_empresarial(idGrupoEmp);

--- FK Tabla Historial Revisiones Flota Vehículos
alter table practica_sql.historial_revisiones
add constraint revisionVehiculoFK foreign key (idVehiculo)
references practica_sql.vehiculos(idVehiculo);

alter table practica_sql.historial_revisiones
add constraint monedaFK foreign key (idMoneda)
references practica_sql.moneda(idMoneda);


--- Ingreso de datos en Tabla Color
insert into practica_sql.color
(idColor, nombreColor)
values('01','Rojo');

insert into practica_sql.color
(idColor, nombreColor)
values('02','Azul');

insert into practica_sql.color
(idColor, nombreColor)
values('03','Negro');

insert into practica_sql.color
(idColor, nombreColor)
values('04','Blanco');

insert into practica_sql.color
(idColor, nombreColor)
values('05','Verde');

insert into practica_sql.color
(idColor, nombreColor)
values('06','Champán');

insert into practica_sql.color
(idColor, nombreColor)
values('07','Blanco marfil');

insert into practica_sql.color
(idColor, nombreColor)
values('08','Naranja');

insert into practica_sql.color
(idColor, nombreColor)
values('09','Gris');

insert into practica_sql.color
(idColor, nombreColor)
values('10','Dorado');

--- Ingreso de datos en Tabla Grupo Empresarial
insert into practica_sql.grupo_empresarial
(idGrupoEmp, nombreGrupoEmp)
values('01','BMW Group');

insert into practica_sql.grupo_empresarial
(idGrupoEmp, nombreGrupoEmp)
values('02','Daimler');

insert into practica_sql.grupo_empresarial
(idGrupoEmp, nombreGrupoEmp)
values('03','FCA');

insert into practica_sql.grupo_empresarial
(idGrupoEmp, nombreGrupoEmp)
values('04','Ferrari');

insert into practica_sql.grupo_empresarial
(idGrupoEmp, nombreGrupoEmp)
values('05','Ford');

insert into practica_sql.grupo_empresarial
(idGrupoEmp, nombreGrupoEmp)
values('06','Geely');

insert into practica_sql.grupo_empresarial
(idGrupoEmp, nombreGrupoEmp)
values('07','General Motors');

insert into practica_sql.grupo_empresarial
(idGrupoEmp, nombreGrupoEmp)
values('08','Honda');

insert into practica_sql.grupo_empresarial
(idGrupoEmp, nombreGrupoEmp)
values('09','Hyundai');

insert into practica_sql.grupo_empresarial
(idGrupoEmp, nombreGrupoEmp)
values('10','Nissan Motor Corporation');

--- Ingreso de datos en Tabla Marca
insert into practica_sql.marca
(idMarca, nombreMarca, idGrupoEmp)
values('01', 'Mini', '01');

insert into practica_sql.marca
(idMarca, nombreMarca, idGrupoEmp)
values('02', 'Rolls Royce', '01');

insert into practica_sql.marca
(idMarca, nombreMarca, idGrupoEmp)
values('03', 'BMW', '01');

insert into practica_sql.marca
(idMarca, nombreMarca, idGrupoEmp)
values('04', 'Mercedes-Benz', '02');

insert into practica_sql.marca
(idMarca, nombreMarca, idGrupoEmp)
values('05', 'Smart', '02');

insert into practica_sql.marca
(idMarca, nombreMarca, idGrupoEmp)
values('06', 'Alfa Romeo', '03');

insert into practica_sql.marca
(idMarca, nombreMarca, idGrupoEmp)
values('07', 'Abarth', '03');

insert into practica_sql.marca
(idMarca, nombreMarca, idGrupoEmp)
values('08', 'Chrysler', '03');

insert into practica_sql.marca
(idMarca, nombreMarca, idGrupoEmp)
values('09', 'Dodge', '03');

insert into practica_sql.marca
(idMarca, nombreMarca, idGrupoEmp)
values('10', 'Fiat', '03');

insert into practica_sql.marca
(idMarca, nombreMarca, idGrupoEmp)
values('11', 'Jeep', '03');

insert into practica_sql.marca
(idMarca, nombreMarca, idGrupoEmp)
values('12', 'Lancia', '03');

insert into practica_sql.marca
(idMarca, nombreMarca, idGrupoEmp)
values('13', 'Maserati', '03');

insert into practica_sql.marca
(idMarca, nombreMarca, idGrupoEmp)
values('14', 'Ferrari', '04');

insert into practica_sql.marca
(idMarca, nombreMarca, idGrupoEmp)
values('15', 'Ford', '05');

insert into practica_sql.marca
(idMarca, nombreMarca, idGrupoEmp)
values('16', 'Volvo', '06');

insert into practica_sql.marca
(idMarca, nombreMarca, idGrupoEmp)
values('17', 'Cadillac', '07');

insert into practica_sql.marca
(idMarca, nombreMarca, idGrupoEmp)
values('18', 'Chevrolet', '07');

insert into practica_sql.marca
(idMarca, nombreMarca, idGrupoEmp)
values('19', 'Honda', '08');

insert into practica_sql.marca
(idMarca, nombreMarca, idGrupoEmp)
values('20', 'Kia', '09');

insert into practica_sql.marca
(idMarca, nombreMarca, idGrupoEmp)
values('21', 'Hyundai', '09');

insert into practica_sql.marca
(idMarca, nombreMarca, idGrupoEmp)
values('22', 'Renault', '10');

insert into practica_sql.marca
(idMarca, nombreMarca, idGrupoEmp)
values('23', 'Nissan', '10');

insert into practica_sql.marca
(idMarca, nombreMarca, idGrupoEmp)
values('24', 'Infiniti', '10');

insert into practica_sql.marca
(idMarca, nombreMarca, idGrupoEmp)
values('25', 'Mitsubishi', '10');

insert into practica_sql.marca
(idMarca, nombreMarca, idGrupoEmp)
values('26', 'Dacia', '10');

--- Ingreso de datos en Tabla Modelo
insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('01', 'Cabrio', '01');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('02', 'Clubman', '01');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('03', 'Countryman', '01');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('04', 'Ghost', '02');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('05', 'Phantom', '02');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('06', 'Wraith', '02');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('07', 'X5', '03');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('08', 'Serie 3', '03');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('09', 'X2', '03');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('10', 'Clase A', '04');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('11', 'GLC', '04');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('12', 'Clase S', '04');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('13', '#1', '05');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('14', 'ForTwo', '05');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('15', 'ForFour', '05');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('16', 'Giulia', '06');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('17', 'Stelvio', '06');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('18', 'Tonale', '06');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('19', '500', '07');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('20', '500C', '07');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('21', 'Voyager', '08');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('22', 'Crossfire', '08');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('23', 'Pacifica', '08');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('24', 'Charger', '09');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('25', 'Challenger', '09');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('26', 'Durango', '09');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('27', '500', '10');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('28', 'Panda', '10');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('29', 'Tipo', '10');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('30', 'Wrangler', '11');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('31', 'Gran Cherokee', '11');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('32', 'Compass', '11');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('33', 'Thema', '12');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('34', 'Flavia', '12');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('35', 'Voyager', '12');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('36', 'Levante', '13');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('37', 'Gran Turismo', '13');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('38', 'Grecale', '13');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('39', 'F8', '14');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('40', '488', '14');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('41', 'Portofino', '14');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('42', 'Mustang', '15');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('43', 'Focus', '15');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('44', 'Kuga', '15');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('45', 'XC40', '16');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('46', 'S60', '16');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('47', 'C40', '16');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('48', 'Escalade', '17');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('49', 'CTS', '17');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('50', 'SRX', '17');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('51', 'Camaro', '18');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('52', 'Corvette', '18');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('53', 'Volt', '18');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('54', 'Civic', '19');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('55', 'CR-V', '19');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('56', 'HR-V', '19');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('57', 'Sportage', '20');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('58', 'Ceed', '20');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('59', 'Stinger', '20');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('60', 'i20', '21');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('61', 'Tucson', '21');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('62', 'IONIQ 6', '21');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('63', 'Megane', '22');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('64', 'Clio', '22');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('65', 'Twingo', '22');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('66', 'QASHQAI', '23');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('67', 'Micra', '23');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('68', 'JUKE', '23');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('69', 'Q40', '24');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('70', 'Q50', '24');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('71', 'Q60', '24');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('72', 'Eclipse Cross', '25');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('73', 'Lancer', '25');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('74', 'Duster', '26');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('75', 'Sandero', '26');

insert into practica_sql.modelo
(idModelo, nombreModelo, idMarca)
values('76', 'Jogger', '26');

--- Ingreso de datos Tabla Aseguradora
insert into practica_sql.aseguradora
(idAseguradora, nombreAseguradora)
values('01', 'Allianz');

insert into practica_sql.aseguradora
(idAseguradora, nombreAseguradora)
values('02', 'AXA');

insert into practica_sql.aseguradora
(idAseguradora, nombreAseguradora)
values('03', 'Catalana Occidente');

insert into practica_sql.aseguradora
(idAseguradora, nombreAseguradora)
values('04', 'Direct Seguros');

insert into practica_sql.aseguradora
(idAseguradora, nombreAseguradora)
values('05', 'Generali');

insert into practica_sql.aseguradora
(idAseguradora, nombreAseguradora)
values('06', 'Génesis');

insert into practica_sql.aseguradora
(idAseguradora, nombreAseguradora)
values('07', 'Linea Directa');

insert into practica_sql.aseguradora
(idAseguradora, nombreAseguradora)
values('08', 'MAPFRE');

insert into practica_sql.aseguradora
(idAseguradora, nombreAseguradora)
values('09', 'Mutua Madrileña');

insert into practica_sql.aseguradora
(idAseguradora, nombreAseguradora)
values('10', 'Pelayo');

--- Ingreso de datos Tabla Moneda
insert into practica_sql.moneda
(idMoneda, nombreMoneda)
values('01', 'EURO');

insert into practica_sql.moneda
(idMoneda, nombreMoneda)
values('02', 'DOLAR');

insert into practica_sql.moneda
(idMoneda, nombreMoneda)
values('03', 'LIBRA');

--- Ingreso de datos Tabla Vehiculos
insert into practica_sql.vehiculos
(idVehiculo, idModelo, idColor, kmTotales, matricula, fechaCompra, idAseguradora, numPoliza)
values('01', '01', '01', '23450', '7450FCT', '2018-08-22', '01', 'ALL15896587');

insert into practica_sql.vehiculos
(idVehiculo, idModelo, idColor, kmTotales, matricula, fechaCompra, idAseguradora, numPoliza)
values('02', '01', '02', '28755', '8547PLO', default, '01', 'ALL5789654');

insert into practica_sql.vehiculos
(idVehiculo, idModelo, idColor, kmTotales, matricula, fechaCompra, idAseguradora, numPoliza)
values('03', '02', '03', '23345', '8267OTL', '2006-05-13', '02', 'AX35875654');

insert into practica_sql.vehiculos
(idVehiculo, idModelo, idColor, kmTotales, matricula, fechaCompra, idAseguradora, numPoliza)
values('04', '24', '08', '134876', '8654THJ', '2000-01-21', '03', 'CO57473754');

insert into practica_sql.vehiculos
(idVehiculo, idModelo, idColor, kmTotales, matricula, fechaCompra, idAseguradora, numPoliza)
values('05', '45', '05', '245784', '5478TGF', default, '04', 'DS7455887');

insert into practica_sql.vehiculos
(idVehiculo, idModelo, idColor, kmTotales, matricula, fechaCompra, idAseguradora, numPoliza)
values('06', '32', '10', '287876', '7654CQW', '1995-07-24', '05', 'GE9836362');

insert into practica_sql.vehiculos
(idVehiculo, idModelo, idColor, kmTotales, matricula, fechaCompra, idAseguradora, numPoliza)
values('07', '13', '06', '24598', '2145THV', '2019-08-21', '06', 'GENS875598');

insert into practica_sql.vehiculos
(idVehiculo, idModelo, idColor, kmTotales, matricula, fechaCompra, idAseguradora, numPoliza)
values('08', '54', '03', '12054', '8754KTH', '2021-02-13', '07', 'LD09876328');

insert into practica_sql.vehiculos
(idVehiculo, idModelo, idColor, kmTotales, matricula, fechaCompra, idAseguradora, numPoliza)
values('09', '07', '08', '2875', '1254BNM', default, '08', 'MAP7363628');

insert into practica_sql.vehiculos
(idVehiculo, idModelo, idColor, kmTotales, matricula, fechaCompra, idAseguradora, numPoliza)
values('10', '29', '02', '1233', '2145VCB', '2022-01-01', '09', 'MM78282654');

--- Ingreso de datos Tabla Historial revisiones Flota Vehiculos
insert into practica_sql.historial_revisiones
(idVehiculo, numRevision, fechaRevision, kmRevision, importe, idMoneda)
values('01', '01', '2018-08-22', '13450', '158', '01');

insert into practica_sql.historial_revisiones
(idVehiculo, numRevision, fechaRevision, kmRevision, importe, idMoneda)
values('03', '02', '2006-05-13', '10254', '168', '01');

insert into practica_sql.historial_revisiones
(idVehiculo, numRevision, fechaRevision, kmRevision, importe, idMoneda)
values('04', '03', '2000-01-21', '34000', '112', '01');

insert into practica_sql.historial_revisiones
(idVehiculo, numRevision, fechaRevision, kmRevision, importe, idMoneda)
values('04', '04', '2014-02-21', '195000', '187', '01');

insert into practica_sql.historial_revisiones
(idVehiculo, numRevision, fechaRevision, kmRevision, importe, idMoneda)
values('06', '05', '1995-07-24', '125478', '164', '01');

insert into practica_sql.historial_revisiones
(idVehiculo, numRevision, fechaRevision, kmRevision, importe, idMoneda)
values('06', '06', '2002-07-24', '189548', '172', '01');

insert into practica_sql.historial_revisiones
(idVehiculo, numRevision, fechaRevision, kmRevision, importe, idMoneda)
values('06', '07', '2022-06-28', '280800', '180', '03');

insert into practica_sql.historial_revisiones
(idVehiculo, numRevision, fechaRevision, kmRevision, importe, idMoneda)
values('07', '08', '2019-08-21', '19856', '120', '02');

insert into practica_sql.historial_revisiones
(idVehiculo, numRevision, fechaRevision, kmRevision, importe, idMoneda)
values('08', '09', '2021-02-13', '9856', '158', '03');

insert into practica_sql.historial_revisiones
(idVehiculo, numRevision, fechaRevision, kmRevision, importe, idMoneda)
values('10', '10', '2022-01-01', '987', '210', '02');

