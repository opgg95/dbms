SELECT 	*
FROM 	EMPLOYEES e 
;

-- salary 4000 ~ 8000, first_name, last_name, salary
-- 43��
SELECT 	FIRST_NAME , LAST_NAME , SALARY 
FROM 	EMPLOYEES e 
WHERE 	SALARY >= 4000
AND 	SALARY <= 8000
;

-- between A and B
SELECT 	FIRST_NAME , LAST_NAME , SALARY 
FROM 	EMPLOYEES e 
WHERE 	SALARY BETWEEN 4000 AND 8000	
;			

-- salary 6500, 7700, 13000�� ����� first_name, last_name, salary ��ȸ
SELECT 	FIRST_NAME , LAST_NAME , SALARY 
FROM 	EMPLOYEES e 
WHERE 	SALARY = 6500
OR 		SALARY = 7700
OR 		SALARY = 13000
;

-- in()
SELECT 	FIRST_NAME , LAST_NAME , SALARY 
FROM 	EMPLOYEES e 
WHERE 	SALARY IN (6500, 7700, 13000)
;

-- employees ���̺��� employee_id, first_name, last_name, job_id, manager_id, salary�� ��ȸ
-- department_id �� 10 �Ǵ� 30 �Ǵ� 100 �Ǵ� 90�� ���ϰ�,
-- salary�� 5000�̻� 10000���� �̰�
-- manager_id�� 100�� �ƴ� ����� ��ȸ
-- 20��
SELECT 	EMPLOYEE_ID , FIRST_NAME , LAST_NAME , JOB_ID 
	,	MANAGER_ID , SALARY 
FROM 	EMPLOYEES e 
WHERE 	DEPARTMENT_ID IN (10, 30, 100, 90)
AND 	SALARY BETWEEN 5000 AND 10000 
AND 	MANAGER_ID <> 100
;

-- like -> D�� �����ϴ� ���
SELECT 	FIRST_NAME , LAST_NAME 
FROM 	EMPLOYEES e 
WHERE 	FIRST_NAME LIKE 'D%'
;

-- like -> d�� ������ ���
SELECT 	FIRST_NAME , LAST_NAME 
FROM 	EMPLOYEES e 
WHERE 	FIRST_NAME LIKE '%d'
;

-- like -> �̸� 3��° �ڸ��� e�� ���� ���
SELECT 	FIRST_NAME , LAST_NAME 
FROM 	EMPLOYEES e 
WHERE 	FIRST_NAME LIKE '__e%'
;

-- is null
SELECT 	FIRST_NAME , LAST_NAME , JOB_ID , COMMISSION_PCT 
FROM 	EMPLOYEES e 
WHERE 	COMMISSION_PCT IS NULL 
;

-- is not null
SELECT 	FIRST_NAME , LAST_NAME , JOB_ID , COMMISSION_PCT 
FROM 	EMPLOYEES e 
WHERE 	COMMISSION_PCT IS NOT NULL 
;

-- order by ASC -> ��������
SELECT 	*
FROM 	EMPLOYEES e 
ORDER BY FIRST_NAME ASC 
;

-- ��������
SELECT 	*
FROM 	EMPLOYEES e 
ORDER BY FIRST_NAME
;

-- order by DESC - ��������
SELECT 	*
FROM 	EMPLOYEES e 
ORDER BY SALARY DESC 
;

-- �հ� sum()
SELECT 	sum(SALARY)
FROM 	EMPLOYEES e 
;

-- count
SELECT 	COUNT(EMPLOYEE_ID)
FROM 	EMPLOYEES e 
;

-- ��� �μ��� ������ �ִ°�? 55��
SELECT 	COUNT(DISTINCT DEPARTMENT_ID ) 
FROM 	EMPLOYEES e 
;

-- EMPLOYEES ���̺� ���� first_name count��, �ߺ��� ������ first_name count ��ȸ
SELECT 	COUNT(FIRST_NAME) , COUNT(DISTINCT FIRST_NAME ) 
FROM 	EMPLOYEES e 
;

-- avg : ���
SELECT 	AVG(SALARY) 
FROM 	EMPLOYEES e 
;

-- department_id 80�� �޿����
SELECT 	AVG(SALARY) 
FROM 	EMPLOYEES e 
WHERE 	DEPARTMENT_ID = 80
;

-- max : �ִ밪
SELECT 	MAX(SALARY) 
FROM 	EMPLOYEES e 
;

-- ���� ���߿� �Ի��� ���
SELECT 	MAX(HIRE_DATE) 
FROM 	EMPLOYEES e 
;

-- min : �ּҰ�
SELECT 	MIN(HIRE_DATE) 
FROM 	EMPLOYEES e 
;

SELECT 	MIN(SALARY)
FROM 	EMPLOYEES e 
;

-- ���밪 : abs
SELECT 	ABS(-23) 
FROM	dual
;

SELECT 	ABS(23) AS "abs"
FROM	dual
;

