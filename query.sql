create table Usuario(
	id int,
	email varchar(30),
	primary key (id));
	
create table Post(
	id int,
	usuario_id int,
	titulo varchar(50),
	fecha date,
	primary key (id),
	foreign key (usuario_id) references Usuario(id));
	
create table Comentarios(
	id int,
	post_id int,
	usuario_id int,
	texto varchar(300),
	fecha date,
	primary key (id),
	foreign key(usuario_id) references Usuario(id),
	foreign key(post_id) references Post(id));
	
insert into Usuario values(1, 'usuario01@hotmail.com');
insert into Usuario values(2, 'usuario02@gmail.com');
insert into Usuario values(3, 'usuario03@gmail.com');
insert into Usuario values(4, 'usuario04@hotmail.com');
insert into Usuario values(5, 'usuario05@yahoo.com');
insert into Usuario values(6, 'usuario06@hotmail.com');
insert into Usuario values(7, 'usuario07@yahoo.com');
insert into Usuario values(8, 'usuario08@yahoo.com');
insert into Usuario values(9, 'usuario09@yahoo.com');

select * from Usuario;