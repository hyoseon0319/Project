create database cafe_system;
use cafe_system;


# 지점 테이블
create table store(
code varchar(10) not null, #PK
name varchar(20) not null,
primary key(code)
);

insert into store values('A1', '한국외대점');
insert into store values('A2', '충무로점');

SELECT * FROM STORE;

# 메뉴 테이블
select * from menu;

create table menu(
num int not null, # 메뉴번호 PK
name varchar(50) not null, # 메뉴이름
price int not null,  # 메뉴가격
type varchar(10), # 음료종류
code varchar(10), # 지점코드 FK
primary key(num),
foreign key(code) references store(code) on delete cascade
);

# 메뉴 데이터

# 1호점
insert into menu value(1, '에스프레소', 2500, 'COFFEE', 'A1');
insert into menu value(2, '아메리카노', 2000, 'COFFEE', 'A1');
insert into menu value(3, '카페라떼', 3000, 'COFFEE', 'A1');
insert into menu value(4, '카푸치노', 3000, 'COFFEE','A1');
insert into menu value(5, '바닐라라떼', 3500, 'COFFEE','A1');
insert into menu value(6, '헤이즐넛라떼', 3500, 'COFFEE','A1');
insert into menu value(7, '콜드브루', 3000, 'COFFEE','A1');
insert into menu value(8, '콜드브루라떼', 3300, 'COFFEE','A1');
insert into menu value(9, '카라멜마끼야또', 3800, 'COFFEE','A1');
insert into menu value(10, '카페모카', 3800, 'COFFEE','A1');
insert into menu value(11, '연유라떼', 3800, 'COFFEE','A1');
insert into menu value(12, '흑당라떼', 3500, 'COFFEE','A1');
insert into menu value(13, '요거트 플레인', 3300, 'ENJOY','A1');
insert into menu value(14, '요거트 레몬', 3800, 'ENJOY','A1');
insert into menu value(15, '요거트 알로에', 3500, 'ENJOY','A1');
insert into menu value(16, '요거트 딸기', 3800, 'ENJOY','A1');
insert into menu value(17, '오레오 초코', 3500, 'ENJOY','A1');
insert into menu value(18, '민트초코', 3500, 'ENJOY','A1');
insert into menu value(19, '그린티라떼', 3300, 'ENJOY','A1');
insert into menu value(20, '다방커피', 2800, 'ENJOY','A1');
insert into menu value(21, '로얄밀크티', 3500, 'ENJOY','A1');
insert into menu value(22, '딸기라떼', 3800, 'ENJOY','A1');
insert into menu value(23, '딸기바나나주스', 3200, 'ENJOY','A1');
insert into menu value(24, '당근주스', 3000, 'LIFE','A1');
insert into menu value(25, '당근사과주스', 3600, 'LIFE','A1');
insert into menu value(26, '오당사', 3800, 'LIFE','A1');
insert into menu value(27, '불독해독주스[디톡스]', 5000, 'LIFE','A1');
insert into menu value(28, '오렌지주스', 3500, 'LIFE','A1');
insert into menu value(29, '엘더플라워 사과', 3600, 'LIFE','A1');
insert into menu value(30, '엘더플라워 레몬', 3800, 'LIFE','A1');
insert into menu value(31, '엘더플라워 알로에', 3600, 'LIFE','A1');
insert into menu value(32, '엘더플라워 오렌지', 3800, 'LIFE','A1');
insert into menu value(33, '깔라만씨', 3000, 'LIFE','A1');
insert into menu value(34, '깔라만씨트로피칼', 3500, 'LIFE','A1');
insert into menu value(35, '레몬에이드', 3400, 'LIFE','A1');
insert into menu value(36, '블루레몬에이드', 3600, 'LIFE','A1');
insert into menu value(37, '체리레몬에이드', 3400, 'LIFE','A1');
insert into menu value(38, '자몽레몬에이드', 3700, 'LIFE','A1');
insert into menu value(39, '청포도레몬에이드', 3700, 'LIFE','A1');
insert into menu value(40, '오렌지레몬에이드', 3700, 'LIFE','A1');

# 2호점
insert into menu value(41, '에스프레소', 2500, 'COFFEE', 'A2');
insert into menu value(42, '아메리카노', 2000, 'COFFEE', 'A2');
insert into menu value(43, '카페라떼', 3000, 'COFFEE', 'A2');
insert into menu value(44, '카푸치노', 3000, 'COFFEE','A2');
insert into menu value(45, '바닐라라떼', 3500, 'COFFEE','A2');
insert into menu value(46, '헤이즐넛라떼', 3500, 'COFFEE','A2');
insert into menu value(47, '콜드브루', 3000, 'COFFEE','A2');
insert into menu value(48, '콜드브루라떼', 3300, 'COFFEE','A2');
insert into menu value(49, '카라멜마끼야또', 3800, 'COFFEE','A2');
insert into menu value(50, '카페모카', 3800, 'COFFEE','A2');
insert into menu value(51, '연유라떼', 3800, 'COFFEE','A2');
insert into menu value(52, '흑당라떼', 3500, 'COFFEE','A2');
insert into menu value(53, '요거트 플레인', 3300, 'ENJOY','A2');
insert into menu value(54, '요거트 레몬', 3800, 'ENJOY','A2');
insert into menu value(55, '요거트 알로에', 3500, 'ENJOY','A2');
insert into menu value(56, '요거트 딸기', 3800, 'ENJOY','A2');
insert into menu value(57, '오레오 초코', 3500, 'ENJOY','A2');
insert into menu value(58, '민트초코', 3500, 'ENJOY','A2');
insert into menu value(59, '그린티라떼', 3300, 'ENJOY','A2');
insert into menu value(60, '다방커피', 2800, 'ENJOY','A2');
insert into menu value(61, '로얄밀크티', 3500, 'ENJOY','A2');
insert into menu value(62, '딸기라떼', 3800, 'ENJOY','A2');
insert into menu value(63, '딸기바나나주스', 3200, 'ENJOY','A2');
insert into menu value(64, '당근주스', 3000, 'LIFE','A2');
insert into menu value(65, '당근사과주스', 3600, 'LIFE','A2');
insert into menu value(66, '오당사', 3800, 'LIFE','A2');
insert into menu value(67, '불독해독주스[디톡스]', 5000, 'LIFE','A2');
insert into menu value(68, '오렌지주스', 3500, 'LIFE','A2');
insert into menu value(69, '엘더플라워 사과', 3600, 'LIFE','A2');
insert into menu value(70, '엘더플라워 레몬', 3800, 'LIFE','A2');
insert into menu value(71, '엘더플라워 알로에', 3600, 'LIFE','A2');
insert into menu value(72, '엘더플라워 오렌지', 3800, 'LIFE','A2');
insert into menu value(73, '깔라만씨', 3000, 'LIFE','A2');
insert into menu value(74, '깔라만씨트로피칼', 3500, 'LIFE','A2');
insert into menu value(75, '레몬에이드', 3400, 'LIFE','A2');
insert into menu value(76, '블루레몬에이드', 3600, 'LIFE','A2');
insert into menu value(77, '체리레몬에이드', 3400, 'LIFE','A2');
insert into menu value(78, '자몽레몬에이드', 3700, 'LIFE','A2');
insert into menu value(79, '청포도레몬에이드', 3700, 'LIFE','A2');
insert into menu value(80, '오렌지레몬에이드', 3700, 'LIFE','A2');

