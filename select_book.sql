SELECT * FROM book;




-- 모든 도서의 이름과 가격을 검색
SELECT bookname, price FROM book;


-- 모든 도서의 도서번호, 도서이름, 출판사, 가격을 검색
SELECT bookid, bookname, publisher, price
FROM book;


-- 도서 테이블의 모든 출판사 검색
SELECT publisher from book;

-- 모든 출판사를 중복 없이 검색(DISTINCT 사용!)
SELECT DISTINCT publisher from book;

-- 가격이 20000원 미만인 도서를 검색
SELECT * FROM book 
WHERE price < 20000;



-- 가격이 10000원 이상 20000원 이하인 도서 검색
--1. BETWEEN A AND B 사용
SELECT * 
FROM book
WHERE price BETWEEN 10000 AND 20000;
--2. AND 사용
SELECT *
FROM book
WHERE price >= 10000 AND price <= 20000;



-- 출판사가 '굿스포츠' 혹은 '대한미디어'인 도서를 검색
-- 1. IN() 사용
SELECT *
FROM book
WHERE publisher IN('굿스포츠', '대한미디어');
-- 2. OR 사용
SELECT *
FROM book
WHERE publisher = '굿스포츠' OR publisher = '대한미디어';




--NOT IN★
-- 출판사가 '굿스포츠' 혹은 '대한미디어'가 아닌 도서!
SELECT *
FROM book
WHERE publisher NOT IN('굿스포츠', '대한미디어');




-- LIKE 연산자 : %, _ 사용
-- 시작: %단어, 끝나는거: 단어%  포함: %단어%

-- 도서 이름에 '축구'가 포함된 출판사 검색
SELECT bookname, publisher
FROM book
WHERE bookname LIKE '%축구%';


-- '축구'에 관한 도서 중 가격이 20000원 이상인 도서 검색
SELECT bookname, publisher, price
FROM book
WHERE bookname LIKE '%축구%' AND price >= 20000;




-- 도서를 이름순으로 정렬
SELECT *
FROM book
ORDER BY bookname;
-- 영어가 한글보다 먼저온다!


-- 도서를 가격의 내림차순으로 정렬, 가격이 같으면 출판사를 오름차순으로 정렬
SELECT *
FROM book
ORDER BY price DESC, publisher ASC;
