
-- 조인

-- 동등 조인

-- 고객과 고객의 주문에 관한 데이터를 모두 검색하시오
SELECT *
FROM customer, orders
WHERE customer.custid = orders.custid;


-- 고객의 이름과 고객이 주문한 도서의 판매가격을 검색
SELECT customer.name, orders.saleprice
FROM customer, orders
WHERE customer.custid = orders.custid;






-- 안산 고객의 주문내역을 검색하시오
SELECT *
FROM customer, orders
WHERE customer.custid = orders.custid AND customer.name = '안산';





-- 고객별로 주문한 모든 도서의 총 판매액을 구하시오
SELECT customer.name, count(*),SUM(saleprice) AS 총판매액
FROM customer, orders
WHERE customer.custid = orders.custid
GROUP BY customer.name
ORDER BY customer.name;
-- count랑 sum은 테이블 이름 없이 그냥 하넹...





-- 테이블 3개 연결
-- 고객의 이름과 주문한 도서의 이름, 가격을 검색
SELECT customer.name, book.bookname, orders.saleprice
FROM customer, orders, book
WHERE customer.custid = orders.custid AND orders.bookid = book.bookid;


-- 가격이 2만원 이상인 책 주문에 대한 고객의 이름과 주문한 도서의 이름, 가격을 검색
SELECT customer.name, book.bookname, orders.saleprice
FROM customer, orders, book
WHERE customer.custid = orders.custid AND orders.bookid = book.bookid
       AND orders.saleprice >= 20000;








-- 외부조인(Outer join)

-- 도서를 구매하지 않은 고객을 포함하여 
-- 고객의 이름, 주문도서의 가격을 출력
SELECT customer.name, orders.saleprice
FROM customer LEFT OUTER JOIN orders
ON customer.custid = orders.custid;


SELECT c.name, o.saleprice
FROM customer c LEFT OUTER JOIN orders o
ON c.custid = o.custid;



-- 이상미디어에서 출판된 도서를 구매한적 있는 고객 이름을 출력
SELECT name
FROM customer
WHERE custid IN (SELECT custid FROM orders
                 WHERE bookid IN (SELECT bookid FROM book
                                  WHERE publisher = '이상미디어'));


