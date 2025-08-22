create table post(
	title varchar2(100),
	content varchar2(500),
	written_date date,
	userId varchar2(20),
	post_type char(1), --notice, chat, question, answer
	identyfier_code number(5) primary key
);


insert into post values('커뮤니티 오픈 안내', '미드나잇 게임즈에서 공식 커뮤니티를 개설했습니다. 유저 분들의 많은 참여 바랍니다.', '2025-01-21', 'admin001', 'n', 1);
insert into post values('백신 변경 안내', '2월 새로 도입된 백신 다운로드 안내', '2025-02-01', 'admin001', 'n', 2);
insert into post values('우와아', '쩐다', '2025-02-05', 'namu142', 'c', 3);
insert into post values('너무 재밌어여', 'ㅎㅎ', '2025-02-11', 'namu142', 'c', 4);
insert into post values('1스테이지 너무 어렵다', '15렙인데도 지네요 ㅠㅠ', '2025-02-13', 'mao888', 'c', 5);
insert into post values('1스테이지 30렙 이어야 깨요', '제가 그렇게 깸 ㅎㅎ', '2025-02-15', 'namu142', 'c', 6);
insert into post values('감사합니다!', 'ㅎㅎㅎ', '2025-02-16', 'mao888', 'c', 7);
insert into post values('3스테이지 어떻게 깨여?', '70렙인데 어떻게 깨야해여??', '2025-02-21', 'namu142', 'q', 8);
insert into post values('3스테이지 어떻게 깨여?에 대한 답변', '70렙 달성 축하드리나, 3스테이지는 기획 상 70렙으로는 부족합니다.', '2025-02-22', 'admin001', 'a', 9);
insert into post values('BANNED', 'X', '2025-02-23', 'miast43', 'c', 10);
insert into post values('BANNED', 'X', '2025-02-23', 'miast43', 'c', 11);
insert into post values('BANNED', 'X', '2025-02-24', 'miast43', 'c', 12);
insert into post values('BANNED', 'X', '2025-02-25', 'miast43', 'c', 13);
insert into post values('커뮤니티에서 차단 어떻게 해요?', '욕하는 분탕 싫은데 ㅠㅠ', '2025-02-26', 'mao888', 'q', 14);
insert into post values('커뮤니티에서 차단 어떻게 해요?에 대한 답변', '차단 시스템은 아직 존재하지 않으나, 모니터링 후 밴 예정입니다.', '2025-02-26', 'admin001', 'a', 15);
insert into post values('레벨 제한 질문', '200레벨 제한 언제 풀리나요?', '2025-03-01', 'papo497', 'q', 16);
insert into post values('레벨 제한 질문에 대한 답변', '금월 7일 업데이트때 풀릴 에정입니다.', '2025-03-02', 'admin001', 'a', 17);
insert into post values('시스템 확장 안내', '금월 7일 이후 시스템 확장 예정입니다.', '2025-03-6', 'admin001', 'n', 18);
insert into post values('와!!', '스테이지 더 나오겠다', '2025-03-6', 'namu142', 'c', 19);
insert into post values('확장이다!', '스토리모드 다 깨서 할거 없었는데 다행이네요', '2025-03-6', 'mao888', 'c', 20);
insert into post values('뉴비 등장이오', '도와줘 ㅎㅎ', '2025-03-12', 'akos12', 'c', 21);
insert into post values('뭐 안되는거 있어여?', '도와드림', '2025-03-12', 'namu142', 'c', 22);
insert into post values('1스테이지 깨는 방법 알려줘', '몇렙때 가능함?', '2025-03-13', 'akos12', 'c', 23);
insert into post values('그거 30렙 되야해여', 'ㅎ', '2025-03-13', 'namu142', 'c', 24);
insert into post values('전 그거 40렙 때 깼어요', '제가 좀 못해서', '2025-03-14', 'mao888', 'c', 25);
insert into post values('관리자 변경', '前관리자 (김○○)이 퇴사한 관계로 現관리자 (이○○)으로 변경된 점 안내드립니다.', '2025-03-15', 'admin002', 'n', 26);
insert into post values('안돼애', 'ㅜㅜㅜ', '2025-03-15', 'namu142', 'c', 27);
insert into post values('300렙 최초 도달', 'ScreenShot 2025-03-16 103325.png', '2025-03-16', 'papo497', 'c', 28);
insert into post values('보법이 다르구나', 'ㄷㄷㄷ', '2025-03-17', 'akos12', 'c', 29);
insert into post values('서버 증축 예정', '2026년 까지 베린 서버와 클로나 서버가 증축될 예정입니다.', '2025-03-17', 'admin002', 'n', 30);
insert into post values('인사', '새로 입사한 관리자입니다. ㅇㅅㅇ', '2025-03-17', 'admin003', 'n', 31);

select * from post;

create table user_info(
	userId varchar2(20) primary key,
	password varchar2(30),
	userName varchar2(20),
	userPhone char(13), 
	status char(1) --admin, user, banned
);

insert into user_info values('admin001', 'rhksflwk001', '김정오', '010-7854-3524', 'a');
insert into user_info values('namu142', 'namu142', '나무김', '010-3333-9854', 'u');
insert into user_info values('mao888', 'akdhWjend888', '마오창', '010-1244-4651', 'u');
insert into user_info values('miast43', 'naonao0922', '하건우', '010-9851-9984', 'b');
insert into user_info values('papo497', 'lasetk422', '윤무열', '010-6978-7586', 'u');
insert into user_info values('akos12', 'ni833asw', '길다일', '010-1588-2258', 'u');
insert into user_info values('admin002', 'rhksflwk002', '이성한', '010-3354-1287', 'a');
insert into user_info values('admin003', 'rhksflwk003', '박남연', '010-4675-8641', 'a');

select * from user_info;

--drop table post;
--drop table user_info;