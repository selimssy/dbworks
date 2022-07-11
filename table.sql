-- 테이블 만들기

CREATE TABLE ex1(
    column1 CHAR(10),       -- 고정 길이
    column2 VARCHAR2(10),   -- 가변 길이
    column3 NUMBER
);




-- 데이터 입력
-- 오라클에서는 문자 무조건 홀따옴표!
INSERT INTO ex1(column1, column2, column3)
VALUES('abc', 'abc', 10);

INSERT INTO ex1(column1, column2)
VALUES('우리', '우리');

-- 자료의 삽입, 수정, 삭제했을 때 필수 실행!
COMMIT;

-- 전체 데이터 검색
SELECT * FROM ex1;


-- 특정 칼럼(열)만 검색
SELECT column1, column2
FROM ex1;


-- CHAR과 VARCHAR2의 크기 비교
-- 칼럼의 별칭 만드는 방법(칼럼명 AS 별칭)
SELECT column1, LENGTH(column1) AS len1,   -- abc: 10   우리: 6 
       column2, LENGTH(column2) AS len2    -- abc: 3    우리: 2
FROM ex1;



