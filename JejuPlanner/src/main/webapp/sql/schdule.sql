--schdule 테이블 생성
CREATE TABLE schdule(
sc_no			INT NOT NULL	AUTO_INCREMENT PRIMARY KEY,			-- 1
plan_no		VARCHAR(12)	NOT NULL,														-- S00001
sc_code		VARCHAR(18)	NOT NULL														-- S00001-01
)DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

SELECT * FROM schdule;

--INSERT TEST용
INSERT INTO schdule VALUES (sc_no, 'S00001', 'S00001-01'  );