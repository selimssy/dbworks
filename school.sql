-- �б� �����ͺ��̽�

--�а� ���̺� ����
CREATE TABLE major(
    dname VARCHAR2(30),          -- �а���
    dtel VARCHAR2(20),           -- ��ȭ��ȣ
    location VARCHAR2(20),       -- �繫�� ��ġ
    PRIMARY KEY(dname)
);



-- ���� ���̺� ����
CREATE TABLE professor(
    pnumber NUMBER(3),           -- ������ȣ
    pname VARCHAR2(20),          -- �����̸�
    major VARCHAR2(30),          -- �����о�
    PRIMARY KEY(pnumber)
);




-- �л� ���̺� ����
CREATE TABLE student(
    snumber NUMBER(10) PRIMARY KEY,
    sname VARCHAR2(20) NOT NULL,
    age NUMBER(3),
    gender VARCHAR2(4),
    address VARCHAR2(30),
    dname VARCHAR2(30)NOT NULL,
    pnumber NUMBER(3)NOT NULL,
    CONSTRAINT FK_maj_std FOREIGN KEY(dname) REFERENCES major(dname),                -- �а� �ܷ�Ű
    CONSTRAINT FK_prof_std FOREIGN KEY(pnumber) REFERENCES professor(pnumber)        -- ������ȣ �ܷ�Ű    
);




-- �а� �ڷ� �Է�
INSERT INTO major VALUES('����Ʈ�����а�', '02-123-4567', 'B�� 3��');
INSERT INTO major VALUES('ȭ�а��а�', '02-123-5678', 'B�� 4��');
INSERT INTO major VALUES('�������ڰ��а�', '02-123-6789', 'B�� 5��');


-- ���� �ڷ� �Է�
INSERT INTO professor VALUES(301, '������', 'JAVA ���α׷���');
INSERT INTO professor VALUES(402, '�۹̿�', 'JSP �����α׷���');
INSERT INTO professor VALUES(501, '����ö', '�����ͺ��̽�');


-- �л� �ڷ� �Է�
INSERT INTO student VALUES(20211234, '�̰�', 22, '��', '����� ���α�', '����Ʈ�����а�', 301);
INSERT INTO student VALUES(20211235, '�ڴ��', 25, '��', '����� ������', '�������ڰ��а�', 501);
INSERT INTO student VALUES(20211236, '�Ѻ��', 23, '��', '����� ������', '����Ʈ�����а�', 402);
INSERT INTO student VALUES(20211237, '�����', 27, '��', '��⵵ ������', 'ȭ�а��а�', 501);


DELETE professor WHERE pnumber = 301;
--  ~~�ڽ� ���ڵ尡 �߰ߵǾ����ϴ� ����!(�����ǰ� �ִ°� �־)

--�׷��� �����Ϸ���
ALTER TABLE student
DROP CONSTRAINT FK_prof_std;
-- �̷��� �ܷ�Ű �������ְ� �� ����




-- �ٽ� �ܷ�Ű �߰�
ALTER TABLE student
ADD CONSTRAINT FK_prof_std FOREIGN KEY(pnumber) REFERENCES professor(pnumber); 
-- �ٵ� ���� �� ���̿� �����Ǵ� �ʵ� ������ �� �����Ѱ� ������ �ٽ� �߰�����ߵȴ�!!



SELECT * FROM major;
SELECT * FROM professor;
SELECT * FROM student;

COMMIT;