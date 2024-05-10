create table usuarios (
   id serial primary key,
	firstname varchar(50),
	lastname varchar(50),
	email varchar(50)
);

insert into usuarios ( firstname, lastname, email) values
('joel','andrango','joelg,mail.com'),
('juaita','prieto','juanitagmail.com'),
('andres','costa','andres@gmail.com');

select * from usuarios;

create table post (
    id serial primary key,
	creator_id int references usuarios(id),
	title varchar(50),
	textos text
);

insert into post (creator_id, title, textos) values
(2,'laguerita','Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(3,'el apostador','Phasellus sollicitudin sed arcu nec sodales.'),
(1,'ardendo en si','Nullam lacinia purus elit, vitae pretium libero'),
(2,'el conjuro','metus non pretium porta, tellus erat viverra lectus,'),
(1,'el deler','Duis porttitor auctor porta. Donec ultricies eu mi sed volutpat.');

select * from post;

create table likes (
    id serial primary key,
	user_id int references usuarios(id),
	post_id int references post(id)
);


insert into likes ( user_id, post_id) values
(1,3),
(2,5),
(2,4),
(3,2),
(3,1);

select * from likes;

-- usuarios  --- likes  --   post  --

select * from usuarios inner join likes
on usuarios.id = likes.user_id inner join post
on post.id = likes.post_id;




  


