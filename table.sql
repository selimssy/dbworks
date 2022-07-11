-- ���̺� �����

CREATE TABLE ex1(
    column1 CHAR(10),       -- ���� ����
    column2 VARCHAR2(10),   -- ���� ����
    column3 NUMBER
);




-- ������ �Է�
-- ����Ŭ������ ���� ������ Ȧ����ǥ!
INSERT INTO ex1(column1, column2, column3)
VALUES('abc', 'abc', 10);

INSERT INTO ex1(column1, column2)
VALUES('�츮', '�츮');

-- �ڷ��� ����, ����, �������� �� �ʼ� ����!
COMMIT;

-- ��ü ������ �˻�
SELECT * FROM ex1;


-- Ư�� Į��(��)�� �˻�
SELECT column1, column2
FROM ex1;


-- CHAR�� VARCHAR2�� ũ�� ��
-- Į���� ��Ī ����� ���(Į���� AS ��Ī)
SELECT column1, LENGTH(column1) AS len1,   -- abc: 10   �츮: 6 
       column2, LENGTH(column2) AS len2    -- abc: 3    �츮: 2
FROM ex1;



