SELECT 	*
FROM 	EMPLOYEES e 
;


/*
 *  ����1.
 *	EMPLOYEES ���̺��� job_id�� 'SA'�� �����ϴ� ����� ���Ͽ�
 *	�޿��� ���, �ְ��, ������, �հ踦 ����϶�
 */
SELECT 	AVG(SALARY),	MAX(SALARY),	MIN(SALARY), SUM(SALARY)  
FROM 	EMPLOYEES e
WHERE 	JOB_ID LIKE 'SA%'
;

/*
 *  ����2. 
 *  EMPLOYEES ���̺� ��ϵǾ� �ִ� �����, commission_pct�� null�� �ƴ� �ο���,
 *  salary ���, ��ϵǾ� �ִ� �μ��� ���� ����ϴ�. 
 */
SELECT 	COUNT(*)
	,	COUNT(COMMISSION_PCT)	
	,	ROUND(AVG(SALARY))
	,	COUNT( DISTINCT  DEPARTMENT_ID  ) 
FROM 	EMPLOYEES e
;

SELECT 	COUNT(*)
	,	COUNT(COMMISSION_PCT)	
	,	ROUND(AVG(SALARY))
	,	COUNT( DISTINCT  DEPARTMENT_ID  ) 
FROM 	EMPLOYEES e
WHERE 	COMMISSION_PCT IS NOT NULL
;

SELECT *
FROM 	EMPLOYEES e
WHERE 	COMMISSION_PCT IS NOT NULL
;


SELECT * FROM EMPLOYEES e 
WHERE 	COMMISSION_PCT IS NOT NULL ;

SELECT 	DEPARTMENT_ID  FROM EMPLOYEES e 
GROUP BY DEPARTMENT_ID;

/*
 *  ����3. 
 *  EMPLOYEES ���̺��� �μ��� �ο���, ��ձ޿�, �����޿�, �ְ�޿�, �޿��� ���� ����϶�.
 */
SELECT 	DEPARTMENT_ID 
	,	COUNT(*),		AVG(SALARY)
	,	min(SALARY),	MAX(SALARY)
	,	sum(SALARY)
FROM 	EMPLOYEES e
GROUP BY DEPARTMENT_ID 
;


/*
 *  ����4.
 *  EMPLOYEES ���̺��� �μ���, �������� �ο���, ��ձ޿�, �޿��� ��, �μ�, ������ ����϶�.
 */
SELECT 	DEPARTMENT_ID,	JOB_ID 
	,	COUNT(*)	 ,	AVG(salary)	
	,	SUM(SALARY) 
FROM 	EMPLOYEES e
GROUP BY DEPARTMENT_ID , JOB_ID
ORDER BY DEPARTMENT_ID , JOB_ID 
;


/*
 *  ����5. 
 *  EMPLOYEES ���̺��� �μ� �ο��� 4���� ���� �μ��� �μ���ȣ, �ο���, �޿��� ���� ����϶�.
 */
SELECT 	DEPARTMENT_ID , COUNT(*), SUM(SALARY)  
FROM 	EMPLOYEES e
GROUP BY DEPARTMENT_ID 
HAVING COUNT(*) > 4 
;

/*
 *  ����6. 
 *  EMPLOYEES ���̺��� �޿��� �ִ� 10000 �̻��� �μ��� ���ؼ�,
 *  �μ���ȣ, ��ձ޿�, �޿��� ���� ����϶�.
 */
SELECT 	DEPARTMENT_ID , ROUND(AVG(SALARY)), SUM(SALARY)  
FROM 	EMPLOYEES e
GROUP BY DEPARTMENT_ID 
HAVING MAX(SALARY) >= 10000 
;

/*
 *  ����7. 
 *  EMPLOYEES ���̺��� ������ �޿��� ����� 10000 �̻��� ������ ���ؼ�,
 *  ������, ��ձ޿�, �޿��� ���� ���Ͽ� ����϶�
 */
SELECT 	JOB_ID , AVG(SALARY), SUM(SALARY)  
FROM 	EMPLOYEES e
GROUP BY JOB_ID 
HAVING AVG(SALARY) >= 10000 
;

/*
 *  ����8. 
 *  EMPLOYEES ���̺��� �޿��� ��(salary)�� 10000�� �ʰ��ϴ� �� ������ ���ؼ�
 *  ������ ������ �հ踦 ���,
 *  ��, ������ 'SA_' �� �����ϴ� ����(JOB_ID)�� �����ϰ�, �� �޿� �հ�� ������������ �����϶�.
 */
SELECT 	JOB_ID , SUM(SALARY) AS sumSal
FROM 	EMPLOYEES e
WHERE NOT JOB_ID  LIKE 'SA_%'
GROUP BY JOB_ID 
HAVING SUM(SALARY) > 10000
ORDER BY sumSal DESC  
;

/*
 *  ����9.
 *  ��, job_id�� �ִ� �޿�, �ּ� �޿�, �޿� �� �� �� ��� �޿��� job_id ������������ ��ȸ�϶�.
 */
SELECT 	JOB_ID 
	,	MAX(SALARY)
	,	MIN(SALARY)
	,	SUM(SALARY)
	,	AVG(SALARY) 
FROM 	EMPLOYEES e
GROUP BY JOB_ID 
ORDER BY JOB_ID DESC 
;

/*
 *  ����10.
 *  EMPLOYEES ���̺��� ������ ����(JOB_ID)�� ���� ������� �� ���� ��ȸ�϶�.
 */
SELECT 	JOB_ID 
	,	COUNT(JOB_ID)	
FROM 	EMPLOYEES e
GROUP BY JOB_ID 
;

/*
 *  ����11.
 *  �Ŵ����� ��� �� �� �Ŵ����� �����ϴ� ������ �� �ּ� ������ �޴� ����� ������ ��ȸ
 *  �Ŵ����� ���� ����� ����
 *  �ּ� ���� ���� �������� ��ȸ
 */
SELECT 	MANAGER_ID , MIN(SALARY), MAX(SALARY)  
FROM 	EMPLOYEES e
WHERE 	MANAGER_ID IS NOT NULL 
GROUP BY MANAGER_ID 
ORDER BY MIN(SALARY) DESC  
;


SELECT 	*
FROM 	EMPLOYEES e
;
SELECT 	*
FROM 	DEPARTMENTS d 
;
-- Lex ����� �μ���(90)



SELECT 	*
FROM 	EMPLOYEES e
;
SELECT 	*
FROM 	JOB_HISTORY jh 
;
-- Neena(101) ������ �μ� �̵� ����, �̸�(last_name), �޿�










