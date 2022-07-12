-- 학교 데이터베이스

--학과 테이블 생성
CREATE TABLE major(
    dname VARCHAR2(30),          -- 학과명
    dtel VARCHAR2(20),           -- 전화번호
    location VARCHAR2(20),       -- 사무실 위치
    PRIMARY KEY(dname)
);



-- 교수 테이블 생성
CREATE TABLE professor(
    pnumber NUMBER(3),           -- 교수번호
    pname VARCHAR2(20),          -- 교수이름
    major VARCHAR2(30),          -- 전공분야
    PRIMARY KEY(pnumber)
);




-- 학생 테이블 생성
CREATE TABLE student(
    snumber NUMBER(10) PRIMARY KEY,
    sname VARCHAR2(20) NOT NULL,
    age NUMBER(3),
    gender VARCHAR2(4),
    address VARCHAR2(30),
    dname VARCHAR2(30)NOT NULL,
    pnumber NUMBER(3)NOT NULL,
    CONSTRAINT FK_maj_std FOREIGN KEY(dname) REFERENCES major(dname),                -- 학과 외래키
    CONSTRAINT FK_prof_std FOREIGN KEY(pnumber) REFERENCES professor(pnumber)        -- 교수번호 외래키    
);




-- 학과 자료 입력
INSERT INTO major VALUES('소프트웨어학과', '02-123-4567', 'B동 3층');
INSERT INTO major VALUES('화학공학과', '02-123-5678', 'B동 4층');
INSERT INTO major VALUES('전기전자공학과', '02-123-6789', 'B동 5층');


-- 교수 자료 입력
INSERT INTO professor VALUES(301, '박은종', 'JAVA 프로그래밍');
INSERT INTO professor VALUES(402, '송미영', 'JSP 웹프로그래밍');
INSERT INTO professor VALUES(501, '오용철', '데이터베이스');


-- 학생 자료 입력
INSERT INTO student VALUES(20211234, '이강', 22, '여', '서울시 구로구', '소프트웨어학과', 301);
INSERT INTO student VALUES(20211235, '박대양', 25, '남', '서울시 성동구', '전기전자공학과', 501);
INSERT INTO student VALUES(20211236, '한비야', 23, '여', '서울시 강남구', '소프트웨어학과', 402);
INSERT INTO student VALUES(20211237, '정산들', 27, '남', '경기도 수원시', '화학공학과', 501);


DELETE professor WHERE pnumber = 301;
--  ~~자식 레코드가 발견되었습니다 오류!(참조되고 있는게 있어서)

--그래도 삭제하려면
ALTER TABLE student
DROP CONSTRAINT FK_prof_std;
-- 이렇게 외래키 삭제해주고 행 삭제




-- 다시 외래키 추가
ALTER TABLE student
ADD CONSTRAINT FK_prof_std FOREIGN KEY(pnumber) REFERENCES professor(pnumber); 
-- 근데 만약 그 사이에 참조되는 필드 포함한 행 삭제한게 있으면 다시 추가해줘야된다!!



SELECT * FROM major;
SELECT * FROM professor;
SELECT * FROM student;

COMMIT;