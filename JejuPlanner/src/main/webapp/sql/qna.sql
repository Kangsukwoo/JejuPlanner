create table nse_tb(
  nseno          INT     AUTO_INCREMENT   NOT NULL,
  id				varchar(100) not null,
  subject      varchar(200)   NOT NULL,
  ir1      varchar(1000) NOT NULL,
  passwd      varchar(200)   NOT NULL,
  regdate     date           NOT NULL,
  val			varchar(50) NOT NULL , 
  PRIMARY KEY(nseno)
)DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

DROP TABLE nse_tb;

select * from nse_tb;

INSERT INTO nse_tb(nseno, id, subject, ir1, passwd, regdate, val)
VALUES (nseno, '#{id}', '#{subject}', '#{ir1}', '#{passwd}', sysdate, '#{val}')


INSERT INTO nse_tb(nseno, id, subject, ir1, passwd, regdate, val)
		VALUES (nseno, 'ex', '제목', '내용', '1234', NOW(), '1d');