SELECT * FROM MENU;
DROP TABLE MENU;

# 스탬프 테이블
create table stamp(
num VARCHAR(5), # 스탬프 번호 PK
c_name varchar(10), # 고객이름
count int check (count<9), # 스탬프 갯수 최대 8개
primary key(num)
);



# 스탬프 수가 8개인 사람 그룹으로 묶어라.
# 사은품으로 연결

SELECT * FROM STAMP;

INSERT INTO STAMP VALUES('S001', '김정준', 8);
INSERT INTO STAMP VALUES('S002', '이진규', 2);
INSERT INTO STAMP VALUES('S003', '임성빈', 4);
INSERT INTO STAMP VALUES('S004', '신진혁', 7);
INSERT INTO STAMP VALUES('S005', '황진옥', 5);
INSERT INTO STAMP VALUES('S006', '주상현', 0);
INSERT INTO STAMP VALUES('S007', '김찬준', 2);
INSERT INTO STAMP VALUES('S008', '황인기', 6);
INSERT INTO STAMP VALUES('S009', '정승원', 3);
INSERT INTO STAMP VALUES('S010', '김민성', 2);
INSERT INTO STAMP VALUES('S011', '신준석', 1);
INSERT INTO STAMP VALUES('S012', '이원택', 8);
INSERT INTO STAMP VALUES('S013', '박예은', 3);
INSERT INTO STAMP VALUES('S014', '이보미', 7);
INSERT INTO STAMP VALUES('S015', '정석민', 1);
INSERT INTO STAMP VALUES('S016', '황지유', 6);
INSERT INTO STAMP VALUES('S017', '최은지', 8);
INSERT INTO STAMP VALUES('S018', '황병근', 0);
INSERT INTO STAMP VALUES('S019', '정재원', 1);
INSERT INTO STAMP VALUES('S020', '이현준', 4);



select * from stamp;

# 고객 테이블
create table customer(
num varchar(20), #고객번호(닉네임) PK
name varchar(10), #고객이름
s_num varchar(5), #스탬프 번호 FK
PRIMARY KEY(num),
foreign key(s_num) references stamp(num) on delete cascade
);

SELECT * FROM CUSTOMER;
drop table customer;
delete from customer;

insert into customer values('펭수','김정준','s001');
insert into customer values('매니저', '이진규', 's002');
insert into customer values('해브어굿타임', '임성빈', 's003');
insert into customer values('게임조아', '신진혁', 's004');
insert into customer values('디노', '황진옥', 's005');
insert into customer values('스누피', '주상현', 's006');
insert into customer values('코딩원츄', '김찬준', 's007');
insert into customer values('반장', '황인기', 's008');
insert into customer values('피어', '정승원', 's009');
insert into customer values('민성민성', '김민성', 's010');
insert into customer values('준석준석', '신준석', 's011');
insert into customer values('조구만', '이원택', 's012');
insert into customer values('아프로디테', '박예은', 's013');
insert into customer values('리보마이', '이보미', 's014');
insert into customer values('석구', '정석민', 's015');
insert into customer values('개죽이', '황지유', 's016');
insert into customer values('응디곤듀', '최은지', 's017');
insert into customer values('헬스황제', '황병근', 's018');
insert into customer values('모아이', '정재원', 's019');
insert into customer values('칼리', '이현준', 's020');



# 주문 테이블
create table orders( #주문 
num varchar(5) not null, #주문번호 PK
date timestamp not null, #주문날짜
c_num varchar(20) not null, #고객번호(닉네임) FK
m_num int not null, #메뉴번호 FK
PRIMARY KEY (num),
foreign key(c_num) references customer(num) on delete cascade,
foreign key(m_num) references menu(num) on delete cascade
);

alter table orders modify date date not null;


SELECT * FROM ORDERS;
delete from orders;

