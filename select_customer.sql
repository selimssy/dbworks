-- 모든 고객의 정보를 검색하시오
SELECT *
FROM customer;



-- 고객번호가 3번인 고객의 이름을 검색
SELECT name
FROM customer
WHERE custid = 3;




-- 주소가 대한민국인 고객의 이름과 전화번호를 검색
SELECT name, phone
FROM customer
WHERE address LIKE '대한민국%';




-- 전화번호가 없는 고객의 이름과 주소를 검색
SELECT name, address
FROM customer
WHERE phone IS NULL;



-- 전화번호 있는 고객의 이름과 주소 검색
SELECT name, address
FROM customer
WHERE phone IS NOT NULL;




