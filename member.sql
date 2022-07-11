-- ex4 테이블 생성
CREATE TABLE ex4(
    userId VARCHAR2(10) PRIMARY KEY,    -- 기본키 선언
    passwd VARCHAR2(10) NOT NULL
);



-- 테이블 이름 변경
-- ALTER TABLE 테이블명 RENAME TO 새테이블명
ALTER TABLE ex4 RENAME TO member;


--칼럼이름 변경
--ALTER TABLE 테이블명 RENAME COLUMN 변경전칼럼명 TO 변경후칼럼명


-- 새로운 칼럼 추가
--ALTER TABLE 테이블명 ADD 칼럼명 데이터타입



--테이블 삭제
--DROP TABLE 테이블명




--가입일 칼럼 추가
ALTER TABLE member ADD regDate DATE;

-- 급여 칼럼 추가
ALTER TABLE member ADD salary NUMBER;

ALTER TABLE member ADD hirdDate VARCHAR2(20);

-- 데이터 삽입
INSERT INTO member(userId, passwd)  VALUES('sky2022', 'abcd123');

INSERT INTO member(userId, passwd)  VALUES('sky2022', 'abcd1234');  -- ORA-00001: 무결성 제약 조건(SYSTEM.SYS_C008316)에 위배됩니다

INSERT INTO member(userId, passwd, regDate)  
VALUES('river2022', 'abcd1234', SYSDATE);

INSERT INTO member(userId, passwd, regDate, salary)  
VALUES('smile2022', 'abcd1234', SYSDATE, 1000000);


ALTER TABLE member DROP COLUMN hirddate;


-- 데이터 조회
SELECT * FROM member;



-- 특정 조건을 조회
SELECT * FROM member
WHERE userId = 'sky2022';

SELECT regDate FROM member
WHERE userId = 'river2022';



-- 테이블의 구조
DESC member;





-- 데이터 수정(UPDATE 테이블명 SET 칼럼 = 변경할 값 WHERE 조건 )
UPDATE member
SET salary = 2000000
WHERE userId = 'smile2022';

UPDATE member
SET salary = 1000000
WHERE userId = 'river2022';

UPDATE member
SET regDate = SYSDATE - 30
WHERE userId = 'sky2022';

UPDATE member
SET regDate = '22/05/15', salary = 1500000
WHERE userId = 'sky2022';
--이렇게 콤마로 여러 개 한꺼번에 수정할 수도 있다!!★

UPDATE member
SET regDate = '22/05/30'
WHERE userId = 'sky2022';

COMMIT;


-- 데이터 삭제(update랑 delete는 where 안써주면 다 수정되고 삭제되니까 주의!!)
DELETE member;

ROLLBACK;
--commit 잘 해주면 실수로 delete해도 롤백하면 복구된다!★

SELECT * FROM member
ORDER BY salary DESC;



--특정 데이터 삭제
DELETE member
WHERE userId = 'river2022';

--여기서 commit 안한 상태에서 rollback하면 다시 복구된다!

ROLLBACK;

COMMIT;








-- 테이블 복사
-- CREATE TABLE  새테이블명 AS SELECT * FROM 원본테이블

CREATE TABLE member2 AS
SELECT * FROM member;

-- 테이블 삭제
DROP TABLE member2;