# set SQL_SAFE_UPDATES = 0;
# 01/01 주문
INSERT INTO orders VALUES ('O001', '2020-01-01', '펭수', 2);
INSERT INTO orders VALUES ('O002', '2020-01-01', '매니저', 13);
INSERT INTO orders VALUES ('O003', '2020-01-01', '민성민성', 56);
INSERT INTO orders VALUES ('O004', '2020-01-01', '해브어굿타임', 24);
INSERT INTO orders VALUES ('O005', '2020-01-01', '디노', 72);
# 01/02 주문
INSERT INTO orders VALUES ('O006', '2020-01-02', '매니저', 15);
INSERT INTO orders VALUES ('O007', '2020-01-02', '디노', 12);
INSERT INTO orders VALUES ('O008', '2020-01-02', '준석준석', 2);
INSERT INTO orders VALUES ('O009', '2020-01-02', '스누피', 47);
INSERT INTO orders VALUES ('O010', '2020-01-02', '게임조아', 2);
# 01/03 주문
INSERT INTO orders VALUES ('O011', '2020-01-03', '아프로디테', 37);
INSERT INTO orders VALUES ('O012', '2020-01-03', '매니저', 32);
INSERT INTO orders VALUES ('O013', '2020-01-03', '조구만', 2);
INSERT INTO orders VALUES ('O014', '2020-01-03', '개죽이', 80);
INSERT INTO orders VALUES ('O015', '2020-01-03', '석구', 5);
# 01/04 주문
INSERT INTO orders VALUES ('O016', '2020-01-04', '조구만', 72);
INSERT INTO orders VALUES ('O017', '2020-01-04', '칼리', 2);
INSERT INTO orders VALUES ('O018', '2020-01-04', '모아이', 72);
INSERT INTO orders VALUES ('O019', '2020-01-04', '응디곤듀', 53);
INSERT INTO orders VALUES ('O020', '2020-01-04', '헬스황제', 1);
# 01/05 주문
INSERT INTO orders VALUES ('O021', '2020-01-05', '피어', 5);
INSERT INTO orders VALUES ('O022', '2020-01-05', '코딩원츄', 5);
INSERT INTO orders VALUES ('O023', '2020-01-05', '디노', 5);
INSERT INTO orders VALUES ('O024', '2020-01-05', '펭수', 5);
INSERT INTO orders VALUES ('O025', '2020-01-05', '반장', 70);
# 01/06 주문
INSERT INTO orders VALUES ('O026', '2020-01-06', '아프로디테', 48);
INSERT INTO orders VALUES ('O027', '2020-01-06', '스누피', 15);
INSERT INTO orders VALUES ('O028', '2020-01-06', '헬스황제', 25);
INSERT INTO orders VALUES ('O029', '2020-01-06', '조구만', 45);
INSERT INTO orders VALUES ('O030', '2020-01-06', '모아이', 34);
# 01/07 주문
INSERT INTO orders VALUES ('O031', '2020-01-07', '매니저', 48);
INSERT INTO orders VALUES ('O032', '2020-01-07', '반장', 15);
INSERT INTO orders VALUES ('O033', '2020-01-07', '펭수', 25);
INSERT INTO orders VALUES ('O034', '2020-01-07', '준석준석', 45);
INSERT INTO orders VALUES ('O035', '2020-01-07', '민성민성', 34);
# 01/08 주문
INSERT INTO orders VALUES ('O036', '2020-01-08', '헬스황제', 38);
INSERT INTO orders VALUES ('O037', '2020-01-08', '칼리', 59);
INSERT INTO orders VALUES ('O038', '2020-01-08', '스누피', 60);
INSERT INTO orders VALUES ('O039', '2020-01-08', '해브어굿타임', 49);
INSERT INTO orders VALUES ('O040', '2020-01-08', '매니저', 2);
# 01/09 주문
INSERT INTO orders VALUES ('O041', '2020-01-09', '펭수', 2);
INSERT INTO orders VALUES ('O042', '2020-01-09', '게임조아', 2);
INSERT INTO orders VALUES ('O043', '2020-01-09', '해브어굿타임', 49);
INSERT INTO orders VALUES ('O044', '2020-01-09', '리보마이', 80);
INSERT INTO orders VALUES ('O045', '2020-01-09', '매니저', 2);
# 01/09 주문
INSERT INTO orders VALUES ('O046', '2020-01-10', '석구', 39);
INSERT INTO orders VALUES ('O047', '2020-01-10', '게임조아', 38);
INSERT INTO orders VALUES ('O048', '2020-01-10', '응디곤듀', 37);
INSERT INTO orders VALUES ('O049', '2020-01-10', '칼리', 35);
INSERT INTO orders VALUES ('O050', '2020-01-10', '헬스황제', 36);
# 01/10 주문
INSERT INTO orders VALUES ('O051', '2020-01-10', '반장', 15);
INSERT INTO orders VALUES ('O052', '2020-01-10', '모아이', 32);
INSERT INTO orders VALUES ('O053', '2020-01-10', '개죽이', 23);
INSERT INTO orders VALUES ('O054', '2020-01-10', '코딩원츄', 24);
INSERT INTO orders VALUES ('O055', '2020-01-10', '디노', 65);
# 01/11 주문
INSERT INTO orders VALUES ('O056', '2020-01-11', '준석준석', 76);
INSERT INTO orders VALUES ('O057', '2020-01-11', '펭수', 72);
INSERT INTO orders VALUES ('O058', '2020-01-11', '민성민성', 35);
INSERT INTO orders VALUES ('O059', '2020-01-11', '모아이', 24);
INSERT INTO orders VALUES ('O060', '2020-01-11', '칼리', 25);
# 01/12 주문
INSERT INTO orders VALUES ('O061', '2020-01-12', '석구', 6);
INSERT INTO orders VALUES ('O062', '2020-01-12', '펭수', 2);
INSERT INTO orders VALUES ('O063', '2020-01-12', '피어', 7);
INSERT INTO orders VALUES ('O064', '2020-01-12', '칼리', 49);
INSERT INTO orders VALUES ('O065', '2020-01-12', '스누피', 80);
# 01/13 주문
INSERT INTO orders VALUES ('O066', '2020-01-13', '반장', 26);
INSERT INTO orders VALUES ('O067', '2020-01-13', '펭수', 62);
INSERT INTO orders VALUES ('O068', '2020-01-13', '디노', 40);
INSERT INTO orders VALUES ('O069', '2020-01-13', '게임조아', 2);
INSERT INTO orders VALUES ('O070', '2020-01-13', '칼리', 12);
# 01/14 주문
INSERT INTO orders VALUES ('O071', '2020-01-14', '준석준석', 78);
INSERT INTO orders VALUES ('O072', '2020-01-14', '조구만', 64);
INSERT INTO orders VALUES ('O073', '2020-01-14', '아프로디테', 41);
INSERT INTO orders VALUES ('O074', '2020-01-14', '헬스황제', 22);
INSERT INTO orders VALUES ('O075', '2020-01-14', '코딩원츄', 32);
# 01/15 주문
INSERT INTO orders VALUES ('O076', '2020-01-15', '조구만', 26);
INSERT INTO orders VALUES ('O077', '2020-01-15', '펭수', 2);
INSERT INTO orders VALUES ('O078', '2020-01-15', '해브어굿타임', 49);
INSERT INTO orders VALUES ('O079', '2020-01-15', '리보마이', 54);
INSERT INTO orders VALUES ('O080', '2020-01-15', '매니저', 23);
# 01/16 주문
INSERT INTO orders VALUES ('O081', '2020-01-16', '피어', 60);
INSERT INTO orders VALUES ('O082', '2020-01-16', '반장', 20);
INSERT INTO orders VALUES ('O083', '2020-01-16', '석구', 61);
INSERT INTO orders VALUES ('O084', '2020-01-16', '개죽이', 6);
INSERT INTO orders VALUES ('O085', '2020-01-16', '게임조아', 7);
# 01/17 주문
INSERT INTO orders VALUES ('O086', '2020-01-17', '조구만', 1);
INSERT INTO orders VALUES ('O087', '2020-01-17', '펭수', 2);
INSERT INTO orders VALUES ('O088', '2020-01-17', '해브어굿타임', 49);
INSERT INTO orders VALUES ('O089', '2020-01-17', '리보마이', 50);
INSERT INTO orders VALUES ('O090', '2020-01-17', '매니저', 3);
# 01/18 주문
INSERT INTO orders VALUES ('O091', '2020-01-18', '코딩원츄', 80);
INSERT INTO orders VALUES ('O092', '2020-01-18', '준석준석', 21);
INSERT INTO orders VALUES ('O093', '2020-01-18', '아프로디테', 79);
INSERT INTO orders VALUES ('O094', '2020-01-18', '펭수', 2);
INSERT INTO orders VALUES ('O095', '2020-01-18', '반장', 37);
# 01/19 주문
INSERT INTO orders VALUES ('O096', '2020-01-19', '피어', 16);
INSERT INTO orders VALUES ('O097', '2020-01-19', '칼리', 22);
INSERT INTO orders VALUES ('O098', '2020-01-19', '해브어굿타임', 79);
INSERT INTO orders VALUES ('O099', '2020-01-19', '모아이', 54);
INSERT INTO orders VALUES ('O100', '2020-01-19', '매니저', 33);
# 01/20 주문
INSERT INTO orders VALUES ('O101', '2020-01-20', '스누피', 40);
INSERT INTO orders VALUES ('O102', '2020-01-20', '디노', 30);
INSERT INTO orders VALUES ('O103', '2020-01-20', '준석준석', 20);
INSERT INTO orders VALUES ('O104', '2020-01-20', '민성민성', 10);
INSERT INTO orders VALUES ('O105', '2020-01-20', '피어', 38);
# 01/21 주문
INSERT INTO orders VALUES ('O106', '2020-01-21', '디노', 4);
INSERT INTO orders VALUES ('O107', '2020-01-21', '조구만', 2);
INSERT INTO orders VALUES ('O108', '2020-01-21', '해브어굿타임', 75);
INSERT INTO orders VALUES ('O109', '2020-01-21', '펭수', 76);
INSERT INTO orders VALUES ('O110', '2020-01-21', '매니저', 74);
# 01/22 주문
INSERT INTO orders VALUES ('O111', '2020-01-22', '펭수', 67);
INSERT INTO orders VALUES ('O112', '2020-01-22', '개죽이', 3);
INSERT INTO orders VALUES ('O113', '2020-01-22', '응디곤듀', 77);
INSERT INTO orders VALUES ('O114', '2020-01-22', '칼리', 55);
INSERT INTO orders VALUES ('O115', '2020-01-22', '게임조아', 44);
# 01/23 주문
INSERT INTO orders VALUES ('O116', '2020-01-23', '헬스황제', 23);
INSERT INTO orders VALUES ('O117', '2020-01-23', '피어', 30);
INSERT INTO orders VALUES ('O118', '2020-01-23', '스누피', 70);
INSERT INTO orders VALUES ('O119', '2020-01-23', '모아이', 80);
INSERT INTO orders VALUES ('O120', '2020-01-23', '코딩원츄', 13);
# 01/24 주문
INSERT INTO orders VALUES ('O121', '2020-01-24', '아프로디테', 14);
INSERT INTO orders VALUES ('O122', '2020-01-24', '리보마이', 21);
INSERT INTO orders VALUES ('O123', '2020-01-24', '펭수', 35);
INSERT INTO orders VALUES ('O124', '2020-01-24', '피어', 71);
INSERT INTO orders VALUES ('O125', '2020-01-24', '칼리', 17);
# 01/25 주문
INSERT INTO orders VALUES ('O126', '2020-01-25', '펭수', 2);
INSERT INTO orders VALUES ('O127', '2020-01-25', '해브어굿타임', 49);
INSERT INTO orders VALUES ('O128', '2020-01-25', '반장', 66);
INSERT INTO orders VALUES ('O129', '2020-01-25', '디노', 25);
INSERT INTO orders VALUES ('O130', '2020-01-25', '석구', 26);
# 01/26 주문
INSERT INTO orders VALUES ('O131', '2020-01-26', '코딩원츄', 72);
INSERT INTO orders VALUES ('O132', '2020-01-26', '개죽이', 43);
INSERT INTO orders VALUES ('O133', '2020-01-26', '칼리', 28);
INSERT INTO orders VALUES ('O134', '2020-01-26', '게임조아', 79);
INSERT INTO orders VALUES ('O135', '2020-01-26', '펭수', 6);
# 01/27 주문
INSERT INTO orders VALUES ('O136', '2020-01-27', '매니저', 10);
INSERT INTO orders VALUES ('O137', '2020-01-27', '개죽이', 37);
INSERT INTO orders VALUES ('O138', '2020-01-27', '조구만', 33);
INSERT INTO orders VALUES ('O139', '2020-01-27', '모아이', 9);
INSERT INTO orders VALUES ('O140', '2020-01-27', '스누피', 61);
# 01/28 주문
INSERT INTO orders VALUES ('O141', '2020-01-28', '민성민성', 74);
INSERT INTO orders VALUES ('O142', '2020-01-28', '응디곤듀', 44);
INSERT INTO orders VALUES ('O143', '2020-01-28', '석구', 33);
INSERT INTO orders VALUES ('O144', '2020-01-28', '리보마이', 22);
INSERT INTO orders VALUES ('O145', '2020-01-28', '칼리', 11);
# 01/29 주문
INSERT INTO orders VALUES ('O146', '2020-01-29', '해브어굿타임', 77);
INSERT INTO orders VALUES ('O147', '2020-01-29', '디노', 4);
INSERT INTO orders VALUES ('O148', '2020-01-29', '리보마이', 5);
INSERT INTO orders VALUES ('O149', '2020-01-29', '게임조아', 1);
INSERT INTO orders VALUES ('O150', '2020-01-29', '펭수', 2);
# 01/30 주문
INSERT INTO orders VALUES ('O151', '2020-01-30', '코딩원츄', 27);
INSERT INTO orders VALUES ('O152', '2020-01-30', '준석준석', 3);
INSERT INTO orders VALUES ('O153', '2020-01-30', '반장', 28);
INSERT INTO orders VALUES ('O154', '2020-01-30', '매니저', 75);
INSERT INTO orders VALUES ('O155', '2020-01-30', '펭수', 75);
# 01/31 주문
INSERT INTO orders VALUES ('O156', '2020-01-31', '스누피', 8);
INSERT INTO orders VALUES ('O157', '2020-01-31', '개죽이', 42);
INSERT INTO orders VALUES ('O158', '2020-01-31', '석구', 28);
INSERT INTO orders VALUES ('O159', '2020-01-31', '피어', 10);
INSERT INTO orders VALUES ('O160', '2020-01-31', '헬스황제', 61);


