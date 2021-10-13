CREATE TABLE usuarios(  
    id INT(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE notas(  
    id INT(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    fecha_creacion DATETIME NOT NULL,
    fecha_modificacion DATETIME,
    descripcion TEXT NOT NULL,
    id_usuario INT(10) NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id) ON UPDATE CASCADE 
);

CREATE TABLE categorias(  
    id INT(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE notas_categorias(  
    id INT(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_notas INT(10) NOT NULL,
    id_categorias INT(10) NOT NULL,
    FOREIGN KEY (id_notas) REFERENCES notas (id),
    FOREIGN KEY (id_categorias) REFERENCES categorias (id)
);

/* Para poder agregar datos sin el error por los FOREING KEY */ 

SET FOREIGN_KEY_CHECKS=0;

/* Valores agregados aleatorios a cada tabla */ 
INSERT INTO usuarios(id,nombre,email) VALUES(1,'a',"a@a.com"),(2,'b',"b@b.com"),(3,'c',"c@c.com"),(4,'d',"d@d.com"),(5,'e',"e@e.com"),(6,'f',"f@f.com"),(7,'g',"g@g.com"),(8,'h',"h@h.com"),(9,'i',"i@i.com"),(10,'j',"j@j.com");

INSERT INTO notas(id,titulo,fecha_creacion,descripcion,id_usuario) VALUES(1,'a','2021-05-26 00:00:00','a',1),(2,'bb','2021-04-17 00:00:00','bb',2),(3,'ccc','2021-12-27 00:00:00','ccc',3),(4,'dddd','2021-06-13 00:00:00','dddd',4),(5,'eeeee','2021-01-27 00:00:00','eeeee',5),(6,'ffffff','2021-04-07 00:00:00','ffffff',6),(7,'ggggggg','2021-09-07 00:00:00','ggggggg',7),(8,'hhhhhhhh','2021-04-01 00:00:00','hhhhhhhh',8),(9,'iiiiiiiii','2021-03-27 00:00:00','iiiiiiiii',9),(10,'jjjjjjjjjj','2021-02-13 00:00:00','jjjjjjjjjj',10);

INSERT INTO categorias(id,nombre) VALUES(1,'a'),(2,'b'),(3,'c'),(4,'d'),(5,'e'),(6,'f'),(7,'g'),(8,'h'),(9,'i'),(10,'j');

INSERT INTO notas_categorias(id,id_notas,id_categorias) VALUES(1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10)