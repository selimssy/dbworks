-- �ֹ����̺� �˻�

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
SELECT custid, COUNT(*) ��������, SUM(saleprice)
FROM orders 
GROUP BY custid;