DELETE FROM ORDERS;


# 직원 테이블
create table employee(
id varchar(10) not null, #직원아이디(닉네임) PK
pwd int not null, #비밀번호
name varchar(10) not null, #이름
birth date, #생년월일
CODE VARCHAR(10), # 지점코드 FK
position varchar(10), #포지션
primary key(id),
foreign key(CODE) references STORE(CODE) on delete cascade
);

select * from employee;
INSERT INTO EMPLOYEE VALUES('효구', 1001, '허효선', '96/03/19', 'A1', '사장님');
INSERT INTO EMPLOYEE VALUES('도우너', 1002, '이정화', '93/10/29', 'A1', '직원님');
INSERT INTO EMPLOYEE VALUES('민들레', 1003, '이민지', '97/01/03', 'A1', '알바님');

INSERT INTO EMPLOYEE VALUES('황제', 2001, '황민현', '95/04/01', 'A2', '사장님');
INSERT INTO EMPLOYEE VALUES('동원참치', 2002, '강동원', '88/02/05', 'A2', '직원님');
INSERT INTO EMPLOYEE VALUES('실버카', 2003, '차은우', '81/01/18', 'A2', '알바님');


# 1월 매출 테이블
create table sales(
num int, # 매출번호 PK
code varchar(10), # 지점코드 FK
type varchar(10), #매출구분
date date, # 매출날짜
amount int, # 판매량
primary key(num),
foreign key(code) references store(code) ON DELETE cascade
);

SELECT * FROM SALES;

# 01월 01일의 판매량 평균을 구하라.
# 2월 날짜 중에서 가장 많이 팔린 날을 구하라.
# 2월 3일에는 몇호점이 더 많이 팔았는지 구하라.

