SELECT * FROM EMPLOYEES e ;

-- unique
CREATE TABLE UNIQUE_TEST2(
	col1	varchar2(20),
	col2	varchar2(20),
	CONSTRAINTS temp_unique2 UNIQUE(col1, col2)
);
SELECT * FROM UNIQUE_TEST2;

INSERT INTO UNIQUE_TEST2 (col1, col2)
 VALUES ('aa','bb');
INSERT INTO UNIQUE_TEST2 (col1, col2)
 VALUES ('aa','cc');
INSERT INTO UNIQUE_TEST2 (col1, col2)
 VALUES ('aa','dd');
INSERT INTO UNIQUE_TEST2 (col1, col2)
 VALUES ('aa','ee');

-- check : �־��� ���� ����ϴ� ����
CREATE TABLE check_test(
	gender 	varchar2(10) NOT NULL,
	CONSTRAINTS check_gender CHECK (gender IN('����','����'))
);

SELECT * FROM CHECK_TEST;

INSERT INTO CHECK_TEST VALUES ('����');
INSERT INTO CHECK_TEST VALUES ('M');


-- PK
-- �ζ��ι��
CREATE TABLE primary_key(
	student_id		number(10) PRIMARY KEY ,
	name			varchar2(20)
);

-- �ƿ����� ���
CREATE TABLE PRIMARY_KEY2(
	student_id		number(10),
	name			varchar2(20),
	CONSTRAINTS student_pk PRIMARY KEY(student_id)
);

-- ���̺� ������ �⺻Ű�� �����ϴ� ���
CREATE TABLE PRIMARY_KEY3(
	student_id		number(10),
	name			varchar2(20)
);

ALTER TABLE PRIMARY_KEY3 
ADD CONSTRAINTS student_pk3 PRIMARY KEY(student_id);

-- FK
-- ���̺� ������ �ܷ�Ű ���� ���ÿ�
CREATE TABLE foreign_key(
	department_id 	number(4),
	CONSTRAINTS dept_fk FOREIGN KEY (department_id)
	REFERENCES departments (department_id)
);

-- ���̺� �����ϰ� ���� �ܷ�Ű�� �����ϴ� ���
CREATE TABLE foreign_key2(
	department_id	number(4)
);

ALTER TABLE FOREIGN_KEY2 
ADD CONSTRAINTS dept_fk2 FOREIGN KEY (department_id)
REFERENCES departments (department_id)
;

CREATE TABLE daddy(
	idx		number(10),
	mID		number(10) PRIMARY KEY 
);

CREATE TABLE daughter(
	idx		number(10) PRIMARY KEY,
	mID		number(10),
	CONSTRAINTS FK_DA FOREIGN KEY(mID)
	REFERENCES daddy(mID) ON DELETE CASCADE
);

INSERT INTO daddy VALUES (1, 10);
INSERT INTO daddy VALUES (2, 20);
INSERT INTO daddy VALUES (3, 30);

SELECT * FROM daddy;

SELECT * FROM DAUGHTER ;
INSERT INTO daughter VALUES (100, 10);
INSERT INTO daughter VALUES (101, 10);
INSERT INTO daughter VALUES (102, 20);
INSERT INTO daughter VALUES (103, 30);

DELETE FROM daddy WHERE idx = 2;


-- daughter2
CREATE TABLE daughter2(
	idx		number(10) PRIMARY KEY,
	mID		number(10),
	CONSTRAINTS FK_DA2 FOREIGN KEY(mID)
	REFERENCES daddy(mID) ON DELETE SET NULL 
);

INSERT INTO daughter2 VALUES (100, 10);
INSERT INTO daughter2 VALUES (101, 10);
INSERT INTO daughter2 VALUES (103, 30);

SELECT * FROM daughter2;

DELETE FROM daddy WHERE idx = 1;

















 
 
 