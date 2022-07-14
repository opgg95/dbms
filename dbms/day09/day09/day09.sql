SELECT 	*
FROM 	EMPLOYEES e 
;

-- 10�� 40�� ����, ~ 50�� ���½ð�, 
/*
 * 	1. ����̸��� �� ����� ������ �̸��� ����϶�.
 */
SELECT 	e.FIRST_NAME AS empName, e.MANAGER_ID  
	, 	e2.FIRST_NAME AS mngName , e2.EMPLOYEE_ID 
FROM 	EMPLOYEES e 
	INNER JOIN EMPLOYEES e2  ON e.MANAGER_ID = e2.EMPLOYEE_ID 
;
SELECT * FROM EMPLOYEES e ;

/*
 *	2. ����̸��� �μ���� ������ ����ϴµ� ������ 3000 �̻��� ����� ����϶�
 */
SELECT 	e.FIRST_NAME , e.SALARY , d.DEPARTMENT_NAME 
FROM 	EMPLOYEES e
	LEFT OUTER JOIN DEPARTMENTS d  ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
WHERE 	e.SALARY >= 3000
;

/*
 *  3. �޿��� 3000���� 5000������ ����� �̸��� �μ����� ����϶�
 */

SELECT 	e.FIRST_NAME , e.SALARY , d.DEPARTMENT_NAME 
FROM 	EMPLOYEES e
	LEFT OUTER JOIN DEPARTMENTS d  ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
WHERE 	e.SALARY BETWEEN 3000 AND 5000
;

/*
 *  4. �޿��� 3000������ ����� �̸��� �޿�, �ٹ���(city)�� ����϶�
 */
SELECT 	e.FIRST_NAME , e.SALARY , d.DEPARTMENT_NAME, l.CITY  
FROM 	EMPLOYEES e
	LEFT OUTER JOIN DEPARTMENTS d  	ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
	LEFT OUTER JOIN LOCATIONS l 	ON d.LOCATION_ID = l.LOCATION_ID 
WHERE 	e.SALARY <= 3000
;

/*
 *  5. Steven King�� �μ����� ����϶�
 */
SELECT 	e.FIRST_NAME , e.SALARY , d.DEPARTMENT_NAME 
FROM 	EMPLOYEES e
	LEFT OUTER JOIN DEPARTMENTS d  ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
WHERE 	e.FIRST_NAME = 'Steven'
AND 	e.LAST_NAME  = 'King'
;

SELECT * FROM EMPLOYEES e ;

/*
 *  6. IT�μ����� �ٹ��ϰ� �ִ� ������� �̸�, �μ����� ����϶� 
 */
SELECT 	e.FIRST_NAME , e.SALARY , d.DEPARTMENT_NAME 
FROM 	EMPLOYEES e
	LEFT OUTER JOIN DEPARTMENTS d  ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
WHERE 	d.DEPARTMENT_NAME = 'IT'
;

/*
 *  7. ������ SA_MAN�� ����� �����ȣ, �̸�, �޿�, �μ���, �ٹ���(location_id)�� ����Ͽ���
 */
SELECT 	e.EMPLOYEE_ID , e.FIRST_NAME , e.SALARY , d.DEPARTMENT_NAME , d.LOCATION_ID  
FROM 	EMPLOYEES e
	LEFT OUTER JOIN DEPARTMENTS d  ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
WHERE 	e.JOB_ID = 'SA_MAN'
;

/*
 *  8. Employees ���̺�� Departments ���̺���,
 *  Departments ���̺� �������� �����ȣ, �̸�, ����(job_id),�μ���ȣ, �μ���,�ٹ�����
 *  ����϶� 
 */
SELECT 	e.EMPLOYEE_ID , e.FIRST_NAME , e.JOB_ID , d.DEPARTMENT_ID , d.DEPARTMENT_NAME , d.LOCATION_ID 
FROM 	EMPLOYEES e
	RIGHT OUTER JOIN DEPARTMENTS d  ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
;

----------------------------------------------------
-- ��� �޿����� ���� ���
SELECT 	ROUND(AVG(SALARY))  
FROM 	EMPLOYEES e 
;
-- 6462

SELECT 	EMPLOYEE_ID , FIRST_NAME , LAST_NAME , SALARY 
	,	(SELECT ROUND(AVG(SALARY)) FROM EMPLOYEES e )
FROM 	EMPLOYEES e 
WHERE 	SALARY < (SELECT ROUND(AVG(SALARY)) FROM EMPLOYEES e )
-- WHERE 	SALARY < ROUND(AVG(SALARY))
ORDER BY SALARY 
;

SELECT 	EMPLOYEE_ID , FIRST_NAME , LAST_NAME , SALARY 
FROM 	EMPLOYEES e 
WHERE 	SALARY < 6462
ORDER BY SALARY 
;

-- locations ���̺��� country_id �� 'US'�� location_id�� ����
-- �μ���ü�� ��ȸ�϶�
SELECT 	LOCATION_ID 
FROM 	LOCATIONS l 
WHERE 	COUNTRY_ID = 'US'
;
-- 1400, 1500, 1600, 1700

SELECT 	*
FROM 	DEPARTMENTS d
WHERE 	LOCATION_ID IN (SELECT 	LOCATION_ID 
						FROM 	LOCATIONS l 
						WHERE 	COUNTRY_ID = 'US')
;

SELECT 	*
FROM 	DEPARTMENTS d
WHERE 	LOCATION_ID IN (1400, 1500, 1600, 1700)
;

-- 30�б���
-- ������ ���� ���� ����� first_name, last_name ���
SELECT 	FIRST_NAME , LAST_NAME , SALARY 
FROM 	EMPLOYEES
WHERE 	SALARY = (SELECT MIN(SALARY) FROM EMPLOYEES  )
;

-- ������ ���� ���� ����� first_name, last_name, job_title ���
SELECT 	e.FIRST_NAME , e.LAST_NAME, j.JOB_TITLE , SALARY 
FROM 	EMPLOYEES e 
	INNER JOIN JOBS j  ON e.JOB_ID = j.JOB_ID 
WHERE 	e.SALARY = (SELECT MAX(SALARY) FROM EMPLOYEES e2)
;

SELECT 	*
FROM 	JOBS
;

SELECT 	*
FROM 	EMPLOYEES e 
;
-- 45�б���
/*
 * 1. EMPLOYEES���̺��� Kochhar �� �޿����� ���� �����
 * ������ �����ȣ, �̸�, ������(job_id), �޿��� ����϶�
 */
SELECT 	e.EMPLOYEE_ID  , e.FIRST_NAME , e.JOB_ID , e.SALARY 
FROM 	EMPLOYEES e 
WHERE 	SALARY > (	SELECT 	SALARY 
					FROM	EMPLOYEES e2 
					WHERE 	LAST_NAME = 'Kochhar')
;

/*
 * 2. EMPLOYEES���̺��� �޿��� ��պ��� ���� ����� 
 * �����ȣ, �̸�, ������, �޿�, �μ���ȣ�� ����϶�.
 */
SELECT 	EMPLOYEE_ID , e.FIRST_NAME , e.JOB_ID , e.DEPARTMENT_ID , e.SALARY 
FROM 	EMPLOYEES e 
WHERE 	SALARY < ( SELECT AVG(SALARY) FROM EMPLOYEES e2)
;