delete from sales;
# 01/01 1호점 판매량
insert into sales VALUES(1000, 'A1','COFFEE', '2020/01/01', 220);
insert into sales VALUES(1001, 'A1','ENJOY', '2020/01/01', 140);
insert into sales VALUES(1002, 'A1','LIFE', '2020/01/01', 170);
# 01/01 2호점 판매량
insert into sales VALUES(1003, 'A2','COFFEE', '2020/01/01', 347);
insert into sales VALUES(1004, 'A2','ENJOY', '2020/01/01', 165);
insert into sales VALUES(1005, 'A2','LIFE','2020/01/01', 172);
# 01/02 1호점 판매량
insert into sales VALUES(1006, 'A1','COFFEE','2020/01/02', 394);
insert into sales VALUES(1007, 'A1','ENJOY','2020/01/02', 222);
insert into sales VALUES(1008, 'A1','LIFE','2020/01/02', 110);
# 01/02 2호점 판매량
insert into sales VALUES(1009, 'A2','COFFEE','2020/01/02', 330);
insert into sales VALUES(1010, 'A2','ENJOY','2020/01/02', 290);
insert into sales VALUES(1011, 'A2','LIFE','2020/01/02', 220);
# 01/03 1호점 판매량
insert into sales VALUES(1012, 'A1','COFFEE','2020/01/03', 445);
insert into sales VALUES(1013, 'A1','ENJOY','2020/01/03', 324);
insert into sales VALUES(1014, 'A1','LIFE','2020/01/03', 133);
# 01/03 2호점 판매량
insert into sales VALUES(1015, 'A2','COFFEE','2020/01/03', 288);
insert into sales VALUES(1016, 'A2','ENJOY','2020/01/03', 302);
insert into sales VALUES(1017, 'A2','LIFE','2020/01/03', 140);
# 01/04 1호점 판매량
insert into sales VALUES(1018, 'A1','COFFEE','2020/01/04', 119);
insert into sales VALUES(1019, 'A1','ENJOY','2020/01/04', 288);
insert into sales VALUES(1020, 'A1','LIFE','2020/01/04', 132);
# 01/04 2호점 판매량
insert into sales VALUES(1021, 'A2','COFFEE','2020/01/04', 101);
insert into sales VALUES(1022, 'A2','ENJOY','2020/01/04', 32);
insert into sales VALUES(1023, 'A2','LIFE','2020/02/04', 118);
# 01/05 1호점 판매량
insert into sales VALUES(1024, 'A1','COFFEE','2020/01/05', 59);
insert into sales VALUES(1025, 'A1','ENJOY','2020/01/05', 254);
insert into sales VALUES(1026, 'A1','LIFE','2020/01/05', 79);
# 01/05 2호점 판매량
insert into sales VALUES(1027, 'A2','COFFEE','2020/01/05', 121);
insert into sales VALUES(1028, 'A2','ENJOY','2020/01/05', 87);
insert into sales VALUES(1029, 'A2','LIFE','2020/01/05', 298);
# 01/06 1호점 판매량
insert into sales VALUES(1030, 'A1','COFFEE','2020/01/06', 159);
insert into sales VALUES(1031, 'A1','ENJOY','2020/01/06', 514);
insert into sales VALUES(1032, 'A1','LIFE','2020/01/06', 729);
# 01/06 2호점 판매량
insert into sales VALUES(1033, 'A2','COFFEE','2020/01/06', 121);
insert into sales VALUES(1034, 'A2','ENJOY','2020/01/06', 187);
insert into sales VALUES(1035, 'A2','LIFE','2020/01/06', 98);
# 01/07 1호점 판매량
insert into sales VALUES(1036, 'A1','COFFEE','2020/01/07', 209);
insert into sales VALUES(1037, 'A1','ENJOY','2020/01/07', 54);
insert into sales VALUES(1038, 'A1','LIFE','2020/01/07', 62);
# 01/07 2호점 판매량
insert into sales VALUES(1039, 'A2','COFFEE','2020/01/07', 68);
insert into sales VALUES(1040, 'A2','ENJOY','2020/01/07', 87);
insert into sales VALUES(1041, 'A2','LIFE','2020/01/07', 99);
# 01/08 1호점 판매량
insert into sales VALUES(1042, 'A1','COFFEE','2020/01/08', 210);
insert into sales VALUES(1043, 'A1','ENJOY','2020/01/08', 62);
insert into sales VALUES(1044, 'A1','LIFE','2020/01/08', 100);
# 01/08 2호점 판매량
insert into sales VALUES(1045, 'A2','COFFEE','2020/01/08', 130);
insert into sales VALUES(1046, 'A2','ENJOY','2020/01/08', 87);
insert into sales VALUES(1047, 'A2','LIFE','2020/01/08', 101);
# 01/09 1호점 판매량
insert into sales VALUES(1048, 'A1','COFFEE','2020/01/09', 720);
insert into sales VALUES(1049, 'A1','ENJOY','2020/01/09', 30);
insert into sales VALUES(1050, 'A1','LIFE','2020/01/09', 145);
# 01/09 2호점 판매량
insert into sales VALUES(1051, 'A2','COFFEE','2020/01/09', 111);
insert into sales VALUES(1052, 'A2','ENJOY','2020/01/09', 53);
insert into sales VALUES(1053, 'A2','LIFE','2020/01/09', 298);
# 01/10 1호점 판매량
insert into sales VALUES(1054, 'A1','COFFEE','2020/01/10', 85);
insert into sales VALUES(1055, 'A1','ENJOY','2020/01/10', 164);
insert into sales VALUES(1056, 'A1','LIFE','2020/01/10', 24);
# 01/10 2호점 판매량
insert into sales VALUES(1057, 'A2','COFFEE','2020/01/10', 554);
insert into sales VALUES(1058, 'A2','ENJOY','2020/01/10', 60);
insert into sales VALUES(1059, 'A2','LIFE','2020/01/10', 78);

