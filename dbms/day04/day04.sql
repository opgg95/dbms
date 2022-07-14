SELECT * FROM tab;

-- �ּ�
/*
	���� ���� �ּ�
*/

/*
	������ ���۾�(DML) : select, insert, delete, update
*/

-- select
/*
 * select	�Ӽ��̸� / *
 * from		���̺��̸� 
 * where	�˻�����
 * and		�˻�����
 */

-- tab ��� ���̺��� tname �÷��� ��ȸ
SELECT	TNAME 
FROM 	tab;

-- employees ���̺��� ��� �׸� ��ȸ
SELECT 	*
FROM 	EMPLOYEES;

-- employees ���̺��� last_name �÷����� Austin�� ��� ��ȸ
SELECT 	*
FROM 	EMPLOYEES
WHERE 	LAST_NAME = 'Austin';

-- employees ���̺��� departmen_id 60�̰�,manager_id�� 102�� ��� ��ȸ
SELECT 	*
FROM 	EMPLOYEES
WHERE 	DEPARTMENT_ID  = 60
AND 	MANAGER_ID = 102
;

-- employees ���̺��� last_name�� Smith�� ����� employee_id��, last_name ��ȸ
SELECT 	EMPLOYEE_ID , LAST_NAME 
FROM 	EMPLOYEES
WHERE 	LAST_NAME = 'Smith'
;

-- 2��
-- employees ���̺��� department_id�� 100�̰� job_id�� FI_MGR�� ��� ��ȸ
SELECT 	*
FROM 	EMPLOYEES
WHERE 	DEPARTMENT_ID = 100
AND 	JOB_ID = 'FI_MGR'
;

-- employees ���̺��� first_name�� Guy�� ����� employee_id, first_name, last_name, job_id ��ȸ
SELECT 	EMPLOYEE_ID , FIRST_NAME , LAST_NAME , JOB_ID 
FROM 	EMPLOYEES e 
WHERE 	FIRST_NAME = 'Guy'
;

-- employees ���̺��� department_id�� 50�̰� manager_id�� 121�� ����� employee_id, first_name, last_name, job_id ��ȸ
SELECT 	EMPLOYEE_ID , FIRST_NAME , LAST_NAME , JOB_ID 
FROM 	EMPLOYEES e 
WHERE 	DEPARTMENT_ID = 50
AND 	MANAGER_ID = 121
;

-- ��Ī(as, �˸��ƽ�)
SELECT 	EMPLOYEE_ID AS "ID" , SALARY "SAL", DEPARTMENT_ID de
FROM 	EMPLOYEES e 
;

-- �Լ�
-- distinct : �ߺ�����
SELECT 	DISTINCT JOB_ID 
FROM 	EMPLOYEES e 
;

-- >=, >, <=, <
SELECT 	FIRST_NAME , LAST_NAME , SALARY 
FROM 	EMPLOYEES e 
WHERE 	SALARY >= 5000
;

SELECT 	*
FROM 	EMPLOYEES e 
WHERE 	SALARY < 2500
;

-- or
SELECT 	*
FROM 	EMPLOYEES e 
WHERE 	DEPARTMENT_ID = 50
OR 		MANAGER_ID = 100
;

-- not
-- EMPLOYEES : 107��,  DEPARTMENT_ID(50) : 45 -> 62
SELECT 	*
FROM 	EMPLOYEES e 
WHERE 	NOT(DEPARTMENT_ID = 50)
;

SELECT * FROM EMPLOYEES e WHERE EMPLOYEE_ID  = 178;

-- not <>
SELECT 	*
FROM 	EMPLOYEES e 
WHERE 	DEPARTMENT_ID <> 50
;

-- not !=
SELECT 	*
FROM 	EMPLOYEES e 
WHERE 	DEPARTMENT_ID != 50
;




