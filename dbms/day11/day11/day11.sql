SELECT 	* FROM  EMPLOYEES e ;

/*
 *	table ����, 
 *	���̺� �̸� 	: sample
 * 	�÷�			: deptNo 	/ NUMBER(20)
 * 				  deptName 	/ varchar2(15)
 * 				  deptLoc 	/ varchar2(15)
 * 				  deptManager / varchar2(10)
 *  ������ insert : 10, ��ȹ��, ����, ȫ�浿
 * 			 	 : 20, �����, �λ�, �踻��
 * 				 : 30, ������, ����, null
 *  ������ ��ü select
 *  ������ update : deptNo�� 30�� �μ��� 50���� ����  
 * 				 : deptName�� �������� deptLoc�� ��õ���� ����
 *  ������ delete : deptName�� �������� ������ ����
 */
	
-- table ����
CREATE TABLE sample(
	deptNo		number(20),
	deptName	varchar2(15),
	deptLoc		varchar2(15),
	deptManager	varchar2(10)
);

SELECT 	* FROM SAMPLE s ;

-- ������ insert : alt + x
INSERT INTO SAMPLE (deptNo, deptName, deptLoc, deptManager)
 VALUES (10, '��ȹ��', '����', 'ȫ�浿');
INSERT INTO SAMPLE (deptNo, deptName, deptLoc, deptManager)
 VALUES (20, '�����', '�λ�', '�踻��');
INSERT INTO SAMPLE (deptNo, deptName, deptLoc)
 VALUES (30, '������', '����');

-- INSERT INTO SAMPLE VALUES (10,'��ȹ��','����','ȫ�浿');

-- ������ update : deptNo�� 30�� �μ��� 50���� ����
UPDATE 	SAMPLE SET DEPTNO = 50
WHERE 	DEPTNO = 30;

SELECT * FROM SAMPLE s ;

-- ������ update : deptName�� �������� deptLoc�� ��õ���� ����
UPDATE 	SAMPLE SET DEPTLOC = '��õ'
WHERE 	DEPTNAME = '������'
;

-- ������ delete : deptName�� �������� ������ ����
DELETE	sample	
WHERE	deptName = '�����'
;

SELECT 	* FROM SAMPLE s ;

DELETE sample;

ROLLBACK;

COMMIT;

-----------------------------------------------------------------
-- not null
CREATE TABLE null_test(
	col1 	varchar2(20) NOT NULL ,
	col2	varchar2(20) NULL ,
	col3	varchar2(30)
);

SELECT * FROM null_test;

INSERT INTO null_test(col1, col2) VALUES ('aa', 'bb');
INSERT INTO null_test(col1) VALUES ('aa2');
-- ����
-- INSERT INTO null_test(col2) VALUES ('bb2');

-- unique
CREATE TABLE unique_test(
	col1	varchar2(20)	UNIQUE NOT NULL ,
	col2	varchar2(20)	UNIQUE ,
	col3 	varchar2(20)	NOT NULL,
	col4	varchar2(20)	NOT NULL,
	CONSTRAINTS temp_unique  UNIQUE(col3, col4)
);
-- �����߻�
INSERT INTO UNIQUE_TEST (col1, col2, COL3, COL4)
	VALUES ('aa6', 'bb6', 'cc', 'dd');
-- ���� insert
-- UNIQUE(col3, col4) : �÷� �׵��� ������ �����ؾ� �Ѵ�.
-- ���� �÷� �������� �������� �ǹ̰� ����, ������ �����ؾ� �Ѵ�.
INSERT INTO UNIQUE_TEST (col1, col2, COL3, COL4)
	VALUES ('aa6', 'bb6', 'cc1', 'dd');
INSERT INTO UNIQUE_TEST (col1, col2, COL3, COL4)
	VALUES ('aa7', 'bb7', 'cc6', 'dd');
INSERT INTO UNIQUE_TEST (col1, col2, COL3, COL4)
	VALUES ('aa8', 'bb8', 'cc6', 'dd');



SELECT * FROM unique_test;

INSERT INTO UNIQUE_TEST (col1, col2, COL3, COL4)
	VALUES ('aa', 'bb', 'cc', 'dd');
INSERT INTO UNIQUE_TEST (col1, col2, COL3, COL4)
	VALUES ('aa2', 'bb2', 'cc2', 'dd2');
INSERT INTO UNIQUE_TEST (col1, col2, COL3, COL4)
	VALUES ('aa3', 'bb3', 'cc3', 'dd3');
UPDATE UNIQUE_TEST SET COL1 = 'aa' WHERE COL2 = 'bb2';

INSERT INTO UNIQUE_TEST (col1, COL3, COL4)
	VALUES ('aa4', 'cc4', 'dd4');
INSERT INTO UNIQUE_TEST (col1, COL3, COL4)
	VALUES ('aa5', 'cc5', 'dd5');

DELETE	UNIQUE_TEST	

SELECT * FROM UNIQUE_TEST ut 
WHERE	COL1 = 'aa3'
;