# 01/11 1호점 판매량
insert into sales VALUES(1060, 'A1','COFFEE', '2020/01/11', 314);
insert into sales VALUES(1061, 'A1','ENJOY', '2020/01/11', 76);
insert into sales VALUES(1062, 'A1','LIFE', '2020/01/11', 455);
# 01/11 2호점 판매량
insert into sales VALUES(1063, 'A2','COFFEE', '2020/01/11', 526);
insert into sales VALUES(1064, 'A2','ENJOY', '2020/01/11', 46);
insert into sales VALUES(1065, 'A2','LIFE','2020/01/11', 232);
# 01/12 1호점 판매량
insert into sales VALUES(1066, 'A1','COFFEE','2020/01/12', 188);
insert into sales VALUES(1067, 'A1','ENJOY','2020/01/12', 65);
insert into sales VALUES(1068, 'A1','LIFE','2020/01/12', 133);
# 01/12 2호점 판매량
insert into sales VALUES(1069, 'A2','COFFEE','2020/01/12', 130);
insert into sales VALUES(1070, 'A2','ENJOY','2020/01/12', 193);
insert into sales VALUES(1071, 'A2','LIFE','2020/01/12', 201);
# 01/13 1호점 판매량
insert into sales VALUES(1072, 'A1','COFFEE','2020/01/13', 415);
insert into sales VALUES(1073, 'A1','ENJOY','2020/01/13', 214);
insert into sales VALUES(1074, 'A1','LIFE','2020/01/13', 331);
# 01/13 2호점 판매량
insert into sales VALUES(1075, 'A2','COFFEE','2020/01/13', 188);
insert into sales VALUES(1076, 'A2','ENJOY','2020/01/13', 522);
insert into sales VALUES(1077, 'A2','LIFE','2020/01/13', 144);
# 01/14 1호점 판매량
insert into sales VALUES(1078, 'A1','COFFEE','2020/01/14', 159);
insert into sales VALUES(1079, 'A1','ENJOY','2020/01/14', 148);
insert into sales VALUES(1080, 'A1','LIFE','2020/01/14', 322);
# 01/14 2호점 판매량
insert into sales VALUES(1081, 'A2','COFFEE','2020/01/14', 75);
insert into sales VALUES(1082, 'A2','ENJOY','2020/01/14', 80);
insert into sales VALUES(1083, 'A2','LIFE','2020/02/14', 94);
# 01/15 1호점 판매량
insert into sales VALUES(1084, 'A1','COFFEE','2020/01/15', 135);
insert into sales VALUES(1085, 'A1','ENJOY','2020/01/15', 135);
insert into sales VALUES(1086, 'A1','LIFE','2020/01/15', 46);
# 01/15 2호점 판매량
insert into sales VALUES(1087, 'A2','COFFEE','2020/01/15', 562);
insert into sales VALUES(1088, 'A2','ENJOY','2020/01/15', 175);
insert into sales VALUES(1089, 'A2','LIFE','2020/01/15', 242);
# 01/16 1호점 판매량
insert into sales VALUES(1090, 'A1','COFFEE','2020/01/16', 119);
insert into sales VALUES(1091, 'A1','ENJOY','2020/01/16', 254);
insert into sales VALUES(1092, 'A1','LIFE','2020/01/16', 379);
# 01/16 2호점 판매량
insert into sales VALUES(1093, 'A2','COFFEE','2020/01/16', 119);
insert into sales VALUES(1094, 'A2','ENJOY','2020/01/16', 112);
insert into sales VALUES(1095, 'A2','LIFE','2020/01/16', 114);
# 01/17 1호점 판매량
insert into sales VALUES(1096, 'A1','COFFEE','2020/01/17', 230);
insert into sales VALUES(1097, 'A1','ENJOY','2020/01/17', 222);
insert into sales VALUES(1098, 'A1','LIFE','2020/01/17', 423);
# 01/17 2호점 판매량
insert into sales VALUES(1099, 'A2','COFFEE','2020/01/17', 103);
insert into sales VALUES(1100, 'A2','ENJOY','2020/01/17', 440);
insert into sales VALUES(1101, 'A2','LIFE','2020/01/17', 200);
# 01/18 1호점 판매량
insert into sales VALUES(1102, 'A1','COFFEE','2020/01/18', 301);
insert into sales VALUES(1103, 'A1','ENJOY','2020/01/18', 140);
insert into sales VALUES(1104, 'A1','LIFE','2020/01/18', 125);
# 01/18 2호점 판매량
insert into sales VALUES(1105, 'A2','COFFEE','2020/01/18', 424);
insert into sales VALUES(1106, 'A2','ENJOY','2020/01/18', 133);
insert into sales VALUES(1107, 'A2','LIFE','2020/01/18', 370);
# 01/19 1호점 판매량
insert into sales VALUES(1108, 'A1','COFFEE','2020/01/19', 259);
insert into sales VALUES(1109, 'A1','ENJOY','2020/01/19', 154);
insert into sales VALUES(1110, 'A1','LIFE','2020/01/19', 279);
# 01/19 2호점 판매량
insert into sales VALUES(1111, 'A2','COFFEE','2020/01/19', 121);
insert into sales VALUES(1112, 'A2','ENJOY','2020/01/19', 171);
insert into sales VALUES(1113, 'A2','LIFE','2020/01/19', 113);
# 01/20 1호점 판매량
insert into sales VALUES(1114, 'A1','COFFEE','2020/01/20', 209);
insert into sales VALUES(1115, 'A1','ENJOY','2020/01/20', 154);
insert into sales VALUES(1116, 'A1','LIFE','2020/01/20', 254);
# 01/20 2호점 판매량
insert into sales VALUES(1117, 'A2','COFFEE','2020/01/20', 201);
insert into sales VALUES(1118, 'A2','ENJOY','2020/01/20', 187);
insert into sales VALUES(1119, 'A2','LIFE','2020/01/20', 208);

# 01/21 1호점 판매량
insert into sales VALUES(1120, 'A1','COFFEE', '2020/01/21', 131);
insert into sales VALUES(1121, 'A1','ENJOY', '2020/01/21', 146);
insert into sales VALUES(1122, 'A1','LIFE', '2020/01/21', 195);
# 01/21 2호점 판매량
insert into sales VALUES(1123, 'A2','COFFEE', '2020/01/21', 164);
insert into sales VALUES(1124, 'A2','ENJOY', '2020/01/21', 130);
insert into sales VALUES(1125, 'A2','LIFE','2020/01/21', 173);
# 01/22 1호점 판매량
insert into sales VALUES(1126, 'A1','COFFEE','2020/01/22', 604);
insert into sales VALUES(1127, 'A1','ENJOY','2020/01/22', 210);
insert into sales VALUES(1128, 'A1','LIFE','2020/01/22', 102);
# 01/22 2호점 판매량
insert into sales VALUES(1129, 'A2','COFFEE','2020/01/22', 152);
insert into sales VALUES(1130, 'A2','ENJOY','2020/01/22', 504);
insert into sales VALUES(1131, 'A2','LIFE','2020/01/22', 223);
# 01/23 1호점 판매량
insert into sales VALUES(1132, 'A1','COFFEE','2020/01/23', 405);
insert into sales VALUES(1133, 'A1','ENJOY','2020/01/23', 241);
insert into sales VALUES(1134, 'A1','LIFE','2020/01/23', 133);
# 01/23 2호점 판매량
insert into sales VALUES(1135, 'A2','COFFEE','2020/01/23', 288);
insert into sales VALUES(1136, 'A2','ENJOY','2020/01/23', 422);
insert into sales VALUES(1137, 'A2','LIFE','2020/01/23', 100);
# 01/24 1호점 판매량
insert into sales VALUES(1138, 'A1','COFFEE','2020/01/24', 109);
insert into sales VALUES(1139, 'A1','ENJOY','2020/01/24', 188);
insert into sales VALUES(1140, 'A1','LIFE','2020/01/24', 432);
# 01/24 2호점 판매량
insert into sales VALUES(1141, 'A2','COFFEE','2020/01/24', 101);
insert into sales VALUES(1142, 'A2','ENJOY','2020/01/24', 432);
insert into sales VALUES(1143, 'A2','LIFE','2020/01/24', 418);
# 01/25 1호점 판매량
insert into sales VALUES(1144, 'A1','COFFEE','2020/01/25', 159);
insert into sales VALUES(1145, 'A1','ENJOY','2020/01/25', 254);
insert into sales VALUES(1146, 'A1','LIFE','2020/01/25', 79);
# 01/25 2호점 판매량
insert into sales VALUES(1147, 'A2','COFFEE','2020/01/25', 171);
insert into sales VALUES(1148, 'A2','ENJOY','2020/01/25', 210);
insert into sales VALUES(1149, 'A2','LIFE','2020/01/25', 89);
# 01/26 1호점 판매량
insert into sales VALUES(1150, 'A1','COFFEE','2020/01/26', 54);
insert into sales VALUES(1151, 'A1','ENJOY','2020/01/26', 39);
insert into sales VALUES(1152, 'A1','LIFE','2020/01/26', 71);
# 01/26 2호점 판매량
insert into sales VALUES(1153, 'A2','COFFEE','2020/01/26', 162);
insert into sales VALUES(1154, 'A2','ENJOY','2020/01/26', 175);
insert into sales VALUES(1155, 'A2','LIFE','2020/01/26', 156);
# 01/27 1호점 판매량
insert into sales VALUES(1156, 'A1','COFFEE','2020/01/27', 248);
insert into sales VALUES(1157, 'A1','ENJOY','2020/01/27', 369);
insert into sales VALUES(1158, 'A1','LIFE','2020/01/27', 400);
# 01/27 2호점 판매량
insert into sales VALUES(1159, 'A2','COFFEE','2020/01/27', 310);
insert into sales VALUES(1160, 'A2','ENJOY','2020/01/27', 120);
insert into sales VALUES(1161, 'A2','LIFE','2020/01/27', 111);
# 01/28 1호점 판매량
insert into sales VALUES(1162, 'A1','COFFEE','2020/01/28', 199);
insert into sales VALUES(1163, 'A1','ENJOY','2020/01/28', 54);
insert into sales VALUES(1164, 'A1','LIFE','2020/01/28', 379);
# 01/28 2호점 판매량
insert into sales VALUES(1165, 'A2','COFFEE','2020/01/28', 191);
insert into sales VALUES(1166, 'A2','ENJOY','2020/01/28', 67);
insert into sales VALUES(1167, 'A2','LIFE','2020/01/28', 158);
# 01/29 1호점 판매량
insert into sales VALUES(1168, 'A1','COFFEE','2020/01/29', 412);
insert into sales VALUES(1169, 'A1','ENJOY','2020/01/29', 120);
insert into sales VALUES(1170, 'A1','LIFE','2020/01/29', 216);
# 01/29 2호점 판매량
insert into sales VALUES(1171, 'A2','COFFEE','2020/01/29', 211);
insert into sales VALUES(1172, 'A2','ENJOY','2020/01/29', 203);
insert into sales VALUES(1173, 'A2','LIFE','2020/01/29', 143);
# 01/30 1호점 판매량
insert into sales VALUES(1174, 'A1','COFFEE','2020/01/30', 40);
insert into sales VALUES(1175, 'A1','ENJOY','2020/01/30', 231);
insert into sales VALUES(1176, 'A1','LIFE','2020/01/30', 279);
# 01/30 2호점 판매량
insert into sales VALUES(1177, 'A2','COFFEE','2020/01/30', 152);
insert into sales VALUES(1178, 'A2','ENJOY','2020/01/30', 38);
insert into sales VALUES(1179, 'A2','LIFE','2020/01/30', 89);
# 01/31 1호점 판매량
insert into sales VALUES(1180, 'A1','COFFEE','2020/01/31', 562);
insert into sales VALUES(1181, 'A1','ENJOY','2020/01/31', 176);
insert into sales VALUES(1182, 'A1','LIFE','2020/01/31', 341);
# 01/31 2호점 판매량
insert into sales VALUES(1183, 'A2','COFFEE','2020/01/31', 129);
insert into sales VALUES(1184, 'A2','ENJOY','2020/01/31', 88);
insert into sales VALUES(1185, 'A2','LIFE','2020/01/31', 598);


