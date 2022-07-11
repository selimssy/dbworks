SELECT * FROM book;




-- ��� ������ �̸��� ������ �˻�
SELECT bookname, price FROM book;


-- ��� ������ ������ȣ, �����̸�, ���ǻ�, ������ �˻�
SELECT bookid, bookname, publisher, price
FROM book;


-- ���� ���̺��� ��� ���ǻ� �˻�
SELECT publisher from book;

-- ��� ���ǻ縦 �ߺ� ���� �˻�(DISTINCT ���!)
SELECT DISTINCT publisher from book;

-- ������ 20000�� �̸��� ������ �˻�
SELECT * FROM book 
WHERE price < 20000;



-- ������ 10000�� �̻� 20000�� ������ ���� �˻�
--1. BETWEEN A AND B ���
SELECT * 
FROM book
WHERE price BETWEEN 10000 AND 20000;
--2. AND ���
SELECT *
FROM book
WHERE price >= 10000 AND price <= 20000;



-- ���ǻ簡 '�½�����' Ȥ�� '���ѹ̵��'�� ������ �˻�
-- 1. IN() ���
SELECT *
FROM book
WHERE publisher IN('�½�����', '���ѹ̵��');
-- 2. OR ���
SELECT *
FROM book
WHERE publisher = '�½�����' OR publisher = '���ѹ̵��';




--NOT IN��
-- ���ǻ簡 '�½�����' Ȥ�� '���ѹ̵��'�� �ƴ� ����!
SELECT *
FROM book
WHERE publisher NOT IN('�½�����', '���ѹ̵��');




-- LIKE ������ : %, _ ���
-- ����: %�ܾ�, �����°�: �ܾ�%  ����: %�ܾ�%

-- ���� �̸��� '�౸'�� ���Ե� ���ǻ� �˻�
SELECT bookname, publisher
FROM book
WHERE bookname LIKE '%�౸%';


-- '�౸'�� ���� ���� �� ������ 20000�� �̻��� ���� �˻�
SELECT bookname, publisher, price
FROM book
WHERE bookname LIKE '%�౸%' AND price >= 20000;




-- ������ �̸������� ����
SELECT *
FROM book
ORDER BY bookname;
-- ��� �ѱۺ��� �����´�!


-- ������ ������ ������������ ����, ������ ������ ���ǻ縦 ������������ ����
SELECT *
FROM book
ORDER BY price DESC, publisher ASC;
