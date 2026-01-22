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


















