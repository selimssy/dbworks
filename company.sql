-- �μ��� ��� ���̺� ����
CREATE TABLE department(
    deptid NUMBER,                       -- �μ���ȣ
    deptname VARCHAR2(20) NOT NULL,      -- �μ��̸�
    location VARCHAR2(20) NOT NULL,      -- �繫����ġ
    PRIMARY KEY(deptid)   -- �⺻Ű ���⼭ �̷��� �����ص� �ȴ�
);






CREATE TABLE employee(
    empid NUMBER(3) PRIMARY KEY,        -- ��� ���̵�
    empname VARCHAR2(20) NOT NULL,      -- ��� �̸�
    age NUMBER(3),                      -- ����
    deptid NUMBER,                      -- �μ���ȣ(�ܷ�Ű)
    CONSTRAINT EMP_FK FOREIGN KEY(deptid) REFERENCES department(deptid)
);




-- �μ� �ڷ� �߰�
INSERT INTO department VALUES(10, '������', '����');
INSERT INTO department VALUES(20, '�ѹ���', '��õ');




-- ��� �ڷ� �߰�
INSERT INTO employee VALUES(101, '�̰�', 27, 10);
INSERT INTO employee VALUES(102, '���', 28, 20);
INSERT INTO employee VALUES(102, '����', 35, 30);     -- �θ�Ű�� �μ��ڵ� 30�� ��� ����!
  



-- �μ� ����
DELETE department 
WHERE deptid = 10;
-- �긦 �����ϰ� �ִ¾ְ� �־ ���� �ȵȴ�! �����Ϸ��� �ܷ�Ű �������� �����ؾ�!
-- ORA-02292: ���Ἲ ��������(SYSTEM.EMP_FK)�� ����Ǿ����ϴ�- �ڽ� ���ڵ尡 �߰ߵǾ����ϴ�



-- �ܷ�Ű ���� ���� ����
ALTER TABLE employee
DROP CONSTRAINT EMP_FK;





-- �ڷ� �˻�
SELECT * FROM department;
SELECT * FROM employee;

