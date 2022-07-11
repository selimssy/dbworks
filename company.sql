-- 부서와 사원 테이블 생성
CREATE TABLE department(
    deptid NUMBER,                       -- 부서번호
    deptname VARCHAR2(20) NOT NULL,      -- 부서이름
    location VARCHAR2(20) NOT NULL,      -- 사무실위치
    PRIMARY KEY(deptid)   -- 기본키 여기서 이렇게 지정해도 된다
);






CREATE TABLE employee(
    empid NUMBER(3) PRIMARY KEY,        -- 사원 아이디
    empname VARCHAR2(20) NOT NULL,      -- 사원 이름
    age NUMBER(3),                      -- 나이
    deptid NUMBER,                      -- 부서번호(외래키)
    CONSTRAINT EMP_FK FOREIGN KEY(deptid) REFERENCES department(deptid)
);




-- 부서 자료 추가
INSERT INTO department VALUES(10, '전산팀', '서울');
INSERT INTO department VALUES(20, '총무팀', '인천');




-- 사원 자료 추가
INSERT INTO employee VALUES(101, '이강', 27, 10);
INSERT INTO employee VALUES(102, '김산', 28, 20);
INSERT INTO employee VALUES(102, '정들', 35, 30);     -- 부모키에 부서코드 30이 없어서 오류!
  



-- 부서 삭제
DELETE department 
WHERE deptid = 10;
-- 얘를 참조하고 있는애가 있어서 삭제 안된다! 삭제하려면 외래키 제약조건 삭제해야!
-- ORA-02292: 무결성 제약조건(SYSTEM.EMP_FK)이 위배되었습니다- 자식 레코드가 발견되었습니다



-- 외래키 제약 조건 삭제
ALTER TABLE employee
DROP CONSTRAINT EMP_FK;





-- 자료 검색
SELECT * FROM department;
SELECT * FROM employee;

