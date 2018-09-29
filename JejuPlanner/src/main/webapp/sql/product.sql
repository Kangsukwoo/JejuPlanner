--product ���̺� ����
CREATE TABLE product(
contentid	INT NOT NULL PRIMARY KEY,		-- 2507022
title		VARCHAR(50)	NOT NULL,						-- �ֿ��ؾȵ���
image	VARCHAR(200)	NOT NULL,						-- http://marumaru.in/quickimage/fc6771dfa4b04649baec6f119cd119a4.jpg
cat1		VARCHAR(20)	NOT NULL,						--	A02
cat2		VARCHAR(20)	NOT NULL,						-- A0207
cat3		VARCHAR(20)	NOT NULL,						-- A02070200
addr1	VARCHAR(100)	NOT NULL,						-- ��⵵ ���� ������ �ڶ󼶷�
addr2	VARCHAR(100)	NOT NULL,						-- ���ֽ�
mapx	DOUBLE		NULL,										-- 35.3241654
mapy	DOUBLE		NULL,										--	321.2465
sigungucode	INT	NULL,										-- 45
contenttypeid	INT	NOT NULL,							-- 14
modifiedtime	DATE				 							-- 2018-03-15
)DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;


--INSERT TEST��
INSERT INTO product VALUES ( 2507022, '�ֿ��ؾȵ���', 'http://marumaru.in/quickimage/fc6771dfa4b04649baec6f119cd119a4.jpg',
														'A02', 'A0207', 'A02070200', '��⵵ ���� ������ �ڶ󼶷�', '���ֽ�', '35.3241654', '321.2465',
														45, 14, NOW()
);

DROP table product;

SELECT * FROM product;
