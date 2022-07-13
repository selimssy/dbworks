-- 주문테이블 검색
SELECT * FROM orders;

-- 모든 고객이 주문한 도서의 총 판매액을 구하시오
SELECT SUM(saleprice)AS 총매출
FROM orders;




-- '김연아' 고객이 주문한 도서의 총 판매액
SELECT SUM(saleprice) 총매출
FROM orders
WHERE custid = 2;




-- 고객이 주문한 도서의 총 판매액, 평균값
SELECT SUM(saleprice) AS Total, AVG(saleprice) AS Average
FROM orders;




-- 총 몇 권 주문이 들어왔는지 출력
SELECT COUNT(*) AS 총판매건수
FROM orders;




-- 고객별로 주문한 도서의 총 수량과 판매액
SELECT custid, COUNT(*) 주문도서수량, SUM(saleprice) AS "총 판매액"
FROM orders 
GROUP BY custid;





-- HAVING절: GROUP BY절의 결과 나타나는 그룹을 제한하는 역할

-- 가격이 8000원 이상인 도서에 대하여 고객별 주문 도서의 총 수량을 구하시오
-- 단, 2권 이상 구매한 고객만 검색
SELECT custid, count(*)|| '권' AS 주문도서수량
FROM orders
WHERE saleprice >= 8000
Group By custid
HAVING count(*) >= 2;




