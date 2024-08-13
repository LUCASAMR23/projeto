
-- create
Create table Alunos (
idAluno int not null auto_increment primary key,
nome char(40) not null,
idade int not null,
curso varchar(30) not null,
serie int not null
);

-- insert


desc alunos;

+---------+-------------+------+-----+---------+----------------+
| Field   | Type        | Null | Key | Default | Extra          |
+---------+-------------+------+-----+---------+----------------+
| idAluno | int         | NO   | PRI | NULL    | auto_increment |
| nome    | char(40)    | NO   |     | NULL    |                |
| idade   | int         | NO   |     | NULL    |                |
| curso   | varchar(30) | NO   |     | NULL    |                |
| serie   | int         | NO   |     | NULL    |                |
+---------+-------------+------+-----+---------+----------------+

    Insert into Alunos (nome,idade, curso, serie) values ("maria",17,"Des. Sistemas",1);

    select * from alunos;
    
    +---------+-------+-------+---------------+-------+
| idAluno | nome  | idade | curso         | serie |
+---------+-------+-------+---------------+-------+
|       1 | maria |    17 | Des. Sistemas |     1 |
+---------+-------+-------+---------------+-------+
 
       Insert into alunos (nome,idade,curso,serie) values ("joao", 15,"des. sistemas",1);
 
        select * from alunos;
        
        +---------+-------+-------+---------------+-------+
| idAluno | nome  | idade | curso         | serie |
+---------+-------+-------+---------------+-------+
|       1 | maria |    17 | Des. Sistemas |     1 |
|       2 | joao  |    15 | des. sistemas |     1 |
+---------+-------+-------+---------------+-------+
 
         insert into alunos (nome,idade,curso,serie) values ("lucas", 18, "des. sistemas",4);
 
           select * from alunos ;
           
           +---------+-------+-------+---------------+-------+
| idAluno | nome  | idade | curso         | serie |
+---------+-------+-------+---------------+-------+
|       1 | maria |    17 | Des. Sistemas |     1 |
|       2 | joao  |    15 | des. sistemas |     1 |
|       3 | lucas |    18 | des. sistemas |     4 |
+---------+-------+-------+---------------+-------+
 
            insert into alunos (nome,idade,curso,serie) values ("carla", 17, "des. sistemas",1);
 
             select * from alunos ;
             
             +---------+-------+-------+---------------+-------+
| idAluno | nome  | idade | curso         | serie |
+---------+-------+-------+---------------+-------+
|       1 | maria |    17 | Des. Sistemas |     1 |
|       2 | joao  |    15 | des. sistemas |     1 |
|       3 | lucas |    18 | des. sistemas |     4 |
|       4 | carla |    17 | des. sistemas |     1 |
+---------+-------+-------+---------------+-------+
 
               Select * from Alunos Where serie =1;
               
               +---------+-------+-------+---------------+-------+
| idAluno | nome  | idade | curso         | serie |
+---------+-------+-------+---------------+-------+
|       1 | maria |    17 | Des. Sistemas |     1 |
|       2 | joao  |    15 | des. sistemas |     1 |
|       4 | carla |    17 | des. sistemas |     1 |
+---------+-------+-------+---------------+-------+
 
                 Select * from Alunos order by nome ;
                 
 +---------+-------+-------+---------------+-------+
| idAluno | nome  | idade | curso         | serie |
+---------+-------+-------+---------------+-------+
|       4 | carla |    17 | des. sistemas |     1 |
|       2 | joao  |    15 | des. sistemas |     1 |
|       3 | lucas |    18 | des. sistemas |     4 |
|       1 | maria |    17 | Des. Sistemas |     1 |
+---------+-------+-------+---------------+-------+


                Select * from Alunos order by nome DESC;
  
               Select * from Alunos order by nome, SERIE ;
               
               +---------+-------+-------+---------------+-------+
| idAluno | nome  | idade | curso         | serie |
+---------+-------+-------+---------------+-------+
|       1 | maria |    17 | Des. Sistemas |     1 |
|       3 | lucas |    18 | des. sistemas |     4 |
|       2 | joao  |    15 | des. sistemas |     1 |
|       4 | carla |    17 | des. sistemas |     1 |
+---------+-------+-------+---------------+-------+
 
             update Alunos set nome='carla' where idAluno=4;
             
             +---------+-------+-------+---------------+-------+
| idAluno | nome  | idade | curso         | serie |
+---------+-------+-------+---------------+-------+
|       4 | carla |    17 | des. sistemas |     1 |
|       2 | joao  |    15 | des. sistemas |     1 |
|       3 | lucas |    18 | des. sistemas |     4 |
|       1 | maria |    17 | Des. Sistemas |     1 |
+---------+-------+-------+---------------+-------+

          select nome from Alunos;
 +-------+
| nome  |
+-------+
| maria |
| joao  |
| lucas |
| carla |
+-------+
          update Alunos set nome='carla', serie=2 where idAluno=4 ;
select nome, serie from Alunos;

+-------+-------+
| nome  | serie |
+-------+-------+
| maria |     1 |
| joao  |     1 |
| lucas |     4 |
| carla |     2 |
+-------+-------+

delete from Alunos where idAluno=4;

+-------+
| nome  |
+-------+
| maria |
| joao  |
| lucas |
+-------+
select nome from Alunos;
