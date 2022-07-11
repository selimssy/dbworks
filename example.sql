-- ���̺� ex2 ����
CREATE TABLE ex2(
    col_date DATE ,   -- ��, ��, ��
    col_timestamp TIMESTAMP   -- ��, ��, ��, ��, ��, ��
);




-- ���̺� ex3 ����
CREATE TABLE ex3(
    col_null VARCHAR2(10),
    col_not_null VARCHAR2(10) NOT NULL
);





--������ �Է�
--���� ��¥: SYSDATE, �ú��ʱ���: SYSTIMESTAMP
INSERT INTO ex2 VALUES(SYSDATE, SYSTIMESTAMP);

-- INSERT INTO ex3 VALUES('Hello', '');   -- ORA-01400: NULL�� ("SYSTEM"."EX3"."COL_NOT_NULL") �ȿ� ������ �� �����ϴ�(�� not null ���ǿ� ����)
INSERT INTO ex3 VALUES('', 'Hello');

COMMIT;

-- ������ ��ȸ
SELECT * FROM ex2;

SELECT * FROM ex3;
