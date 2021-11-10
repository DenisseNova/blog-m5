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

insert into Post values(1, 1, 'Post 1: Esto es malo', '2020-06-29');
insert into Post values(2, 5, 'Post 2: Esto es malo', '2020-06-20');
insert into Post values(3, 1, 'Post 3: Esto es excelente', '2020-05-30');
insert into Post values(4, 9, 'Post 4: Esto es bueno', '2020-05-09');
insert into Post values(5, 7, 'Post 5: Esto es bueno', '2020-07-10');
insert into Post values(6, 5, 'Post 6: Esto es excelente', '2020-07-18');
insert into Post values(7, 8, 'Post 7: Esto es excelente', '2020-07-07');

insert into Post values(8, 5, 'Post 8: Esto es excelente', '2020-05-14');
insert into Post values(9, 2, 'Post 9: Esto es bueno', '2020-05-08');
insert into Post values(10, 6, 'Post 10: Esto es bueno', '2020-06-02');
insert into Post values(11, 4, 'Post 11: Esto es bueno', '2020-05-05');
insert into Post values(12, 9, 'Post 12: Esto es malo', '2020-07-23');
insert into Post values(13, 5, 'Post 13: Esto es excelente', '2020-05-30');
insert into Post values(14, 8, 'Post 14: Esto es excelente', '2020-05-01');
insert into Post values(15, 7, 'Post 15: Esto es malo', '2020-06-17');

select * from Post;