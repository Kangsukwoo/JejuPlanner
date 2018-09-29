--plan ���̺� ����
CREATE TABLE plan(
plan_no		VARCHAR(12) NOT NULL	PRIMARY KEY,										-- S00001
plan_sub	VARCHAR(50)	NOT NULL,																	-- ��������
plan_start	VARCHAR(50)	NOT NULL,																	--	2018-03-15
plan_end	VARCHAR(50)	NOT NULL,																	-- 2018-03-18
plan_kind	VARCHAR(20)	NOT NULL,																	-- ����Ÿ��
plan_des	VARCHAR(2000)																					-- ����
)DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

--INSERT TEST��
INSERT INTO plan VALUES ('S00001', '��������', '2018-03-15', '2018-03-18', '����Ÿ��', '����'  );


SELECT * FROM plan WHERE plan_no='S00001'

SELECT plan_no, plan_sub, plan_start, plan_end, plan_kind FROM plan UNION SELECT * FROM plan_time;


--plan, schdule, plan_time, product JOIN
SELECT *
FROM 
	plan 
JOIN 
	schdule
ON  plan.plan_no = schdule.plan_no
JOIN 
	plan_time
ON  schdule.sc_code = plan_time.sc_code
JOIN
	product
ON plan_time.contentid = product.contentid
WHERE plan.plan_no='S00001';

--share,plan
SELECT *
FROM 
	shareplan
JOIN 
	plan
ON  shareplan.Plan_no = plan.plan_no
WHERE shareplan.sha_num=1;



















SELECT sha_num, sha_date, sha_viewcount, sha_recommend, plan_sub, plan_start, plan_end, plan_kind, plan_des
FROM 
	shareplan
JOIN 
	plan
ON  shareplan.Plan_no = plan.plan_no
WHERE shareplan.sha_num=1;








