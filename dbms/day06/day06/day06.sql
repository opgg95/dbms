SELECT 	*
FROM 	EMPLOYEES e 
;

-- substr(���ڿ�, ������ġ, ����)
SELECT 	SUBSTR('good morning john',1,4)
FROM	dual
;

SELECT 	SUBSTR('good morning john',8,4)
FROM	dual
;

SELECT 	SUBSTR('good morning john',8)
FROM	dual
;

SELECT 	SUBSTR('good morning john',-4)
FROM	dual
;

-- replace
SELECT 	REPLACE('good morning tom', 'morning', 'evenning')
FROM	dual
;

-- sysdate
SELECT 	SYSDATE 
FROM	dual
;

-- add_months : 7������ ���Ѵ�.
SELECT 	ADD_MONTHS(SYSDATE, 7), SYSDATE 
FROM	dual
;

-- ���� ���� ������ ��¥ : last_day
SELECT 	LAST_DAY(SYSDATE)
FROM	dual
;

-- ��¥ interval
SELECT 	SYSDATE + (INTERVAL '1' YEAR)
	,	SYSDATE + (INTERVAL '1' MONTH)
	,	SYSDATE + (INTERVAL '1' DAY)
	,	SYSDATE + (INTERVAL '1' HOUR)
	,	SYSDATE + (INTERVAL '1' MINUTE)
	,	SYSDATE + (INTERVAL '1' SECOND)
	,	SYSDATE 
FROM 	dual
;

-- to_char() : ���ڿ� ��ȯ
SELECT 	SYSDATE 
	,	TO_CHAR(sysdate, 'yyyy/mm/dd')
FROM	dual
;

SELECT 	SYSDATE 
	, 	TO_CHAR(sysdate, 'yyyymmdd')
	,	TO_CHAR(SYSDATE, 'yyyy-mm-dd')
	,	TO_CHAR(SYSDATE, 'yyyy-mm-dd HH24:mi:ss')
FROM	dual
;

SELECT 	*
FROM 	EMPLOYEES e 
;

-- to_date()
SELECT 	TO_DATE('2022/04/11') 
	,	'2022/04/11'
FROM	dual
;

-- nvl() : �ΰ��� �ٸ� �����ͷ� �����ϴ� �Լ�
SELECT 	*
FROM 	EMPLOYEES e 
;

SELECT 	FIRST_NAME , LAST_NAME 
	, 	NVL(COMMISSION_PCT,0) 
	-- ,	NVL(test, 'user') 
FROM 	EMPLOYEES e 
;

-- decode() : switch ���� ������ �ϴ� �Լ�
-- department_id�� 20�̸� Marketing -> MA / 60�̸� IT -> IT / 
-- 90�̸� Executive -> EX / ETC
SELECT 	DEPARTMENT_ID 
	,	DECODE(DEPARTMENT_ID, 20, 'MA', 60, 'IT', 90, 'EX', 'ETC') 
FROM 	DEPARTMENTS d 
;


SELECT 	*
FROM 	DEPARTMENTS d 
;

SELECT * FROM EMPLOYEES e ;

-- case() : else if ���� ���� ���� �Լ�
SELECT 	FIRST_NAME "fName" , LAST_NAME , DEPARTMENT_ID 
	,	CASE WHEN DEPARTMENT_ID = 20 THEN 'MA'
			 WHEN DEPARTMENT_ID = 60 THEN 'IT'
			 WHEN DEPARTMENT_ID = 90 THEN 'EX'
			 ELSE ''
		END "deptvalue"
FROM 	EMPLOYEES e 
;

-- ����
/*
 * 1. EMPLOYEES ���̺��� King�� ������ �ҹ��ڷ� �˻��ϰ�(�˻�����),
 * �����ȣ, ����, ������(�ҹ��� ���), �μ���ȣ�� ���
 * -- where last_name = king
 */
SELECT 	EMPLOYEE_ID , LAST_NAME ,FIRST_NAME 
	, 	DEPARTMENT_ID , LOWER(JOB_ID)   
FROM 	EMPLOYEES e 
WHERE 	LOWER(LAST_NAME) = 'king'	-- king
;

/*
 * 2. EMPLOYEES ���̺��� King�� ������ �빮�ڷ� �˻��ϰ�(�˻�����),
 * �����ȣ, ����, ������(�빮�� ���), �μ���ȣ�� ���
 * -- where last_name = KING
 */
SELECT 	EMPLOYEE_ID , LAST_NAME ,FIRST_NAME 
	, 	DEPARTMENT_ID , UPPER(JOB_ID)   
FROM 	EMPLOYEES e 
WHERE 	UPPER(LAST_NAME) = 'KING'	-- king
;

/*
 * 3. DEPARTMENTS �׺��� �μ���ȣ�� �μ��̸� ��ġ��ȣ(LOCATION_ID)�� 
 * ���Ͽ� ����ϵ��� �϶�
 */
