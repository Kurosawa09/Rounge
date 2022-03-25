drop table rounge_member;
drop table board_create;
drop sequence board_post_seq;
drop table board_post;
drop table company_create;


-- 1
create table rounge_member (
	id			varchar2(20) 	primary key,	
	password	varchar2(20) 	not null,			
	name		varchar2(20) 	not null,			
	photo		number(1) 		default 1,		 
	language	varchar2(20)	not null	
);

-- 2
create table board_create (
	board_type	varchar2(20) 	primary key			--게시판 구분
);

-- 3
create sequence board_post_seq;

-- 4
create table board_post (
    board_type	varchar2(20) 	not null,			--게시판 구분
	boardNum	number			primary key,		--글 일련번호
	id			varchar2(20)	not null,			--작성자 ID
	title		varchar2(200) 	not null,			--글 제목
	content		varchar2(2000) 	not null,			--글 내용
	inputDate	date			default sysdate,	--작성 날짜
	likeCnt		number			default 0,			--추천수 
    status      number          default 0,          -- 글 작성 상태
	constraint board_post_fk1 foreign key(id) 
		references rounge_member (id) on delete cascade,
    constraint board_post_fk2 foreign key(board_type) 
		references board_create (board_type) on delete cascade
);

--7
create table company_create (
    company_name        varchar2(20)    primary key,    --기업 이름
    company_homepage    varchar2(3000),                 --기업 홈페이지
    company_service     varchar2(20),                   --업종
    company_year        number(4)       not null,       --설립년도
    headoffice          varchar2(15)    not null,       --본사 위치
    employees           number(10)      default 0,      --직원 수
    salary              number(38)      default 0       --급여
);