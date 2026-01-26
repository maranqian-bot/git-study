-- Q1. 사원의 사번(emp_no)과 급여(salary)를 함께 조회하세요.

SELECT emp_no, salary FROM salaries s ;

-- Q2. 사원의 사번(emp_no), 이름(first_name)과 부서 정보(dept_name)를 함께 조회하세요.

SELECT * FROM employees e ; 
SELECT * FROM dept_emp de ;
SELECT * FROM departments d ;
SELECT emp_no, first_name,dept_name 
FROM employees
JOIN departments d ON d.dept_no = d.dept_no ;

-- 
-- Q3. 현재 재직 중인 사원의 이름(first_name)과 부서(dept_name)를 조회하세요.
SELECT * FROM (SELECT e.first_name,d.dept_name FROM departments d 
               JOIN dept_emp de ON d.dept_no = de.dept_no 
               JOIN employees e ON e.emp_no = de.emp_no)t;

-- 
-- Q4. 급여가 80000 이상인 사원의 이름(first_name)과 급여(salary)를 조회하세요. 
SELECT * FROM (SELECT e.first_name , s.salary AS over_salary FROM employees e 
               JOIN salaries s ON e.emp_no  = s.emp_no )t
               WHERE over_salary >= 80000;
-- 
-- Q5. 사원의 이름(first_name)과 급여(salary)를 급여가 높은 순으로 조회하세요.
SELECT * FROM (SELECT e.first_name, s.salary FROM employees e 
               JOIN salaries s ON e.emp_no = s.emp_no
               ORDER BY s.salary DESC)t;

-- 
-- Q6. 부서 이름(dept_name)과 부서별 사원 수(count)를 조회하세요.
SELECT count(*), d.dept_name FROM dept_emp de 
JOIN departments d ON de.dept_no = d.dept_no
GROUP BY d.dept_name;  

SELECT * FROM dept_emp;
SELECT * FROM departments;

-- 
-- Q7. 부서별 사원 수가 20000명 이상인 부서의 이름(dept_name)과 사원수(count)만 조회하세요.
SELECT * FROM (SELECT count(*), d.dept_name FROM dept_emp de
                 JOIN departments d ON de.dept_no = d.dept_no
                 GROUP BY d.dept_name
                 HAVING count(*)>=20000)t;

-- 
-- Q8. 성별이 F인 사원의 이름(first_name)과 부서(dept_name)를 조회하세요.
SELECT * FROM (SELECT e.first_name, e.gender , d.dept_name FROM departments d 
               JOIN dept_emp de ON d.dept_no = de.dept_no 
               JOIN employees e ON e.emp_no = de.emp_no 
               WHERE e.gender = 'F')t;
              
-- 
-- Q9. 입사일이 1995년 이후인 사원의 이름(first_name)과 부서(dept_name)를 조회하세요.
SELECT * FROM (SELECT e.first_name, e.hire_date  , d.dept_name FROM departments d 
               JOIN dept_emp de ON d.dept_no = de.dept_no 
               JOIN employees e ON e.emp_no = de.emp_no  
               WHERE e.hire_date >= '1996-01-01' )t;

-- 
-- Q10. 부서 이름(dept_name)과 부서별 평균 급여(avg_salary)를 조회하세요.
SELECT * FROM (SELECT d.dept_name, avg(s.salary) FROM departments d 
                JOIN dept_emp de ON d.dept_no = de.dept_no
                JOIN salaries s ON de.emp_no = s.emp_no
                GROUP BY d.dept_name)t;

-- Q11. 현재 재직 중인 사원의 이름, 부서, 급여를 급여 내림차순으로 조회하세요.
SELECT * FROM (SELECT e.first_name, e.last_name, d.dept_name, s.salary, de.to_date FROM departments d 
               JOIN dept_emp de ON d.dept_no = de.dept_no
               JOIN salaries s ON de.emp_no = s.emp_no
               JOIN employees e ON e.emp_no = s.emp_no 
               WHERE de.to_date = '9999-01-01'
               ORDER BY s.salary DESC)t;
               
-- 
-- Q12. 부서별 평균 급여가 70000 이상인 부서만 조회하세요.

SELECT * FROM (SELECT d.dept_name, avg(s.salary) AS avg_salaryy FROM departments d 
                JOIN dept_emp de ON d.dept_no = de.dept_no
                JOIN salaries s ON de.emp_no = s.emp_no
                GROUP BY d.dept_name
                HAVING  avg_salaryy >= 70000 )t;
               

-- 
-- Q13. 직급별 사원 수를 조회하세요.
SELECT * FROM titles;
SELECT count(*), title FROM titles t 
GROUP BY title;
-- 
-- Q14. 급여 상위 사원의 이름, 직급, 급여를 조회하세요.
SELECT * FROM (SELECT e.first_name, e.last_name, t.title, s.salary FROM departments d 
               JOIN dept_emp de ON d.dept_no = de.dept_no
               JOIN salaries s ON de.emp_no = s.emp_no
               JOIN employees e ON e.emp_no = s.emp_no 
               JOIN titles t ON t.emp_no = s.emp_no
               ORDER BY s.salary DESC )t;
-- 
-- --------------------------------------------------------- LEFT JOIN
-- Q15. 모든 사원과 부서 정보를 조회하세요 (부서가 없어도 포함).
-- SELECT e.emp_no, e.first_name, d.dept_name
-- FROM employees e
-- LEFT JOIN dept_emp de ON e.emp_no = de.emp_no
-- LEFT JOIN departments d ON de.dept_no = d.dept_no;









