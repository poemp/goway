
--- 脑卒中随访
DROP TABLE IF EXISTS "t_cerebral_stroke_followup";
CREATE TABLE "t_cerebral_stroke_followup" (
    "id" varchar(50) NOT NULL,
    "resident_id" varchar(50 ) not null,
    "followup_time" timestamp,
    "next_followup_time" timestamp,
    "visiting_staff_id" varchar(50),
    "mrs_grade" numeric ,
    "patient_type" int4[],
    "blood_glucose" int4,
    "blood_glucose_content" varchar(50),
    "diabetes" int4,
    "diabetes_content" varchar(50),
    "hyperlipidemia" int4,
    "hyperlipidemia_content" varchar(50),
    "smoke" int4,
    "smoke_content" varchar(50),
    "heart_disease" int4,
    "heart_disease_content" varchar(50),
    "intemperance" int4,
    "intemperance_content" varchar(50),
    "carotid_artery" int4,
    "carotid_artery_content" varchar(50),
    "cerebral_stroke_followup" int4,
    "cerebral_stroke_content" varchar(50),
    "tia" int4,
    "tia_content" varchar(50),
    "other" int4,
    "other_content" varchar(50),
    "risk_assessment"  varchar(50),
    "diagnose_classification" int4,
    "diagnose_part" int4,
    "occurrence_time" timestamp,
    "hypotensor" int4,
    "hypotensor_content" varchar(50),
    "antidiabetic" int4,
    "antidiabetic_content" varchar(50),
    "lipid_lowering_drug" int4,
    "lipid_lowering_drug_content" varchar(50),
    "antiplatelet" int4,
    "antiplatelet_content" varchar(50),
    "anticoagulant_drug" int4,
    "anticoagulant_drug_content" varchar(50),
    "complication" int4,
    "complication_content" varchar(50),
    "new_symptom" int4,
    "IRS" varchar(50),
    "recovery_add" int4,
    "limbs_recover" int4,
    "followup_result" int4,
    "transfer_hospital" int4,
    "state" int4 DEFAULT 0,
    "create_user" bigint,
    "create_time" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
    "update_user" bigint,
    "update_time" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
    "flag" int2 DEFAULT 1,
	 CONSTRAINT "t_cerebral_stroke_pkey" PRIMARY KEY ("id")
)WITH (OIDS=FALSE);
COMMENT ON TABLE "t_cerebral_stroke_followup" IS '脑卒中随访';

