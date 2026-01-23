SELECT * FROM salaries;
SELECT emp_no AS '사번', salary / 12 AS '원급'  FROM salaries ;

SELECT * FROM employees;
SELECT emp_no + 50, first_name FROM employees
WHERE first_name = '길동';

SELECT DISTINCT gender FROM employees;

-- salaries 테이블에서 salary 컬럼의 값을 월급이라고 가정
-- 1. 월급(기존값)
-- 2. 예상 연봉(salary * 12) 별칭은 " 예상 연봉"
-- 3. 5% 인상 후의 에상 연봉 (salary * 12 * 1.05) 별칭은  "인상 후 예상 연봉"

SELECT salary AS '월급', salary * 12 AS '예상 연봉', salary * 12 * 1.05 AS '인상 후 예상 연봉' FROM salaries;

SELECT salary AS '월급', salary * 12 * 1.05 AS '인상 후 예상 연봉' FROM salaries s ;


SELECT emp_no, salary, from_date, to_date FROM salaries s 
WHERE salary >= 80000;


SELECT * FROM employees
WHERE emp_no < 10005;


-- 입사일이 1960년 1월 1일 이후이면서 성별이 남자인 직원 조회

SELECT * FROM employees
WHERE hire_date > '1960-01-01' AND gender = 'M';

SELECT  *FROM titles t 
WHERE title = 'Senior Engineer' OR title = 'Engineer';

-- salaries 테이블에서 연봉이  50000 이상이면서 60000 이하인 직원 조회
SELECT * FROM salaries s 
WHERE salary > 50000 AND salary < 60000;

-- salaries 테이블에서 연봉이  50000 이상이면서 60000 이하인 직원 조회
SELECT * FROM salaries s 
WHERE salary BETWEEN 50000 AND 60000;

SELECT * FROM employees
WHERE hire_date BETWEEN '1995-01-01' AND '1995-12-31';

SELECT * FROM employees;
WHERE first_name LIKE 'N%';

SELECT * FROM employees
WHERE first_name LIKE '%en';

SELECT  * FROM employees
WHERE first_name LIKE '%ar%';

SELECT * FROM employees
WHERE first_name LIKE '_di';

SELECT  * FROM employees
WHERE first_name LIKE 'G__';


SELECT * FROM titles t 
WHERE to_date IS NOT NULL;


SELECT * FROM departments d 
WHERE dept_no in('d005', 'd009');


##############################################################
-- Q1. salaries 테이블에서 급여에 1000을 더한 값을 조회하세요.
SELECT salary + 1000  FROM salaries s ;

-- Q2. salaries 테이블에서 급여에서 세금 10%를 뺀 실수령액을 조회하세요.
SELECT salary * 0.9 FROM salaries s; 

-- Q3. salaries 테이블에서 연봉을 월급으로 계산하여 조회하세요.
SELECT salary / 12 FROM salaries s ;

-- Q4. employees 테이블에서 성별 목록을 중복 없이 조회하세요.
SELECT gender FROM employees;

-- Q5. titles 테이블에서 직급 목록을 중복 없이 조회하세요.
SELECT * FROM titles;
SELECT DISTINCT title FROM titles t ;

-- Q6. employees 테이블에서 사번이 10006인 사원을 조회하세요.
SELECT * FROM employees e 
WHERE emp_no = 100066;

-- Q7. salaries 테이블에서 급여가 60000 이상인 사원을 조회하세요.
SELECT * FROM salaries s 
WHERE salary > 60000;

-- Q8. employees 테이블에서 입사일이 1995년 이후인 사원을 조회하세요.
SELECT * FROM employees
WHERE hire_date > '1995-01-01';

-- Q9. employees 테이블에서 성별이 F인 사원을 조회하세요.
SELECT * FROM employees
WHERE gender = 'M';

-- Q10. dept_emp 테이블에서 부서 번호가 d005인 사원을 조회하세요.
SELECT * FROM dept_emp de 
WHERE emp_no = 'd005';

-- Q11. salaries 테이블에서 급여가 60000 이상이고 80000 이하인 사원을 조회하세요.
SELECT * FROM salaries s
WHERE salary BETWEEN 60000 AND 80000;

-- Q12. employees 테이블에서 성별이 M이거나 입사일이 1990년 이전인 사원을 조회하세요.
SELECT * FROM employees
WHERE gender = 'M' OR birth_date < '1990-01-01';

-- Q14. dept_emp 테이블에서 부서가 d001이고 현재 재직 중인 사원을 조회하세요.
SELECT * FROM dept_emp de
WHERE de.dept_no = 'd001' AND de.to_date ='9999-01-01';

-- Q15. salaries 테이블에서 급여가 40000 미만이거나 100000 초과인 사원을 조회하세요.
SELECT * FROM salaries s 
WHERE s.salary < 40000 OR s.salary > 100000;

-- Q16. employees 테이블에서 성별이 F이면서 1995년 이후 입사한 사원을 조회하세요.
SELECT * FROM employees
WHERE gender ='F' OR hire_date >='1996-01-01';

-- Q17. salaries 테이블에서 급여가 50000부터 70000 사이인 사원을 조회하세요.
SELECT * FROM salaries s 
WHERE s.salary BETWEEN 50000 AND 70000;

-- Q18. employees 테이블에서 입사일이 1990년부터 1995년 사이인 사원을 조회하세요.
SELECT * FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1995-12-31';

-- Q19. employees 테이블에서 사번이 10010부터 10020 사이인 사원을 조회하세요.
SELECT * FROM employees
WHERE emp_no BETWEEN 10010 AND 10020;

-- Q20. salaries 테이블에서 급여가 80000 이상 100000 이하인 사원을 조회하세요.
SELECT * FROM salaries s 
WHERE s.salary BETWEEN 80000 AND 100000;

-- Q21. dept_emp 테이블에서 부서 번호가 d003부터 d006 사이인 사원을 조회하세요.
SELECT * FROM dept_emp de
WHERE emp_no BETWEEN 'd003' AND 'd006';

-- Q22. employees 테이블에서 이름이 A로 시작하는 사원을 조회하세요.
SELECT * FROM employees
WHERE last_name LIKE 'A%';

-- Q23. employees 테이블에서 이름이 n으로 끝나는 사원을 조회하세요.
SELECT * FROM employees
WHERE first_name LIKE '%n';

-- Q24. employees 테이블에서 이름에 'an'이 포함된 사원을 조회하세요.
SELECT * FROM employees
WHERE first_name LIKE '%an%';

-- Q25. employees 테이블에서 이름이 5글자인 사원을 조회하세요.
SELECT * FROM employees
WHERE first_name LIKE '_____';

-- Q26. employees 테이블에서 성(last_name)에 'son'이 포함된 사원을 조회하세요.
SELECT * FROM employees e 
WHERE e.last_name LIKE '%son%';

-- Q27. titles 테이블에서 to_date가 NULL인 데이터를 조회하세요.
SELECT * FROM titles t 
WHERE to_date = NULL;

-- Q28. dept_emp 테이블에서 부서가 d001, d003, d005인 사원을 조회하세요.
SELECT * FROM dept_emp de 
WHERE dept_no in('d001','d03','d005'); 

-- Q29. employees 테이블에서 사번이 10001, 10005, 10010인 사원을 조회하세요.
SELECT * FROM employees e 
WHERE e.emp_no in(10001,10005,10010);

-- Q30. departments 테이블에서 부서명이 Sales 또는 Development인 부서를 조회하세요.
SELECT * FROM departments d 
WHERE dept_no = 'Sales' OR 'Development';





