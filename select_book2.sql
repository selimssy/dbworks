-- �ֹ����̺� �˻�
SELECT * FROM orders;

-- ��� ���� �ֹ��� ������ �� �Ǹž��� ���Ͻÿ�
SELECT SUM(saleprice)AS �Ѹ���
FROM orders;




-- '�迬��' ���� �ֹ��� ������ �� �Ǹž�
SELECT SUM(saleprice) �Ѹ���
FROM orders
WHERE custid = 2;




-- ���� �ֹ��� ������ �� �Ǹž�, ��հ�
SELECT SUM(saleprice) AS Total, AVG(saleprice) AS Average
FROM orders;




-- �� �� �� �ֹ��� ���Դ��� ���
SELECT COUNT(*) AS ���ǸŰǼ�
FROM orders;




-- ������ �ֹ��� ������ �� ������ �Ǹž�
SELECT custid, COUNT(*) �ֹ���������, SUM(saleprice) AS "�� �Ǹž�"
FROM orders 
GROUP BY custid;





-- HAVING��: GROUP BY���� ��� ��Ÿ���� �׷��� �����ϴ� ����

-- ������ 8000�� �̻��� ������ ���Ͽ� ���� �ֹ� ������ �� ������ ���Ͻÿ�
-- ��, 2�� �̻� ������ ���� �˻�
SELECT custid, count(*)|| '��' AS �ֹ���������
FROM orders
WHERE saleprice >= 8000
Group By custid
HAVING count(*) >= 2;