COMMENT ON COLUMN "t_cerebral_stroke_followup"."resident_id" IS '居民id';
COMMENT ON COLUMN "t_cerebral_stroke_followup"."followup_time" IS '随访时间';
COMMENT ON COLUMN "t_cerebral_stroke_followup"."next_followup_time" IS '下次随访时间';
COMMENT ON COLUMN "t_cerebral_stroke_followup"."visiting_staff_id" IS '主治医生';
COMMENT ON COLUMN "t_cerebral_stroke_followup"."mrs_grade" IS 'mRS 评分';
COMMENT ON COLUMN "t_cerebral_stroke_followup"."patient_type" IS '患者分类';--- 患者分类
COMMENT ON COLUMN "t_cerebral_stroke_followup"."medical_live_status" IS '患者分类';--- 患者分类
COMMENT ON COLUMN "t_cerebral_stroke_followup"."blood_glucose" IS '高血压';--- 病史生活习惯控制情况
COMMENT ON COLUMN "t_cerebral_stroke_followup"."blood_glucose_content" IS '高血压控制情况';
COMMENT ON COLUMN "t_cerebral_stroke_followup"."diabetes" IS '糖尿病';--- 病史生活习惯控制情况
COMMENT ON COLUMN "t_cerebral_stroke_followup"."diabetes_content" IS '糖尿病控制情况';
COMMENT ON COLUMN "t_cerebral_stroke_followup"."hyperlipidemia" IS '高血脂';--- 病史生活习惯控制情况
COMMENT ON COLUMN "t_cerebral_stroke_followup"."hyperlipidemia_content" IS '高血脂控制情况';
COMMENT ON COLUMN "t_cerebral_stroke_followup"."smoke" IS '吸烟';--- 病史生活习惯控制情况
COMMENT ON COLUMN "t_cerebral_stroke_followup"."smoke_content" IS '吸烟控制情况';
COMMENT ON COLUMN "t_cerebral_stroke_followup"."heart_disease" IS '心脏病';--- 病史生活习惯控制情况
COMMENT ON COLUMN "t_cerebral_stroke_followup"."heart_disease_content" IS '心脏病控制情况';
COMMENT ON COLUMN "t_cerebral_stroke_followup"."intemperance" IS '酗酒';--- 病史生活习惯控制情况
COMMENT ON COLUMN "t_cerebral_stroke_followup"."intemperance_content" IS '酗酒控制情况';
COMMENT ON COLUMN "t_cerebral_stroke_followup"."carotid_artery" IS '颈动脉狭窄';--- 病史生活习惯控制情况
COMMENT ON COLUMN "t_cerebral_stroke_followup"."carotid_artery_content" IS '颈动脉狭窄控制情况';
COMMENT ON COLUMN "t_cerebral_stroke_followup"."t_cerebral_stroke_followup" IS '脑卒中';--- 病史生活习惯控制情况
COMMENT ON COLUMN "t_cerebral_stroke_followup"."cerebral_stroke_content" IS '脑卒中控制情况';
COMMENT ON COLUMN "t_cerebral_stroke_followup"."tia" IS 'tia';--- 病史生活习惯控制情况
COMMENT ON COLUMN "t_cerebral_stroke_followup"."tia_content" IS 'tia控制情况';
COMMENT ON COLUMN "t_cerebral_stroke_followup"."other" IS '其他';--- 病史生活习惯控制情况
COMMENT ON COLUMN "t_cerebral_stroke_followup"."other_content" IS '其他控制情况';
COMMENT ON COLUMN "t_cerebral_stroke_followup"."risk_assessment" IS '高危患者卒中风险评估';
COMMENT ON COLUMN "t_cerebral_stroke_followup"."diagnose_classification" IS '脑卒中诊断分类'; --- 脑卒中诊断分类
COMMENT ON COLUMN "t_cerebral_stroke_followup"."diagnose_part" IS '脑卒中诊断部位'; --- 脑卒中诊断部位
COMMENT ON COLUMN "t_cerebral_stroke_followup"."hypotensor" IS '卒中后药物干预-降压药';
COMMENT ON COLUMN "t_cerebral_stroke_followup"."hypotensor_content" IS '卒中后药物干预-降压药-名称';
COMMENT ON COLUMN "t_cerebral_stroke_followup"."antidiabetic" IS '卒中后药物干预-降糖药';
COMMENT ON COLUMN "t_cerebral_stroke_followup"."antidiabetic_content" IS '卒中后药物干预-降糖药-名称';
COMMENT ON COLUMN "t_cerebral_stroke_followup"."lipid_lowering_drug" IS '卒中后药物干预-降脂药';
COMMENT ON COLUMN "t_cerebral_stroke_followup"."lipid_lowering_drug_content" IS '卒中后药物干预-降脂药-名称';
COMMENT ON COLUMN "t_cerebral_stroke_followup"."antiplatelet" IS '卒中后药物干预-抗血小板';
COMMENT ON COLUMN "t_cerebral_stroke_followup"."antiplatelet_content" IS '卒中后药物干预-抗血小板-名称';
COMMENT ON COLUMN "t_cerebral_stroke_followup"."anticoagulant_drug" IS '卒中后药物干预-抗凝药';
COMMENT ON COLUMN "t_cerebral_stroke_followup"."anticoagulant_drug_content" IS '卒中后药物干预-抗凝药-名称';
COMMENT ON COLUMN "t_cerebral_stroke_followup"."complication" IS '脑卒中并发症'; --- 脑卒中并发症
COMMENT ON COLUMN "t_cerebral_stroke_followup"."complication_content" IS '脑卒中并发症 其他';
COMMENT ON COLUMN "t_cerebral_stroke_followup"."new_symptom" IS '脑卒中并发症'; --- 新发脑卒中并发症
COMMENT ON COLUMN "t_cerebral_stroke_followup"."IRS" IS '影像学结果';
COMMENT ON COLUMN "t_cerebral_stroke_followup"."recovery_add" IS '卒中后康复';--- 卒中后康复
COMMENT ON COLUMN "t_cerebral_stroke_followup"."limbs_recover" IS '肢体功能恢复情况';--- 肢体功能恢复情况
COMMENT ON COLUMN "t_cerebral_stroke_followup"."followup_result" IS '随访结果';--- 随访结果
COMMENT ON COLUMN "t_cerebral_stroke_followup"."transfer_hospital" IS '转院原因';--- 转院原因


--- 患者分类
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '患者分类', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','高危患者', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '脑卒中患者', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');

--- 病史生活习惯控制情况
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '病史生活习惯控制情况', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','有', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '无', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');

--- 脑卒中诊断分类
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '脑卒中诊断分类', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','脑梗死', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '脑出血', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','蛛网膜下腔出血', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '不确定', '4', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');


--- 脑卒中诊断部位
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '脑卒中诊断部位', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','大脑半球左侧', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '大脑半球右侧', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','脑干', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '小脑', '4', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '不确定', '5', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');


--- 脑卒中并发症
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '脑卒中并发症', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','肺部感染', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '上消化道出血', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '', '吞咽困难', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '营养障碍', '4', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '压疮', '5', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '泌尿系统感染', '6', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '心功能不全', '7', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '其他', '8', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');



 --- 新发脑卒中并发症
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '新发脑卒中并发症', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','心痛', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '呕吐', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '', '意识障碍', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '眩晕', '4', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '癫痫', '5', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '构音障碍', '6', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '失语', '7', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '面瘫', '8', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '截肢-左', '9', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '截肢-右', '10', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '感觉障碍', '11', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '共济失调', '12', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '昏迷-是', '13', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '昏迷-否', '14', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');

--- 肢体功能恢复情况
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '肢体功能恢复情况', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','好', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '一般', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '差', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');


--- 随访结果
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '随访结果', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','继续留在社区管理', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '转上级医院', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');

--- 转院原因
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '转院原因', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','家属需求', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '无法明确诊断(如无CT等)', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '', '病情严重， 无抢救及支持条件', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '诊断明确，无相应治疗手段(如不能开展溶栓、介入治疗，外科手术治疗等)', '4', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
