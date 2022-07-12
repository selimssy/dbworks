
--���̺� ����(book -> tbook ����)
CREATE TABLE t_book AS
SELECT * FROM book;


SELECT *  FROM t_book;


-- '�౸�� ����' ���� ������ 7000������ 10000���� ����
UPDATE t_book
SET price = 10000
WHERE bookid = 1;

COMMIT;




-- '����� ����' ���ǻ� �̸��� �������� ����
UPDATE t_book
SET publisher = '������'
WHERE bookid = 6;





-- '�߱��� ��Ź��'�� ���ǻ縦 '�Ｚ��'���� �����ϰ�, ������ 15000������ ����
UPDATE t_book
SET publisher = '�Ｚ��', price = 15000
WHERE bookid = 8;



ROLLBACK;  -- Ŀ���ϱ� ���� ��� ����



-- ������ȣ�� 5���� å�� ����
DELETE t_book
WHERE bookid = 5;




-- ���� '���� ���̺�' ����
DELETE t_book
WHERE bookid = 4;

DELETE t_book
WHERE bookid = (SELECT bookid FROM t_book
                WHERE bookname = '���� ���̺�'); 



