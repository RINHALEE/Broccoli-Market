create table mail (
	send_id varchar(10) not null,
	get_id varchar(10) not null,
	mail_description TEXT,
	send_time varchar(50)
)default CHARSET=utf8;

insert into mail values('admin', 'harin', '������ ���� ��ϴ�!', '2022-06-21 04:59:41.464');
insert into mail values('harin', 'admin', '��� ���� �ȷȳ���?', '2022-06-25 07:59:40.464');
insert into mail values('admin', 'harin', '�ȳ��ϼ���?? Ȥ�� �ٸ� ������ ������ ������? �������� �ʹ� �Ϳ����� �ٸ� ������ ��� �ͽ��ϴ�. ����̰� �ʹ� �Ϳ��׿� �Ф�', '2022-06-28 04:59:41.464');

select * from mail;
