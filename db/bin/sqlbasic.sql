employee_id, first_name, last_name, email, phone_number, hire_date, job_id,
salary, commission_pct, manager_id, department_id

--1. 급여가 15000 이상인 직원들의 이름, 급여, 부서id를 조회하시오.
select first_name, last_name, salary, department_id
from employees
where salary >= 15000


--
2. 직원 중에서 연봉이 170000 이상인 직원들의 이름, 연봉을 조회하시오.
   연봉은 급여(salary)에 12를 곱한 값입니다.
   
select first_name, last_name, salary*12 연봉
from employees
where salary*12 >= 170000

3. 직원 중에서 부서id가 없는 직원의 이름과 급여를 조회하시오.
select first_name, last_name, salary
from employees
where department_id is null


4. 2004년 이전에 입사한 직원의 이름, 급여, 입사일을 조회하시오.
select first_name, last_name, salary, hire_date
from employees
where hire_date < '2004-01-01'

1. 80, 50 번 부서에 속해있으면서 급여가 13000 이상인 직원의 이름, 급여, 부서id
를 조회하시오.
select first_name, last_name, salary, department_id
from employees
where salary >= 13000 and department_id in (80, 50)


2. 2005년 이후에 입사한 직원들 중에서 급여가 1300 이상 20000 이하인 직원들의 
이름, 급여, 부서id, 입사일을 조회하시오.
select first_name, last_name, salary, department_id, hire_date
from employees
where hire_date >= '2005-01-01' and  salary between 1300 and 20000



1. 80, 50 번 부서에 속해있으면서 급여가 13000 이상인 직원의 이름, 급여, 부서id
를 조회하시오.
select first_name, last_name , salary, department_id
from employees
where department_id in (80, 50) and salary >= 13000

2. 2005년 이후에 입사한 직원들 중에서 급여가 1300 이상 30000 이하인 직원들의 
이름, 급여, 부서id, 입사일을 조회하시오.

select first_name, last_name, salary, department_id, hire_date
from employees
where (salary between 1300 and 30000) and hire_date >= '2005-01-01'


3. 2005년도 입사한 직원의 정보만 출력하시오.
select * from employees where hire_date >='2005-01-01'


4. 이름이 D로 시작하는 직원의 이름, 급여, 입사일을 조회하시오.
select first_name, last_name, salary, hire_date
from employees
where first_name like 'D%'


5. 12월에 입사한 직원의 이름, 급여, 입사일을 조회하시오.
select first_name, salary, hire_date
from employees
where hire_date like '____'


6. 이름에 le 가 들어간 직원의 이름, 급여, 입사일을 조회하시오.
select first_name, salary, hire_date
from employees
where first_name like










