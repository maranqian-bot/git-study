SELECT * FROM employees e 
ORDER BY birth_date DESC ;

SELECT  * FROM titles t 
ORDER BY to_date DESC ;

SELECT max(salary) FROM salaries s ;
SELECT min(salary) FROM salaries s ;
SELECT avg(salary) FROM salaries s ;
SELECT sum(salary) FROM salaries s ;
SELECT count(salary) FROM salaries s ; -- 조회된 컬럼의 개수
SELECT count(*) AS '직원 수 ' FROM employees;

SELECT count(*) FROM titles t 
WHERE t.title = 'Engineer';

SELECT count(*) FROM employees
WHERE hire_date > '1965-01-01';

SELECT min(emp_no) FROM employees e ;
SELECT max(emp_no) FROM employees e ;

SELECT min(emp_no), max(emp_no) FROM employees e ;

SELECT max(emp_no), birth_date FROM employees e 
GROUP BY birth_date;  


-- 주서별 직원 수 구하기
-- -부서 번호(dept_no) 조회

SELECT count(*), dept_no FROM dept_emp de 
GROUP BY dept_no ; 


SELECT count(*) AS 'cnt', gender FROM employees e 
GROUP BY gender;

SELECT count(*) AS '직원 수', title FROM titles t 
GROUP BY title
ORDER BY t.title DESC ; 

SELECT count(*) AS '직원 수', title FROM titles t 
GROUP BY title
HAVING count(*) >= 10000
ORDER BY t.title DESC ; 

-- dept_emp에서 직원 수가 5만 이상인 부서만 조회

SELECT count(*), dept_no FROM dept_emp de 
GROUP BY dept_no
HAVING count(*) >= 50000;


-- 현재 재직중인 직원들 중 직무별 직원 수가 200명 미만인 직무만 조회
-- to_date가 9999-01-01이 재직중

SELECT title, count(*) FROM titles t 
WHERE to_date = '9999-01-01'
GROUP BY title
HAVING count(*) < 200;


-- Q1. employees 테이블에서 사원을 사번 기준으로 오름차순 정렬하여 조회하세요.
SELECT * FROM employees e 
ORDER BY emp_no asc;

-- Q2. employees 테이블에서 사원을 사번 기준으로 내림차순 정렬하여 조회하세요.
SELECT * FROM employees e 
ORDER BY emp_no desc;
 
-- Q3. salaries 테이블에서 급여를 높은 순으로 정렬하여 조회하세요.
SELECT * FROM salaries s 
ORDER BY s.salary DESC ;
-- 
-- Q4. employees 테이블에서 입사일 기준으로 오래된 순서대로 정렬하여 조회하세요.
SELECT * FROM employees e 
ORDER BY hire_date ASC;
-- 
-- Q5. employees 테이블에서 성별 기준으로 정렬한 뒤 사번 기준으로 정렬하여 조회하세요.
SELECT * FROM employees e 
ORDER BY gender ASC, emp_no ASC ;

-- Q6. salaries 테이블에서 가장 높은 급여를 조회하세요.
SELECT max(salary) FROM salaries s;

-- 
-- Q7. salaries 테이블에서 가장 낮은 급여를 조회하세요.
SELECT min(salary) FROM salaries s ;
-- 
-- Q8. salaries 테이블에서 평균 급여를 조회하세요.
SELECT avg(salary) FROM salaries s ;
-- 
-- Q9. salaries 테이블에서 전체 급여 합계를 조회하세요.
SELECT sum(salary) FROM salaries s ;
-- 
-- Q10. employees 테이블에서 전체 사원 수를 조회하세요.
SELECT sum(emp_no) FROM employees e  ;
-- 
-- Q11. employees 테이블에서 성별별 사원 수를 조회하세요.
SELECT count(*)  FROM employees e  
WHERE gender = 'M';

SELECT count(*)  FROM employees e  
WHERE gender = 'F';

-- 
-- Q12. dept_emp 테이블에서 부서별 사원 수를 조회하세요.
SELECT * FROM dept_emp de;
SELECT dept_no, count(*)   FROM dept_emp de
GROUP BY dept_no;

-- 
-- Q13. titles 테이블에서 직급별 사원 수를 조회하세요.
SELECT * FROM titles;
SELECT count(*) title FROM titles t 
GROUP BY title;
-- 
-- Q14. salaries 테이블에서 사번별 평균 급여를 조회하세요.
SELECT * from salaries;
SELECT emp_no, avg(salary) FROM salaries s 
GROUP BY emp_no;
-- 
-- Q15. employees 테이블에서 입사 연도별 사원 수를 조회하세요.
SELECT * FROM employees e ;
SELECT count(*) hire_date FROM employees e 
GROUP BY hire_date ;
-- 
-- Q16. 성별별 사원 수 중 100000명 이상인 경우만 조회하세요.
SELECT gender,count(*)FROM employees e 
GROUP BY gender
HAVING count(*) >= 100000;
-- 
-- Q17. 부서별 사원 수 중 20000명 이상인 부서만 조회하세요.
SELECT emp_no , count(*) FROM employees e 
GROUP BY e.emp_no 
HAVING count(*) >= 20000;
-- 
-- Q18. 직급별 사원 수 중 50000명 이상인 직급만 조회하세요.
SELECT title, count(*)  FROM titles t 
GROUP BY t.title
HAVING count(*) >= 50000;

-- 
-- Q19. 사번별 평균 급여가 80000 이상인 사원만 조회하세요.
SELECT emp_no, avg(salary)  FROM salaries s 
GROUP BY emp_no
HAVING avg(s.salary) >= 80000; 

-- Q20. 입사 연도별 사원 수 중 10000명 이상인 연도만 조회하세요
SELECT count(*), YEAR(hire_date) FROM employees e 
GROUP BY year(hire_date)
HAVING count(*) >= 10000;















