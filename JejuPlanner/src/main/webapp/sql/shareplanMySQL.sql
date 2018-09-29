CREATE TABLE shareplan(
sha_num			INT 	NOT NULL AUTO_INCREMENT PRIMARY KEY,
--mem_id		VARCHAR(20)	NOT NULL,
--mem_no		VARCHAR(20)	NOT NULL,
Plan_no		VARCHAR(20)	NOT NULL,
sha_date	DATETIME	NOT NULL,
--sha_sub		VARCHAR(50)	NOT NULL,
--sha_content	VARCHAR(2000)		NOT NULL,
sha_viewcount	INT	DEFAULT 0,
sha_recommend	INT	DEFAULT 0
)DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

ALTER TABLE shareplan DEFAULT CHARSET=utf8;

show create table shareplan;

SELECT* FROM shareplan;

INSERT INTO shareplan VALUES(sha_num, 'S00001', NOW(), 
 0, 0);

drop table shareplan;


select * from shareplan where sha_num = 1;