-- ��������(�μ� ����)

-- ���� ��� ������ �̸� �˻�
SELECT MAX(price)
FROM book;
--���⼭ MAX(price) �տ� bookname �� ������ ��������! -> �̷� �� ���������� ���!

SELECT bookname, price
FROM book
WHERE price = (SELECT max(price) FROM book);
                


-- ������ ������ ���� �ִ� ���� �̸� �˻�
SELECT name
FROM customer
WHERE custid IN (SELECT custid FROM orders);


-- ������ ������ ���� ���� ��
SELECT name
FROM customer
WHERE custid NOT IN(SELECT custid FROM orders);




-- ������ ���� �ֹ����� �˻�
SELECT *
FROM orders
WHERE custid = (SELECT custid FROM customer 
                WHERE name = '������');




-- '�̻�̵��'���� ������ ������ ������ ���� �ִ� ���� �̸� �˻�
SELECT name
FROM customer
WHERE custid IN (SELECT custid FROM orders 
                 WHERE bookid IN (SELECT bookid FROM book 
                                 WHERE publisher = '�̻�̵��'));






-- ��ȣ���� ��������
-- ���ǻ纰�� ���ǻ��� ��� ���� ���ݺ��� ��� ������ �˻�
SELECT b1.bookname, b1.price, b1.publisher
FROM book b1
WHERE b1.price > (SELECT AVG(b2.price) 
                  FROM book b2 
                  WHERE b2.publisher = b1.publisher);
-- b1 ���̺� �ش��ϴ� Ʃ���� b2 ���̺�� �������� ��׳��� ��� ���


select distinct publisher from book;






--�ζ��� �� : FROM�� ��������
-- FROM ������ ���� ���������� ����� �ϳ��� ���̺� ���� ��(View)ó�� ���ȴ�. 


-- ����ȣ�� 2 ������ ���̸��� �Ǹž��� �˻�
SELECT cs.name, SUM(od.saleprice) AS total
FROM (SELECT custid, name
      FROM customer
      WHERE custid <= 2) cs,
      orders od
WHERE cs.custid = od.custid
GROUP BY cs.name;







