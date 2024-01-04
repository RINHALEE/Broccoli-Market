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

insert into product values ('1', 'AirPods Pro', 'IT/����', 50000, '�� 1�� ����� ������ ���� �˴ϴ�. �ణ�� �⽺ �ֽ��ϴ�. ���̽��� �Բ� �����帳�ϴ�.', 'airpods.jpg', 'admin');
insert into product values ('2', 'Microsoft ���콺', 'IT/����', 12000, '��������� �����ϴ� ���콺�Դϴ�. ������ �־ ����ϴ� ��ǰ�̰�, ���� �����մϴ�. ���� ���� ������� ����ϱ� ���� �� �����ϴ�.', 'mouse.jpg', 'admin');
insert into product values ('3', '������Ʈ ���� �Ȱ�', '�м�', 10000, '�Ȱ������� �� ������Ʈ ���� �Ȱ��Դϴ�. ���� �Ѵ����� �ư� ���Ƚ�� �����ϴ�. ������ �����ϴ�.', 'glasses.jpg', 'admin');
insert into product values ('4', '���ѱ��', '��ǰ', 500, '������� �˳��� ���ѱ�� �˴ϴ�.', 'rice.jpg', 'admin');
insert into product values ('5', '�ƹ����� �ڵ�ũ��', '��Ÿ',7000, 'TAMBURINS, THE SHELL PERFUME HAND HER', 'cream.jpg', 'admin');
insert into product values ('6', '������ ����', '��Ÿ', 100, '���� �� ������ ������� ������ �˴ϴ�. �ʹ� �Ϳ��� ������� ����! ������� �Ϳ����� ���׹�� ��Ʈ���� �;��.', 'samsoon.jpg', 'harin');

select * from product;

