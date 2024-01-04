create table product (
	p_id INTEGER not null,
	p_name varchar(20) not null,
	p_category varchar(10) not null,
	p_price INTEGER,
	p_description TEXT,
	p_fileName VARCHAR(20),
	m_id varchar(10),
	primary key (p_id)
)default CHARSET=utf8;

insert into product values ('1', 'AirPods Pro', 'IT/가전', 50000, '약 1년 사용한 에어팟 프로 팝니다. 약간의 기스 있습니다. 케이스와 함께 보내드립니다.', 'airpods.jpg', 'admin');
insert into product values ('2', 'Microsoft 마우스', 'IT/가전', 12000, '블루투스로 연결하는 마우스입니다. 건전지 넣어서 사용하는 제품이고, 상태 깨끗합니다. 손이 작은 사람들이 사용하기 좋을 것 같습니다.', 'mouse.jpg', 'admin');
insert into product values ('3', '블루라이트 차단 안경', '패션', 10000, '안경점에서 산 블루라이트 차단 안경입니다. 산지 한달정도 됐고 사용횟수 적습니다. 도수는 없습니다.', 'glasses.jpg', 'admin');
insert into product values ('4', '오뚜기밥', '식품', 500, '유통기한 넉넉한 오뚜기밥 팝니다.', 'rice.jpg', 'admin');
insert into product values ('5', '탬버린즈 핸드크림', '기타',7000, 'TAMBURINS, THE SHELL PERFUME HAND HER', 'cream.jpg', 'admin');
insert into product values ('6', '강아지 사진', '기타', 100, '저희 집 강아지 삼순이의 사진을 팝니다. 너무 귀여운 삼순이의 사진! 삼순이의 귀여움을 동네방네 퍼트리고 싶어요.', 'samsoon.jpg', 'harin');

select * from product;

