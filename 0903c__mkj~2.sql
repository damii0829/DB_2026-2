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

