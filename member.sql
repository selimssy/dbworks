-- ex4 ���̺� ����
CREATE TABLE ex4(
    userId VARCHAR2(10) PRIMARY KEY,    -- �⺻Ű ����
    passwd VARCHAR2(10) NOT NULL
);



-- ���̺� �̸� ����
-- ALTER TABLE ���̺�� RENAME TO �����̺��
ALTER TABLE ex4 RENAME TO member;


--Į���̸� ����
--ALTER TABLE ���̺�� RENAME COLUMN ������Į���� TO ������Į����


-- ���ο� Į�� �߰�
--ALTER TABLE ���̺�� ADD Į���� ������Ÿ��



--���̺� ����
--DROP TABLE ���̺��




--������ Į�� �߰�
ALTER TABLE member ADD regDate DATE;

-- �޿� Į�� �߰�
ALTER TABLE member ADD salary NUMBER;

ALTER TABLE member ADD hirdDate VARCHAR2(20);

-- ������ ����
INSERT INTO member(userId, passwd)  VALUES('sky2022', 'abcd123');

INSERT INTO member(userId, passwd)  VALUES('sky2022', 'abcd1234');  -- ORA-00001: ���Ἲ ���� ����(SYSTEM.SYS_C008316)�� ����˴ϴ�

INSERT INTO member(userId, passwd, regDate)  
VALUES('river2022', 'abcd1234', SYSDATE);

INSERT INTO member(userId, passwd, regDate, salary)  
VALUES('smile2022', 'abcd1234', SYSDATE, 1000000);


ALTER TABLE member DROP COLUMN hirddate;


-- ������ ��ȸ
SELECT * FROM member;



-- Ư�� ������ ��ȸ
SELECT * FROM member
WHERE userId = 'sky2022';

SELECT regDate FROM member
WHERE userId = 'river2022';



-- ���̺��� ����
DESC member;





-- ������ ����(UPDATE ���̺�� SET Į�� = ������ �� WHERE ���� )
UPDATE member
SET salary = 2000000
WHERE userId = 'smile2022';

UPDATE member
SET salary = 1000000
WHERE userId = 'river2022';

UPDATE member
SET regDate = SYSDATE - 30
WHERE userId = 'sky2022';

UPDATE member
SET regDate = '22/05/15', salary = 1500000
WHERE userId = 'sky2022';
--�̷��� �޸��� ���� �� �Ѳ����� ������ ���� �ִ�!!��

UPDATE member
SET regDate = '22/05/30'
WHERE userId = 'sky2022';

COMMIT;


-- ������ ����(update�� delete�� where �Ƚ��ָ� �� �����ǰ� �����Ǵϱ� ����!!)
DELETE member;

ROLLBACK;
--commit �� ���ָ� �Ǽ��� delete�ص� �ѹ��ϸ� �����ȴ�!��

SELECT * FROM member
ORDER BY salary DESC;



--Ư�� ������ ����
DELETE member
WHERE userId = 'river2022';

--���⼭ commit ���� ���¿��� rollback�ϸ� �ٽ� �����ȴ�!

ROLLBACK;

COMMIT;








-- ���̺� ����
-- CREATE TABLE  �����̺�� AS SELECT * FROM �������̺�

CREATE TABLE member2 AS
SELECT * FROM member;

-- ���̺� ����
DROP TABLE member2;






