SELECT  * FROM EMPLOYEES e ;

-- 10�� 50��
/*
 * 1. EMPLOYEES ���̺��� 100�� �μ��� �ּ� �޿�����
 * �ּ� �޿��� ���� �ٸ� ��� �μ�(department_id), �ּұ޿�(salary)�� ����϶� 
 */
SELECT 	DEPARTMENT_ID , MIN(SALARY) 
FROM 	EMPLOYEES e
GROUP BY DEPARTMENT_ID 
HAVING 	MIN(SALARY) >  (SELECT 	MIN(SALARY) 
						FROM 	EMPLOYEES e
						WHERE 	DEPARTMENT_ID = 100)
;

SELECT 	MIN(SALARY) 
FROM 	EMPLOYEES e
WHERE 	DEPARTMENT_ID = 100
;


/*
 * 2. EMPLOYEES ���̺��� ��� ��ȣ�� 123�� ����� ������ ����,
 * �����ȣ�� 192�� ����� �޿����� ���� ����� �����ȣ, �̸�, ����(job_id), �޿��� ����϶�
 */
SELECT 	EMPLOYEE_ID , FIRST_NAME , JOB_ID , SALARY 
FROM 	EMPLOYEES e 
WHERE 	JOB_ID = (SELECT job_id FROM EMPLOYEES e WHERE EMPLOYEE_ID = 123)
AND 	SALARY > (SELECT salary FROM EMPLOYEES e WHERE EMPLOYEE_ID = 192)
;

-- ��� ��ȣ�� 123�� ����� ����
SELECT job_id FROM EMPLOYEES e WHERE EMPLOYEE_ID = 123;

-- �����ȣ�� 192�� ����� �޿�
SELECT salary FROM EMPLOYEES e WHERE EMPLOYEE_ID = 192;

/*
 * 3. EMPLOYEES ���̺��� 50�� �μ��� �ּ� �޿��� �޴� ������� ���� �޿��� �޴� �����
 * �����ȣ, �̸�, ����(job_id), �Ի�����, �޿�, �μ���ȣ�� ����϶�.
 * ��, 50�� �μ��� ����
 */
SELECT 	EMPLOYEE_ID, FIRST_NAME , JOB_ID , HIRE_DATE , SALARY , DEPARTMENT_ID 
FROM 	EMPLOYEES e 
WHERE 	SALARY > (	SELECT MIN(salary) 
					FROM EMPLOYEES e 
					WHERE DEPARTMENT_ID = 50)
AND 	DEPARTMENT_ID <> 50
;

-- 50�� �μ��� �ּ� �޿��� �޴� ����� �޿�
SELECT MIN(salary) FROM EMPLOYEES e WHERE DEPARTMENT_ID = 50;


/*
 * 4. EMPLOYEES ���̺��� 50�� �μ��� �ִ� �޿��� �޴� ������� ���� �޿��� �޴� �����
 * �����ȣ, �̸�, ����(job_id), �Ի�����, �޿�, �μ���ȣ�� ����϶�.
 * ��, 50�� �μ��� ����
 */
SELECT 	EMPLOYEE_ID, FIRST_NAME , JOB_ID , HIRE_DATE , SALARY , DEPARTMENT_ID 
FROM 	EMPLOYEES e 
WHERE 	SALARY > (	SELECT MAX(salary) 
					FROM EMPLOYEES e 
					WHERE DEPARTMENT_ID = 50)
AND 	DEPARTMENT_ID <> 50
;

/*
 * 5. EMPLOYEES ���̺��� ���� ���� ����� ���� �ִ� �μ� ��ȣ��, ������� ����϶�.
 */
SELECT 	DEPARTMENT_ID , COUNT(*) 
FROM 	EMPLOYEES e
GROUP BY DEPARTMENT_ID
HAVING 	COUNT(DEPARTMENT_ID) = (SELECT MAX(COUNT(DEPARTMENT_ID))   
								FROM EMPLOYEES e 
								GROUP BY DEPARTMENT_ID) 
;
 
-- ���� ���� ����� ���� �ִ� �μ�
SELECT MAX(COUNT(DEPARTMENT_ID))   
FROM EMPLOYEES e 
GROUP BY DEPARTMENT_ID ;

SELECT COUNT(*)  
FROM EMPLOYEES e 
GROUP BY DEPARTMENT_ID 
ORDER BY DEPARTMENT_ID ;

------------------------------------------------------------
-- TABLE ����
CREATE 	TABLE EMPLOYEES2(
	EMPLOYEE_ID		NUMBER(10),
	NAME			VARCHAR2(20),
	SALARY			NUMBER(7,2)
);

-- ���� ���̺�� �����ϰ� �ۼ�
CREATE TABLE EMPLOYEES3
AS
SELECT * FROM EMPLOYEES e ;

SELECT * FROM EMPLOYEES3;

SELECT * FROM EMPLOYEES2 e ;

-- ���̺� ����
ALTER TABLE EMPLOYEES2 ADD(
	MANAGER_ID	VARCHAR2(20)
);

-- �÷� ����
ALTER TABLE EMPLOYEES2 MODIFY(
	MANAGER_ID	VARCHAR2(30)
);

-- �÷� ����
--ALTER TABLE EMPLOYEES2 DROP COLUMN MANAGER_ID;

-- ���̺� ����
--DROP TABLE EMPLOYEES3 ;

SELECT * FROM EMPLOYEES2 e ;

-- ������ �Է�
INSERT INTO EMPLOYEES2 VALUES(1, '����1', 30000);
INSERT INTO EMPLOYEES2 VALUES(2, '����2', 3000);
INSERT INTO EMPLOYEES2 VALUES(3, '����3', 50000);
INSERT INTO EMPLOYEES2 VALUES(4, '����4', 39000);
INSERT INTO EMPLOYEES2 VALUES(5, '����5', 2000);

-- TRUNCATE 
--TRUNCATE TABLE EMPLOYEES2 ;






















