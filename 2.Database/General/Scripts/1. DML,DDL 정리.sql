-- employees라는 데이터베이스 선택
use employees;

select emp_no,first_name from employees;

select * from employees;

select emp_no, birth_date from employees;

select hire_date from employees;
select emp_no, from_date, to_date from dept_manager;
select * from departments;

update employees set birth_date = '2000-01-01' where emp_no = 1;

insert * into employees;

values (1,
          '0200-01-01',
          'jaeseop',
          'kim',
          'M',
          now());  
select * from employees;

INSERT INTO departments
VALUES ('d010',
        'Korea IT Department');

INSERT INTO employees
VALUES (2,
        '2002-01-01',
        'ranqian',
        'Ma',
        'F',
        now());

INSERT INTO dept_emp
VALUES (1,
        'd010',
        now(),
        '9999-01-01');
SELECT * FROM dept_emp;
SELECT *FROM employees;

UPDATE employees
SET first_name = '길동'
WHERE emp_no = 10001;
SELECT *FROM employees;

UPDATE employees
SET last_name = '홍',
    hire_date = now()
WHERE emp_no = 10001;

SELECT * FROM employees;

SELECT * FROM departments;
UPDATE departments
SET dept_name = 'Tech Sales'
WHERE dept_no = 'd007';
SELECT * FROM departments;

SELECT *FROM employees;
SELECT last_name FROM employees;
UPDATE employees
SET birth_date = '1977-07-07'
WHERE last_name = 'Erie';
SELECT * FROM employees
WHERE last_name ='Erie'; 

DELETE FROM employees
WHERE emp_no = 10005;
SELECT * FROM employees;

DELETE FROM employees
WHERE hire_date = '1993-05-12';
SELECT * FROM employees;

DELETE FROM employees
WHERE emp_no = 28847; 
SELECT  * FROM employees
WHERE emp_no = 28847; 



CREATE TABLE test_member (
    member_id varchar(50) comment '아이디',
    member_pwd varchar(225) comment '비밀번호',
    member_name varchar(50) comment '이름',
    member_age TINYINT comment '나이',
    member_in_date datetime comment '가입일' 
    );

DROP TABLE test_member;


CREATE TABLE free_board(
    borad_no int(2) comment '게시판 번호',
    borad_title varchar(100) comment '게시판 제목',
    borad_content text comment '게시판 내용',
    borad_date datetime comment '게시판 작성일',
    borad_view int(50) comment '게시판 조회수'
    );
SELECT * FROM free_board fb ;
INSERT INTO free_board 
VALUES (2,
        '안녕하세요',
        '안녕하세요바라방라라빙바아아',
        '2026-01-21 17:20:15',
        50);
SELECT * FROM free_board fb ;
decimal



CREATE TABLE ddl_alter_test(
     alter_id varchar(225),
     alter_name varchar(255),
     alter_as varchar(255)
     );

-- 테이블 이름 변경
ALTER TABLE ddl_alter_test RENAME TO ddl_alter;

-- 테이블 구조 변경(컬럼 변경)
ALTER TABLE ddl_alter 
MODIFY alter_as varchar(100);

SELECT *FROM ddl_alter da ;

-- 테이블 구조 변경(컬럼 추가)
ALTER TABLE ddl_alter 
ADD alter_pwd varchar(255);

-- 테이블 구조 변경(컬럼 삭제)
ALTER TABLE ddl_alter 
DROP COLUMN alter_as;

-- alter_name이라는 컬럼에 중복된 값이 들어가서는 안된다라는 조건을 추가
ALTER TABLE ddl_alter 
ADD CONSTRAINT alter_name_unique UNIQUE(alter_name);

-- "niko","짱구",'qwer1234!'
-- "test","짱구",'111111'

INSERT INTO ddl_alter 
VALUES ("niko",
        "짱구",
        'qwer1234!'
        );
SELECT *FROM ddl_alter;

INSERT INTO ddl_alter 
VALUES ("test",
        "짱구",
        '111111'
        );
-- MySQL에서는 지원x, 수정하려면 제거 후 다시 추가
-- ALTER TABLE ddl_alter 
-- RENAME CONSTRAINT alter_name_unique TO name_unique;


ALTER TABLE ddl_alter 
DROP CONSTRAINT alter_name_unique;



INSERT INTO ddl_alter 
VALUES ("test",
        "신짱구",
        '111111'
        );
SELECT * FROM ddl_alter da ;



CREATE TABLE test_employees(
     te_employee_id int,
     te_first_name varchar(50),
     te_last_name varchar(50),
     te_salary int,
     te_department varchar(50)
     ); 

ALTER TABLE test_employees RENAME TO staff;

ALTER TABLE staff
MODIFY te_department varchar(100);

ALTER TABLE staff
RENAME COLUMN te_last_name TO Surname;

ALTER TABLE staff
DROP COLUMN te_first_name;

ALTER TABLE staff 
ADD te_hire_date datetime;

ALTER TABLE staff 
ADD CONSTRAINT te_salary_check UNIQUE(te_salary);


DROP TABLE ddl_alter ;

-- free_board, staff, test_member

DROP TABLE free_board;
DROP TABLE staff;
















