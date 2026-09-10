-- DDL(데이터 정의어)
-- 테이블 변경
-- 컬럼(속성) 추가
alter table 고객
            add 가입날짜 date;
            
-- 컬럼(속성) 삭제
alter table 고객
            drop COLUMN 가입날짜;
            
-- 제약조건 추가
alter table 고객
            add CONSTRAINT check_age check(나이>=20);
            
-- 제약조건 삭제
alter table 고객
            drop constraint check_age;
            
-- 테이블 삭제
drop table 배송업체;

-- DML(데이터 조작어)
-- insert(테이블에 데이터를 삽입)

-- 고객테이블에 데이터행 삽임
-- 모든 컬럼에 값이 삽입
-- 1번 방법: 테이블명() 안에 모든 컬럼리스트를 나열
insert into 고객(고객아이디, 고객이름, 나이, 등급, 직업, 적립금)
            values('banana', '김선우', 25, 'vip', '간호사', 2500);   
--2번 방법: 테이블명() 안에 모든 컬럼리스트 생략
insert into 고객
            values('carrot', '고명석', 28, 'gold', '교사', 4500);
--3번 방법: 컬럼의 순서를 변경
insert into 고객(고객아이디, 고객이름, 직업, 등급, 적립금, 나이)
            values('orange', '김용욱', '학생', 'silver', 0, 22);
-- 4번 방법: 컬럼 일부를 리스트에서 생략, not null 제약조건이 없는 컬럼만 생략 가능
insert into 고객(고객아이디, 고객이름, 직업, 등급)
            values('melon', '성원용', 'gold', '회사원');
insert into 고객(고객아이디, 고객이름, 등급, 직업, 적립금)
            values('peach', '오형준', 'silver', '의사', 300);
            
insert into 고객
            values('pear', '채광주', 31, 'silver', '회사원', 500);
            
insert into 고객
            values('strawberry', '최유경', 30, 'vip', '공무원', 100);
            
select * from 고객;

-- 제품 테이블에 데이터 삽입

select * from 제품;

insert into 제품 values('p02', '매운쫄면', 2500, 5500, '민국푸드');
insert into 제품 values('p03', '쿵떡파이', 3600, 2600, '한빛제과');
insert into 제품 values('p04', '맛난초컬릿', 1250, 2500, '한빛제과');
insert into 제품 values('p05', '얼큰라면', 2200, 1200, '대한식품');
insert into 제품 values('p06', '통통우동', 1000, 1550, '민국푸드');
insert into 제품 values('p07', '달콤비스킷', 1650, 1500, '한빛제과');

-- 주문 테이블에 데이터 삽입

select * from 주문;

insert into 주문 values('o03', 'banana', 'p06', 45, '경기도 부천시', '26/09/01');
insert into 주문 values('o04', 'carrot', 'p02', 8, '부산시 금정구', '26/07/30');
insert into 주문 values('o05', 'melon', 'p06', 36, '경기도 용인시', '26/08/01');
insert into 주문 values('o06', 'banana', 'p01', 19, '충청북도 보은군', '26/07/07');
insert into 주문 values('o07', 'apple', 'p03', 22, '서울시 영등포구', '26/09/03');
insert into 주문 values('o08', 'pear', 'p02', 50, '강원도 춘천시', '26/06/03');
insert into 주문 values('o09', 'banana', 'p04', 15, '전라남도 목포시', '26/07/08');
insert into 주문 values('o10', 'carrot', 'p03', 20, '경기도 안양시', '26/08/20');

--DML(select)
--기본검색
 
--컬럼(속성) 리스트와 순서는 변경이 가능
select 고객이름, 나이, 등급, 직업, 적립금, 고객아이디 from 고객;
 
--컬럼(속성) 리스트를 원래 테이블 컬럼 순서대로 모두 선택
select * from 고객;
 
--고객아이디, 고객이름, 직업 컬럼만 선택
select 고객아이디, 고객이름, 직업 from 고객;
 