DELETE FROM SALES;

SELECT * FROM STAMP;

drop table orders;



select * from orders;
SELECT * FROM STAMP;
select * from menu;
SELECT C_NAME, NUM
FROM STAMP
WHERE C_NAME = '김정준';
DROP TABLE ORDERS;
# 20/02/01 주문


SELECT * FROM EMPLOYEE;
  
drop table sales;  
drop table employee;
drop table orders;
drop table customer;
drop table stamp;
drop table menu;
drop table store;

desc orders;


delete from sales;
delete from employee;
delete from orders;
delete from customer;
delete from stamp;
delete from menu;
delete from store;

select * from sales;
select * from employee;
select * from orders;
select * from customer;
select * from stamp;
select * from menu;
SELECT * FROM store;

# 질의Q1. 충무로점 '알바생' 이름과 닉네임을 검색하시오.
select e.name, e.id
from employee e
where position = '알바님' and code = ( select code from store where name= '충무로점') ;

# 질의Q2. 한국외대점 '사장님' 이름과 닉네임을 검색하시오.
select e.name, e.id
from employee e
where position = '사장님' and code = ( select code from store where name= '한국외대점') ;

# 질의Q3. 지점 전체의 사장님 id와 pwd, 지점코드를 검색하시오. 
select e.id, e.pwd, s.code
from employee e, store s
where position = '사장님';

# 질의Q4. 메뉴 타입이 "COFFEE" 인 메뉴 번호와 메뉴 이름들을 검색하시오.
select num, name
from menu
where type = 'coffee';

select * from menu;

# 질의Q5. 모든 메뉴의 지점코드, 지점이름을 검색하시오.
select *
from menu m, store s
where m.code = s.code;

select *
from menu m 
join store s
on m.code = s.code;

# 질의Q6. 고객테이블과 스템프 테이블을 이용하여 고객 이름, 스탬프 갯수, 스탬프번호를 검색하시오.
select s.c_name, s.count, c.s_num 
from stamp s
join customer c
on s.num = c.s_num;

# 질의Q7. 모든 고객번호(닉네임)의 주문날짜, 메뉴이름, 가격이 적힌 주문 상황을 검색하시오.
select c.num, o.date, m.name, m.price
from customer c
join orders o 
on c.num = o.c_num
join menu m
on o.m_num = m.num;

# 질의Q8. '해브어굿타임님'의 주문날짜, 메뉴이름, 가격이 적힌 주문 상황을 검색하시오.
select c.num, o.date, m.name, m.price
from customer c
join orders o 
on c.num = o.c_num
join menu m
on o.m_num = m.num
where c.num = '해브어굿타임';

# 질의Q9. '해브어굿타임님'이 '카라멜마끼야또'를 시킨 날짜를 검색하시오.
select c.num, o.date, m.name
from customer c
join orders o 
on c.num = o.c_num
join menu m
on o.m_num = m.num
where c.num = '해브어굿타임' and m.name = '카라멜마끼야또';

# 질의Q10. '펭수님'이 메뉴를 언제 주문했는지 날짜를 검색하시오. (단, 1월1일부터 1월14일까지)
select c_num , date
from orders
where c_num = '펭수' and date(date) between '2020-01-01' and '2020-01-14';

# 질의Q11. '펭수님'이 1월에 주문을 몇 번 했을까요?
select c_num , count(*) as '1월 주문횟수'
from orders
where c_num = '펭수' and date(date) between '2020-01-01' and '2020-01-31';

# 질의Q12. 에스프레소를 시킨 날짜, 고객의 이름을 '이름'별로 나열하시오
select date, c_num
from orders o, menu m
where o.m_num = m.num and m.name = '에스프레소'
order by c_num asc;

# 질의Q13. 에스프레소를 시킨 날짜, 고객의 이름을 '날짜'별로 나열하시오
select date, c_num
from orders o
join menu m
on o.m_num = m.num 
where m.name = '에스프레소'
order by date asc;

# 질의Q14.  menu에서 메뉴타입 별로 메뉴가 총 몇 개인지 검색하시오.
# group by를 써서 메뉴 타입별로 그룹 지어 각각의 갯수들을 검색할 것

select type, count(*) as '메뉴 갯수'
from menu
group by type;

# 질의Q15. 메뉴가 30개 넘는 메뉴 타입은 무엇일까요?
select type, count(*) as '메뉴 갯수'
from menu
group by type
having count(*) > 30;

select * from store;
select * from menu;

# 질의Q16. 지점 별로 카페직원들중에서 나이가 제일 많은 사람은 누구인가요?
select * from employee;

select a.name '지점명', b.name '직원이름', b.birth '연장자'
from store a, employee b
where a.code = b.code and b.birth in (select min(birth) from store s, employee e where s.code = e.code group by s.name); 


# 질의Q17.  지점별 총 판매량(매출) 현황을 검색하시오.
select sa.code, st.name, sum(sa.amount) as '총 판매량'
from store st
inner join sales sa on st.code = sa.code
group by sa.code;

