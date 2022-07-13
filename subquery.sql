-- 서브쿼리(부속 질의)

-- 가장 비싼 도서의 이름 검색
SELECT MAX(price)
FROM book;
--여기서 MAX(price) 앞에 bookname 을 넣으면 오류난다! -> 이럴 때 서브쿼리를 써야!

SELECT bookname, price
FROM book
WHERE price = (SELECT max(price) FROM book);
                


-- 도서를 구매한 적이 있는 고객의 이름 검색
SELECT name
FROM customer
WHERE custid IN (SELECT custid FROM orders);


-- 도서를 구매한 적이 없는 고객
SELECT name
FROM customer
WHERE custid NOT IN(SELECT custid FROM orders);




-- 박지성 고객의 주문내역 검색
SELECT *
FROM orders
WHERE custid = (SELECT custid FROM customer 
                WHERE name = '박지성');




-- '이상미디어'에서 출판한 도서를 구매한 적이 있는 고객의 이름 검색
SELECT name
FROM customer
WHERE custid IN (SELECT custid FROM orders 
                 WHERE bookid IN (SELECT bookid FROM book 
                                 WHERE publisher = '이상미디어'));






-- 상호연관 서브쿼리
-- 출판사별로 출판사의 평균 도서 가격보다 비싼 도서를 검색
SELECT b1.bookname, b1.price, b1.publisher
FROM book b1
WHERE b1.price > (SELECT AVG(b2.price) 
                  FROM book b2 
                  WHERE b2.publisher = b1.publisher);
-- b1 테이블에 해당하는 튜플을 b2 테이블로 가져가서 얘네끼리 평균 계산


select distinct publisher from book;






--인라인 뷰 : FROM절 서브쿼리
-- FROM 절에서 사용된 서브쿼리의 결과가 하나의 테이블에 대한 뷰(View)처럼 사용된다. 


-- 고객번호가 2 이하인 고객이름과 판매액을 검색
SELECT cs.name, SUM(od.saleprice) AS total
FROM (SELECT custid, name
      FROM customer
      WHERE custid <= 2) cs,
      orders od
WHERE cs.custid = od.custid
GROUP BY cs.name;