--모든 데이터행 또는 중복데이터행 제거 후 선택
select all 직업 from 고객;
 
select 직업 from 고객;
 
select distinct 직업 from 고객;
 
--제품 테이블에서 제조업체를 검색하시오.
select 제조업체 from 제품;
--제품테이블에서 제조업체의 중복데이터를 제거하고 검색하시오.
select distinct 제조업체 from 제품;
 
--가상칼럼명을 설정
--제품테이블에서 제조업체의 중복데치터를 제거하고 검색하시오.(단 제조업체를 대표업체로 컬럼명 변경)
select distinct 제조업체 as 대표업체 from 제품; 
select distinct 제조업체 대표업체2 from 제품;

-- 제품테이블에서 제품명, 단가를 검색하되, 단가를 가격이라는 이름으로 출력하시오.
select 제품명, 단가 가격 from 제품;

--제품테이블에서 제품명, 단가를 검색하되, 단가에 500원으 더해서 조정 단가라는 가상컬럼명으로 출력하시오.
select 제품명, 단가+500 "조정 단가" from 제품;
select 제품명, 단가, 단가+500 "조정 단가" from 제품;

--where(조건)절
-- 제품테이블에서 제조업체가 한빛제과인 데이터행을 출력하시오.(단, 제품명, 단가, 제조업체 검색)
select 제품명, 단가, 제조업체 
    from 제품
    where 제조업체='한빛제과';
    
select * from 제품;
select * from 주문;

-- 주문테이블에서 주문고객이 carrot이면서 수량이 15개 이상인 주문한 주문제품, 수량, 주문일자를 출력하시오.
select 주문제품, 수량, 주문일자
     from 주문
     where 주문고객='carrot' and 수량>=15;
     
-- 주문고객이 apple이거나 수량이  15개 이상 주문한 주문고객, 주문제품, 수량, 주문일자를 출력하시오.
select 주문고객, 주문제품, 수량, 주문일자
    from 주문
    where 주문고객='apple' or 수량>=20;
   
select * from 고객;
-- 고객테이블에서 직업이 학생이거나 나이가 26세 이상인 고객의 고객이름, 나이, 직업을 출력하시오.
select 고객이름, 나이, 직업
    from 고객
    where 직업='학생' or 나이>=26;

--고객테이블에서 직업이 학생이고 나이가 22세 이상인 고객의 고객이름, 나이 ,직업을 출력하시오.
select 고객이름, 나이, 직업
    from 고객
    where 직업='학생' or 나이>=22;
    
--제품테이블에서 단가가 2000원 이상이면서 3000원 이하인 제품의 제품명, 단가, 제조업체를 출력하시오.
select 제품명, 단가, 제조업체
    from 제품
    where 단가>=2000 and 단가<=3000;

--고객테이블에서 나이가 20세이상 30세 이하인 고객의 고객이름, 나이, 직업을 출력하시오
select 고객이름, 나이, 직업
    from 고객
    where 나이>=20 and 나이<=30;
    
--like 연산자
--고객테이블에서 성이 김씨인 고객의 고객이름, 나이, 등급, 적립금을 출력하시오.
select 고객이름, 나이, 등급, 적립급
    from 고객
    where 고객이름 like '김%';
    
select * from 고객;

--고객테이블에서 고객이름이 용이라는 글자가 포함된 고객의 고객이름, 나이를 출력하시오.
select 고객이름, 나이
    from 고객
    where 고개이름 like '%용%';
    
-- 고객테이블에서 고객아이디에 가 포함된 고객의 고객아이디, 고객이름을 출력하시오.
select 고객아이디, 고객이름
    from 고객
    where 고객아이디 like '%p%';
    
-- 고객테이블에서 고객아이디가 pe로 시작하고 4개의 글자로 된 고객의 고객아이디, 고객이름을 출력하시오.
select 고객아이디, 고객이름
    from 고객
    where 고객아이디 like 'pe__';