
-- ����

-- ���� ����

-- ���� ���� �ֹ��� ���� �����͸� ��� �˻��Ͻÿ�
SELECT *
FROM customer, orders
WHERE customer.custid = orders.custid;


-- ���� �̸��� ���� �ֹ��� ������ �ǸŰ����� �˻�
SELECT customer.name, orders.saleprice
FROM customer, orders
WHERE customer.custid = orders.custid;






-- �Ȼ� ���� �ֹ������� �˻��Ͻÿ�
SELECT *
FROM customer, orders
WHERE customer.custid = orders.custid AND customer.name = '�Ȼ�';





-- ������ �ֹ��� ��� ������ �� �Ǹž��� ���Ͻÿ�
SELECT customer.name, count(*),SUM(saleprice) AS ���Ǹž�
FROM customer, orders
WHERE customer.custid = orders.custid
GROUP BY customer.name
ORDER BY customer.name;
-- count�� sum�� ���̺� �̸� ���� �׳� �ϳ�...





-- ���̺� 3�� ����
-- ���� �̸��� �ֹ��� ������ �̸�, ������ �˻�
SELECT customer.name, book.bookname, orders.saleprice
FROM customer, orders, book
WHERE customer.custid = orders.custid AND orders.bookid = book.bookid;


-- ������ 2���� �̻��� å �ֹ��� ���� ���� �̸��� �ֹ��� ������ �̸�, ������ �˻�
SELECT customer.name, book.bookname, orders.saleprice
FROM customer, orders, book
WHERE customer.custid = orders.custid AND orders.bookid = book.bookid
       AND orders.saleprice >= 20000;








-- �ܺ�����(Outer join)

-- ������ �������� ���� ���� �����Ͽ� 
-- ���� �̸�, �ֹ������� ������ ���
SELECT customer.name, orders.saleprice
FROM customer LEFT OUTER JOIN orders
ON customer.custid = orders.custid;


SELECT c.name, o.saleprice
FROM customer c LEFT OUTER JOIN orders o
ON c.custid = o.custid;



-- �̻�̵��� ���ǵ� ������ �������� �ִ� �� �̸��� ���
SELECT name
FROM customer
WHERE custid IN (SELECT custid FROM orders
                 WHERE bookid IN (SELECT bookid FROM book
                                  WHERE publisher = '�̻�̵��'));


