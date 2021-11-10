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
	
