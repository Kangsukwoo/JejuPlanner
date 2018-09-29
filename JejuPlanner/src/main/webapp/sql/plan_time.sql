--plan_time 테이블 생성
CREATE TABLE plan_time(
pt_no			INT NOT NULL	AUTO_INCREMENT PRIMARY KEY,			-- 1
sc_code		VARCHAR(18)	NOT NULL,														-- S00001-01
pt_start		VARCHAR(18)	NOT NULL,														-- 06:00
pt_end		VARCHAR(18)	NOT NULL,														-- 06:00
contentid			VARCHAR(18)	NOT NULL												--	2507022
)DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

SELECT * FROM plan_time;

DROP TABLE plan_time;

--INSERT TEST용
INSERT INTO plan_time VALUES (pt_no, 'S00001-01', '06:00', '07:00', '2507022'  );