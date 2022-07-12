
--테이블 복사(book -> tbook 복사)
CREATE TABLE t_book AS
SELECT * FROM book;


SELECT *  FROM t_book;


-- '축구의 역사' 도서 가격을 7000원에서 10000으로 수정
UPDATE t_book
SET price = 10000
WHERE bookid = 1;

COMMIT;




-- '양궁의 실제' 출판사 이름을 나무수로 변경
UPDATE t_book
SET publisher = '나무수'
WHERE bookid = 6;





-- '야구를 부탁해'를 출판사를 '삼성당'으로 변경하고, 가격을 15000원으로 변경
UPDATE t_book
SET publisher = '삼성당', price = 15000
WHERE bookid = 8;



ROLLBACK;  -- 커밋하기 전에 취속 가능



-- 도서번호가 5번인 책을 삭제
DELETE t_book
WHERE bookid = 5;




-- 도서 '골프 바이블' 삭제
DELETE t_book
WHERE bookid = 4;

DELETE t_book
WHERE bookid = (SELECT bookid FROM t_book
                WHERE bookname = '골프 바이블'); 



