CREATE TABLE shareplan(
sha_num	NUMBER(5) 	NOT NULL,
mem_id		CHAR(18)	NOT NULL,
mem_no		CHAR(6)	NOT NULL,
Plan_no		CHAR(6)	NOT NULL,
sha_date	DATE	NOT NULL,
sha_sub		VARCHAR2(50)	NOT NULL,
sha_content	VARCHAR2(2000)		NOT NULL,
sha_viewcount	NUMBER(5)	DEFAULT 0,
sha_recommend	NUMBER(5)	DEFAULT 0,
PRIMARY KEY(sha_num)
);

INSERT INTO shareplan(sha_num, mem_id, mem_no, Plan_no, sha_date, sha_sub, sha_content, sha_viewcount,
sha_recommend) VALUES((SELECT NVL(MAX(sha_num), 0)+1 AS sha_num FROM shareplan), 'soldesk@naver.com',
'M00001', 'S00001', SYSDATE, '겨울여행 가자', '즐거운 겨울여행', 10, 5
);

INSERT INTO shareplan(sha_num, mem_id, mem_no, Plan_no, sha_date, sha_sub, sha_content, sha_viewcount,
sha_recommend) VALUES((SELECT NVL(MAX(sha_num), 0)+1 AS sha_num FROM shareplan), 'example@google.com',
'M00002', 'S00002', SYSDATE, '제주맛집투어', '새로운 맛집 투어', 0, 0
);

ALTER TABLE shareplan MODIFY(Plan_no CHAR(6));

DROP TABLE shareplan;

SELECT * FROM shareplan;

	SELECT sha_num, mem_id, mem_no, Plan_no, sha_date, sha_sub, sha_content, sha_viewcount, sha_recommend
	FROM shareplan
	ORDER BY sha_num DESC
	
--시퀀스생성--
CREATE SEQUENCE SEQ_shareplan_sha_num
START WITH 1
INCREMENT BY 1
NOMAXVALUE
NOCACHE;
	
--페이징 쿼리--
SELECT
    AAA.*
FROM(
    SELECT
        COUNT(*) OVER() AS TOTAL_COUNT,
        AA.*
    FROM(
        SELECT
            ROW_NUMBER() OVER (ORDER BY sha_num DESC) RNUM,
            mem_id,
            sha_num,
            sha_sub,
            sha_viewcount
        FROM
            shareplan    
    ) AA
) AAA
WHERE
    AAA.RNUM BETWEEN 0 AND 9