-- �ݿø� : round()
SELECT 	ROUND(0.123) , ROUND(0.543) 
FROM	dual
;
	
SELECT 	ROUND(0.123) , ROUND(2.546) 
FROM	dual
;
	
-- ���� : trunc
SELECT 	TRUNC(1234.123456789) 
FROM	dual
;

SELECT 	TRUNC(1234.123456789, 2) 
FROM	dual
;

SELECT 	TRUNC(1234.123456789, -1) 
FROM	dual
;

-- 1�� 50��, 
-- 1. salary�� 12000 �̻�Ǵ� �������� last_name, salary�� ������������ ��ȸ
--	  salary �� ��������
SELECT 	LAST_NAME ,SALARY 
FROM 	EMPLOYEES e 
WHERE 	SALARY >= 12000
ORDER BY SALARY
;

SELECT 	FIRST_NAME , LAST_NAME 
FROM 	EMPLOYEES e 
ORDER BY FIRST_NAME , LAST_NAME DESC 
;

-- 2. �����ȣ�� 176�� ����� last_name, department_id ��ȸ
SELECT 	LAST_NAME, DEPARTMENT_ID 
FROM 	EMPLOYEES e 
WHERE 	EMPLOYEE_ID = 176
;

-- 3. ������ 5000���� 12000�� ���� �̿��� ������� last_name �� salary ��ȸ
SELECT 	LAST_NAME , SALARY 
FROM 	EMPLOYEES e 
WHERE 	NOT SALARY BETWEEN 5000 AND 12000
;

-- 4. 20�� �μ� �Ǵ� 50�� �μ� ���� �ٹ��ϴ� ��� ������� last_name, department_id��
-- 	  ���ĺ� ������ ��ȸ
SELECT 	LAST_NAME , DEPARTMENT_ID 
FROM 	EMPLOYEES e 
WHERE 	DEPARTMENT_ID = 20
OR 		DEPARTMENT_ID = 50
ORDER BY LAST_NAME ASC 
;

-- 5. 20�� �� 50�� �μ����� �ٹ��ϸ�, ������ 5000 �̻� 12000 ������ �������
-- 	  last_name, salary�� ��ȸ
SELECT 	LAST_NAME , SALARY , DEPARTMENT_ID 
FROM 	EMPLOYEES e 
WHERE 	SALARY BETWEEN 5000 AND 12000
AND		DEPARTMENT_ID IN (20, 50)
;

-- 6. last_name ù ���ڰ� A�� ������� last_name�� ��ȸ
SELECT 	LAST_NAME 
FROM 	EMPLOYEES e 
WHERE 	LAST_NAME LIKE 'A%'
;

-- 7. manager_id�� ���� ����� last_name�� job_id�� ��ȸ
SELECT 	LAST_NAME , JOB_ID 
FROM 	EMPLOYEES e 
WHERE 	MANAGER_ID IS NULL 
;

-- 8. Ŀ�̼��� �ִ� ��� ������� last_name, salary, Ŀ�̼��� ��ȸ.
-- 	  ���� �������� ��ȸ�Ѵ�.
SELECT 	LAST_NAME , SALARY , COMMISSION_PCT 
FROM 	EMPLOYEES e 
WHERE 	COMMISSION_PCT IS NOT NULL 
ORDER BY SALARY DESC 
;

-------------------------------------------------------------------------
-- concat(char1, char2) : ���ڿ� ���� ����
SELECT 	CONCAT('Hello','bye') , CONCAT('good','bad') 
FROM 	dual
;

SELECT  CONCAT('good','bad') , 'good' || 'bad'
FROM	dual
;

-- initcap - ù ���ڸ� �빮�ڷ�
SELECT 	INITCAP('good morning') 
FROM 	dual
;

-- ��/�ҹ���
-- lower(char), upper(char)
SELECT 	LOWER('GooD') , UPPER('good') 
FROM	dual
;

-- lpad(��, �� ���ڱ���, ä����)
SELECT 	LPAD('good', 5) 	"LPAD1"
	,	LPAD('good', 7, '#')"LPAD2" 
	,	LPAD('good', 8, 'L')"LAPD3"
FROM 	dual
;

-- RPAD(��, �� ���ڱ���, ä����)
SELECT 	RPAD('good', 5) 	"RPAD1"
	,	RPAD('good', 7, '#')"RPAD2" 
	,	RPAD('good', 8, 'L')"RAPD3"
FROM 	dual
;

-- LTRIM(���ڿ�, �ɼ�)
SELECT 	LTRIM('goodbye','g') 
	,	LTRIM('goodbye','o')
	,	LTRIM('goodbye','go')
	,	LTRIM('oooooodbye','o')
FROM	dual
;

-- RTRIM(���ڿ�, �ɼ�)
SELECT 	RTRIM('goodbye','e') 
	,	RTRIM('goodbye','i')
	,	RTRIM('goodbye','ye')
	,	RTRIM('goodbyeooooo','o')
FROM	dual
;










