-- ��� ���� ������ �˻��Ͻÿ�
SELECT *
FROM customer;



-- ����ȣ�� 3���� ���� �̸��� �˻�
SELECT name
FROM customer
WHERE custid = 3;




-- �ּҰ� ���ѹα��� ���� �̸��� ��ȭ��ȣ�� �˻�
SELECT name, phone
FROM customer
WHERE address LIKE '���ѹα�%';




-- ��ȭ��ȣ�� ���� ���� �̸��� �ּҸ� �˻�
SELECT name, address
FROM customer
WHERE phone IS NULL;



-- ��ȭ��ȣ �ִ� ���� �̸��� �ּ� �˻�
SELECT name, address
FROM customer
WHERE phone IS NOT NULL;




