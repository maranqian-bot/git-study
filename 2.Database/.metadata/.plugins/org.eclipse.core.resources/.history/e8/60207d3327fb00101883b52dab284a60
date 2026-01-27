1. 제약조건(CONSTRAINT)
 - 컬럼에 어떤한 조건을 걸어 부적절한 데이커가 추가되는 것을 방지하는 조건
 - 종류 : NOT NULL, UNIQUE, PRIMARY KEY , foregin KEY, ...ALTER 
 
 2. NOT NULL
  - 해당 컬럼에 빈 값(null)이 들어올수 없는 제약 조건
  - 반드시 값이 있어야 하는 컬럼
  - ex) 회원 테이블의 아이디, 비번
  
 3. UNIQUE 
  - 해당 커럶에 반드시 유일해야 하는 값
  - 중복 불가
  
  4. CHECK 
   - 해당 컬렁에 들어와야 할 값을 미리 정해두는 제약 조건
   ex) 성별에는 'w', 'm'만 들어올 수 잇음
   > 현재 MySQL에서 대소문자 구별하는 옵션이 꺼져있으므로 소문자도 가능
   
  5. DEFAULT 
    -해당 컬럼에 아무런 값이 들어오지 않을 경우 추가할 값을 설정하는 제약 조건(기본값 설정)
    - ex) 회원기입일, 게시글 작성일, 게시글 조회수 등
    
  6. PRIMARY keyALTER (기본키)
    - 테이블에서 데이터를 유일하게 석별할 수 있는 제약 조건
    - 중복 불가(unique)+ 빈값 불가 (not null)
    - ex) 회원 번호. 주문 번호
     
  7. foreign key(외래키 또는 참조키)
     - 다른 테이블의 값을 참조하여 테이블간의 관계를 맺어주는 제약 조건
     - 참조할 수 있는 컬럼은 기본키(PK) 또는 UNIQUE만 가능
     - FK가 설정된 커럼에는 참조중인 테이블의 PK가 가지고 있지 않는 값은 삽입할 수 없음
     (데이터의 일관성을 유지시킴)
     
 8. 제약조건 사용 예시
    - AUTO_INCREMENT : 숫자를 자동으로 증가시켜주는 기능
     CREATE TABLE borad(
     board_id int primary key auto_increment,
     title varchar(300) not null,
     content int not null default 0,
     delete_status varcahr(1) not null default 'n' check (delete_status in('y','n')),
     member_id int ,
     constraint fk_member_id foreign key (member_id)
     references member(member_id)     