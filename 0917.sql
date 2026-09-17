-- select 복습 문제
-- 1. 고객테이블에서 고객아이디, 고객 이름, 직업을 검색하시오.
select 고객아이디, 고객이름, 직업
    from 고객;

-- 2. 고객테이블에서 등급에 '1'가 포함된 행의 고객이름, 등급을 검색하시오.
select 고객이름, 등급
    from 고객
    where 등급 like '%1%';

-- 3. 고객테이블에서 나이가 20세 이상이고 25세 미만인 고객을 검색하시오.
select * from 고객
    where 나이>=20 and 나이<=25;
    
-- 4. 고객테이블에서 등급이 'gold'이고 적립금이 3000원이상인 고객을 검색하시오.
select * from 고객
    where 등급='gold' and 적립금>=3000;
    
-- 고객테이블에서 성이 김씨이면서 고객아이디가 5글자인 고객을 검색하시오.
select * from 고객
    where 고객이름 like '김%' and 고객아이디 like '______';
    
-- 고객테이블에서 직업이 학생 또는 회사원인 고객을 검색하시오.
select * from 고객
    where 직업='학색' or 직업='회사원';
    
select * from 고객
    where 직업 in ('학생', '회사원');
    
-- 고개테이블에서 나이가 입력되지 않은(Null) 고객을 검색하시오.
select * from 고객
    where 나이 is null;
    
-- 고객테이블에서 나이가 입력된 고객을 검색하시오.
select * from 고객
    where 나이 is not null;
    
-- 고객테이브렝서 고객이름, 등급, 나이를 검색하되 나이를 기준으로 내림차순 정렬하시오.
select 고객이름, 등급, 나이 from 고객
    where by 나이