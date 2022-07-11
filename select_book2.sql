-- 주문테이블 검색

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
SELECT custid, COUNT(*) 도서수량, SUM(saleprice)
FROM orders 
GROUP BY custid;