# 질의Q18.  지점별 평균 판매량(매출) 현황을 검색하시오.
select sa.code, st.name, avg(sa.amount) as '평균 판매량'
from store st
inner join sales sa on st.code = sa.code 
group by sa.code;


# 질의Q19. 2020년 1월 내내 메뉴 타입 'coffee'보다 최대 판매량을 달성한 메뉴 타입, 지점코드, 날짜를 검색하시오.
select type, code, amount 
from sales 
where amount > (select max(amount) from sales where type= 'coffee' and date between '2020-01-01' and '2020-01-31');


# 질의Q20.
	# 주문 테이블에서 날짜 순서대로 고객이 주문한 메뉴 이름을 검색하시오. 
	# ( 주문테이블에서 메뉴번호로 입력했기 때문에 어떤 메뉴인지 알기 위해 작성 )
select c_num, name, date
from orders o
inner join menu m on o.m_num = m.num
order by date;


# 질의Q21. 특정 음료의 ('아메리카노') 필요 재고를 검색하시오.
select name, count(m_num)-1 as '재고'
from orders o
inner join menu m on o.m_num = m.num
where name= '아메리카노';


# 질의Q22. 스탬프가 가장 많은 사람들의 스템프 번호, 이름, 스탬프 갯수를 검색하시오.
select num, c_name, count
from stamp
where count = (select max(count) from stamp);

select * from customer;
select * from orders;

select * from menu;
select * from orders;


# 질의Q23. 주문이 들어오지 않은 메뉴를 검색하시오.
select m.name
from menu m
left outer join orders o
on m.num = o.m_num 
where o.m_num is null;



# 질의Q24. 주문이 들어오지 않은 메뉴 중, 'a1' 지점의 '민트초코' 메뉴의 주문 정보들을 검색하시오.
select o.num, o.date, o.c_num, o.m_num
from menu m
left outer join orders o
on m.num = o.m_num 
where name= '민트초코' 
and code = 'a1';


select *
from menu m
right outer join orders o
on m.num = o.m_num;



# 질의Q25. full outer join 을 이용해서 주문이 들어온 음료와 주문이 들어오지 않은 음료 둘 다 검색하시오. 
select *
from menu m
left outer join orders o
on m.num = o.m_num
union 
select *
from menu m
right outer join orders o
on m.num = o.m_num;


# 질의Q26. '김정준' 이외의 고객의 주문들도 left outer join을 이용해서 null값으로 출력하시오.
select *
from customer c
left join orders o
on c.num = o.c_num and name = '김정준';


select * from customer;
select * from stamp;
select * from cus_stamp;

# 질의Q27. 고객 테이블에서 스탬프 수가 8개인 고객들의 성명을 고객스탬프 라는 가상 뷰를 만들어 검색하시오.

drop view cus_stamp;

create view cus_stamp(num,c_name,count)
as select num,c_name, count
from stamp s
where s.count = 0 or s.count = 8
with check option;

# 질의Q28. 스탬프 수가 8개인 고객만 insert, update 가능 => 스탬프 수를 0으로 초기화 하시오.

update cus_stamp
set count = if(count =0, 8, 0)
where count = 0 or count = 8; 

update cus_stamp
set count = if(count =8, 0, 8)
where count = 0 or count = 8; 

select * from cus_stamp;
drop view cus_stamp;

update stamp
set count = 8
where num = 'S001' or num = 'S012' or num = 'S017' ;

update stamp
set count = 0
where num = 'S006' or num = 'S012' or num = 'S018' ;

select * from orders;
select * from customer;
select * from stamp;

# 질의Q29. 고객 테이블과 스탬프 테이블을 이용하여 단골손님 랭킹 1위 이름들을 출력하시오.

select c.name as "1위", count as "스탬프 최대 갯수"
from customer c
inner join stamp s
on c.s_num = s.num
where count = (select max(count) from stamp);


drop table goods;


# 사은품 테이블
create table goods(
num int, 
name varchar(20),
low_point int,
up_point int,
primary key(num)
);

select * from goods;
insert into goods values(1, '아메리카노', 1,2);
insert into goods values(2, '쿠키', 3,4);
insert into goods values(3, '머핀', 4,5);
insert into goods values(4, '머그잔', 6,8);

select * from stamp;

# 질의Q30.각 고객이 가지고있는 스탬프 별로 받을 수 있는 사은품을 검색하시오.
SELECT s.c_NAME "고객명", s.count "스탬프갯수", g.NAME "상품명"
FROM stamp s, goods g
WHERE s.count BETWEEN g.low_point AND g.up_point;

# 질의Q31.각 고객이 가지고있는 스탬프 별로 받을 수 있는 사은품의 갯수를 검색하시오.
SELECT s.c_NAME "고객명", s.count "스탬프갯수", count(*) as '재고'
FROM stamp s, goods g
WHERE s.count BETWEEN g.low_point AND g.up_point
group by c_name;

# 질의Q32. 메뉴 타입이 'coffee'의 최대 판매량은 몇인지 날짜와 함께 검색하시오.

select type, date, amount 
from sales
where amount = (select max(amount) from sales where type= 'coffee');


# 질의Q33. 2020년 1월 내내 메뉴 타입 'coffee'보다 최대 판매량을 달성한 메뉴 타입, 지점코드, 날짜를 검색하시오.
select type, code, amount 
from sales 
where amount > (select max(amount) from sales where type= 'coffee' and date between '2020-01-01' and '2020-01-31');

select * from employee;

# 질의Q34. 셀프조인을 이용하여 왼쪽의 birth가 오른쪽의 birth 이상인 레코드 수를 직원 id의 그룹별로 개수를 조사하시오.

select * from employee as e1 join employee as e2;
select e1.name as '직원이름', e2.position as '포지션'
from employee e1, employee e2;

select e1.name, e1.id, count(*) as '개수'
from employee e1 
join employee e2 
where e1.birth <= e2.birth
group by e1.id; 


# 질의Q35. 고객번호가 '개죽이'인 회원이 먹은 '2500원 이상' 메뉴들을 검색하시오.
select o.c_num, m.name
from menu m 
join orders o
on m.num = o.m_num 
join customer c
on o.c_num = c.num and price >=2500
join stamp s
on c.s_num = s.num and c_num = '개죽이';

# 질의Q36. 직원 테이블에서 생년월일을 나이로 바꿔보시오.
select name, (substr(sysdate(),1,4)-substr(birth,1,4))+1
from employee;

 # 질의Q37. 매출 테이블에서 판매량 = 394의 랭킹 순위를 구하시오.  (???)

select code, date, type, (select count(*) 
from sales 
where amount <= s.amount ) as '랭킹', s.amount
from sales s
where s.amount = 394;


# mysql 사용자 생성 및 권한 부여
create user 'hyosun'@'localhost' identified by '0319';

# 모든 데이터 베이스에 권한 부여
grant all privileges on *.* to 'hyosun'@'localhost';

# 특정 데이터 베이스에 권한 부여
grant all privileges on cafr_system.*to 'hyosun'@'localhost';

# 사용자 권한 취소
drop user 'hyosun'@'localhost';

# 권한 허가
grant select, insert
on employee
to 'hyosun'@'localhost';

# 권한 취소
revoke select, insert
on employee
from 'hyosun'@'localhost';