SELECT 	DEPARTMENT_ID  || DEPARTMENT_NAME || LOCATION_ID 
FROM 	DEPARTMENTS d 
;

SELECT 	CONCAT(DEPARTMENT_ID ,CONCAT(DEPARTMENT_NAME, LOCATION_ID))     
FROM 	DEPARTMENTS d 
;

/*
 * 4. EMPLOYEES ���̺��� 30�� �μ� �� �����ȣ �̸��� ��� ���̵�
 * �����Ͽ� ����Ͽ���
 */
SELECT 	CONCAT(CONCAT(EMPLOYEE_ID, LAST_NAME), MANAGER_ID)   
FROM 	EMPLOYEES e
WHERE 	DEPARTMENT_ID = 30
;

/*
 * 5. EMPLOYEES ���̺��� SALARY + SALARY*COMMISSION_PCT�� 10000�̻��̸�, 'good',
 *  													 5000�̻��̸�, 'average',
 * 														 1�̻� 5000�̸��̸� 'bad'
 * 														 0�̸� 'no good'
 * 														 -> �˸��ƽ� grade
 *  ���� �򰡸� ����ϰ�, employee_id, first_name, salary, commission_pct,
 *  SALARY + SALARY*COMMISSION_PCT ���
 */
SELECT 	EMPLOYEE_ID , FIRST_NAME , SALARY , COMMISSION_PCT 
	,	SALARY + SALARY * nvl(COMMISSION_PCT, 0) sal
	,	CASE WHEN SALARY + SALARY * nvl(COMMISSION_PCT, 0) >= 10000 THEN 'good'
			 WHEN SALARY + SALARY * nvl(COMMISSION_PCT, 0) >= 5000 	THEN 'average'
			 WHEN SALARY + SALARY * nvl(COMMISSION_PCT, 0) >= 1 	THEN 'bad'
			  -- AND SALARY + SALARY * nvl(COMMISSION_PCT, 0) < 5000	
			 WHEN SALARY + SALARY * nvl(COMMISSION_PCT, 0) = 0	 	THEN 'no good'
		END  AS grade
FROM 	EMPLOYEES e 
;

-- distinct, group by
-- distinct : �÷��� �ߺ��� ���� ��ȸ
SELECT 	DISTINCT DEPARTMENT_ID 
FROM	EMPLOYEES e 
;

-- group by : �����͸� �׷����ؼ� �� ����� �������� ��� ����Ѵ�.
-- 			  ���� �Լ��� ¦�� �̷�� ����� �� �ִ�. 
SELECT 	DEPARTMENT_ID 
FROM 	EMPLOYEES e 
GROUP BY DEPARTMENT_ID 
;
	
SELECT 	DISTINCT DEPARTMENT_ID, SUM(SALARY)  
FROM 	EMPLOYEES e 
;

-- �μ��� �޿� �հ�
SELECT 	SUM(SALARY)  , DEPARTMENT_ID
FROM 	EMPLOYEES e 
GROUP BY DEPARTMENT_ID 
;

SELECT 	SUM(SALARY)  , DEPARTMENT_ID  
FROM 	EMPLOYEES e 
GROUP BY DEPARTMENT_ID  
;

SELECT 	* FROM EMPLOYEES e ;

-- �μ��� ������� ��� �޿��� ���غ���
SELECT 	DEPARTMENT_ID 	, SUM(SALARY)
	,	COUNT(SALARY)	, COUNT(EMPLOYEE_ID) 
	,	AVG(SALARY)  
FROM 	EMPLOYEES e
GROUP BY DEPARTMENT_ID 
;

SELECT 	* FROM EMPLOYEES e ORDER BY DEPARTMENT_ID ;

-- �μ���, ���޺� ������� ��� �޿��� ���غ���
SELECT 	COUNT(EMPLOYEE_ID), AVG(SALARY)
	,	DEPARTMENT_ID ,	JOB_ID 	
FROM 	EMPLOYEES e
GROUP BY DEPARTMENT_ID , JOB_ID 
ORDER BY DEPARTMENT_ID , JOB_ID 
;

-- having ��
-- where �������� �����Լ��� ����� �� ����.
-- HAVING  : �����Լ��� ������ ���Ǻ񱳸� �� �� ����Ѵ�.
-- 			 GROUP  BY ���� �Բ� ����Ѵ�.
SELECT 	DEPARTMENT_ID , COUNT(*)  
FROM 	EMPLOYEES e 
WHERE 	DEPARTMENT_ID IS NOT NULL 
GROUP BY DEPARTMENT_ID
HAVING 	COUNT(*) >= 10 
;

SELECT COUNT(*), COUNT(SALARY) , COUNT(EMPLOYEE_ID), COUNT(DEPARTMENT_ID)  
FROM EMPLOYEES e ;






















