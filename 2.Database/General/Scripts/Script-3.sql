CREATE TABLE member_notnull(
   id varchar(50) NOT NULL,
   pwd varchar(250) NOT NULL,
   name varchar(50),
   sge int,
   in_date datetime
);

DROP TABLE member_notnull ;

INSERT INTO member_notnull
VALUES('test','1234qwer' , NULL ,NULL , now());

SELECT * FROM member_notnull;

INSERT INTO  member_notnull(id, pwd, in_date)
VALUES('test', '1234qwer',now());


SELECT * FROM member_notnull mn ;

###############################

CREATE TABLE member_unique(
    id varchar(50) NOT NULL UNIQUE,
    pwd varchar(250) NOT NULL
    );

INSERT INTO member_unique VALUES ('test', '1234qwer');
INSERT INTO member_unique VALUES ('test', '1234qwer');




###########################


CREATE TABLE member_check(
gender varchar(1) CHECK(gender IN ('w', 'm'))
);

INSERT INTO member_check values('w');
INSERT INTO member_check values('m');
INSERT INTO member_check values('asdfg');

SELECT * FROM member_check;

##########################


CREATE TABLE member_default(
     id varchar(50),
     in_date datetime DEFAULT now()
     );
INSERT INTO member_default(id) values('test');
SELECT * FROM member_default;


#############################################


CREATE TABLE member_pk(
   memebr_pk_id int PRIMARY KEY auto_increment ,
   id varchar(50)
   );

DROP TABLE member_pk;


INSERT INTO member_pk values(1, 'test');
INSERT INTO member_pk values(null, 'test');
SELECT * FROM member_pk; 



###########################################

CREATE TABLE member_primary(
   member_primary_id int PRIMARY KEY AUTO_INCREMENT,
   id varchar(50)
);

CREATE TABLE board_foregin(
    board_foregin_id int PRIMARY KEY AUTO_INCREMENT,
    title varchar(300),
    writer_id int,
    CONSTRAINT fk_writer FOREIGN KEY (writer_id)
    REFERENCES member_primary(member_primary_id)
    ON DELETE CASCADE 
    );

DROP TABLE board_foregin;



INSERT INTO member_primary(id)
VALUES ('test1'),
       ('test2'),
       ('test3');



INSERT INTO board_foregin(title, writer_id)
VALUES ('게시글 제목!',1);
o  
SELECT * FROM board_foregin; 

DELETE FROM member_primary WHERE member_primary_id = 1;
SELECT * FROM member_primary;






