create table mail (
	send_id varchar(10) not null,
	get_id varchar(10) not null,
	mail_description TEXT,
	send_time varchar(50)
)default CHARSET=utf8;

insert into mail values('admin', 'harin', '강아지 사진 삽니다!', '2022-06-21 04:59:41.464');
insert into mail values('harin', 'admin', '헤어 집게 팔렸나요?', '2022-06-25 07:59:40.464');
insert into mail values('admin', 'harin', '안녕하세요?? 혹시 다른 강아지 사진은 없나요? 강아지가 너무 귀여워서 다른 사진도 사고 싶습니다. 삼순이가 너무 귀엽네요 ㅠㅠ', '2022-06-28 04:59:41.464');

select * from mail;
