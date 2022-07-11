-- 테이블 ex2 생성
CREATE TABLE ex2(
    col_date DATE ,   -- 년, 월, 일
    col_timestamp TIMESTAMP   -- 년, 월, 일, 시, 분, 초
);




-- 테이블 ex3 생성
CREATE TABLE ex3(
    col_null VARCHAR2(10),
    col_not_null VARCHAR2(10) NOT NULL
);





--데이터 입력
--현재 날짜: SYSDATE, 시분초까지: SYSTIMESTAMP
INSERT INTO ex2 VALUES(SYSDATE, SYSTIMESTAMP);

-- INSERT INTO ex3 VALUES('Hello', '');   -- ORA-01400: NULL을 ("SYSTEM"."EX3"."COL_NOT_NULL") 안에 삽입할 수 없습니다(즉 not null 조건에 위배)
INSERT INTO ex3 VALUES('', 'Hello');

COMMIT;

-- 데이터 조회
SELECT * FROM ex2;

SELECT * FROM ex3;
