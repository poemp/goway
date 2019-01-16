
--- 2型糖尿病随访
DROP TABLE IF EXISTS "t_diabetes_followup";
CREATE TABLE "t_diabetes_followup" (
    "id" varchar(50) NOT NULL,
    "resident_id" varchar(50 ) not null,
    "followup_time" timestamp,
    "followup_type"  int4 ,
    "symptom" int4,
    "symptom_content" varchar(50),
    "low_blood_pressure" int4,
    "hight_blood_pressure" int4,
    "low_weight" int4,
    "hight_weight" int4,
    "height" int4,
    "height" int4,
    "body_fat" numeric,
    "arteriopalmus" int4,
    "vision_left"  numeric,
    "vision_right"  numeric,
    "cva_left" numeric,
    "cva_right" numeric,
    "hearing" int4,
    "athletic_ability" int4,
    "low_smoke" int4,
    "height_smoke" int4,
    "low_drink" int4,
    "height_drink" int4,
    "athletic_time_week" int4,
    "athletic_time_frequently" int4,
    "next_athletic_time_week" int4,
    "next_athletic_time_frequently" int4,
    "staple_food_x" int4,
    "staple_food_y" int4,
    "psychological_recovery" int4,
    "treatment_compliance" int4,
    "fbg"  numeric,
    "postprandial_blood_sugar"  numeric,
    "random_blood_sugar"  numeric,
    "other_examination" varchar(50),
    "compliance"  int4,
    "low_suager_effect"  int4,
    "followup_classification"  int4,
    "transfer_treatment_cause" varchar(100),
    "transfer_treatment_org" varchar(100),
    "followup_result" varchar(100),
    "next_followup_time" timestamp,
    "followup_doc" varchar(50),
    "state" int4 DEFAULT 0,
    "create_user" bigint,
    "create_time" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
    "update_user" bigint,
    "update_time" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
    "flag" int2 DEFAULT 1,
	 CONSTRAINT "t_diabetes_followup_pkey" PRIMARY KEY ("id")
)WITH (OIDS=FALSE);
COMMENT ON TABLE "t_diabetes_followup" IS '2型糖尿病随访';

COMMENT ON COLUMN "t_diabetes_followup"."resident_id" IS '居民id';
COMMENT ON COLUMN "t_diabetes_followup"."followup_time" IS '随访时间';
COMMENT ON COLUMN "t_diabetes_followup"."followup_type" IS '随访方式'; --- 随访方式
COMMENT ON COLUMN "t_diabetes_followup"."symptom" IS '症状'; --- 症状
COMMENT ON COLUMN "t_diabetes_followup"."symptom_content" IS '症状 为其他时填写';
COMMENT ON COLUMN "t_diabetes_followup"."low_blood_pressure" IS '血压-低压数值';
COMMENT ON COLUMN "t_diabetes_followup"."hight_blood_pressure" IS '血压-高压数值';
COMMENT ON COLUMN "t_diabetes_followup"."low_weight" IS '体重-低(kg)';
COMMENT ON COLUMN "t_diabetes_followup"."hight_weight" IS '体重-高(kg)';
COMMENT ON COLUMN "t_diabetes_followup"."height" IS '身高(cm)';
COMMENT ON COLUMN "t_diabetes_followup"."body_fat" IS '体脂';
COMMENT ON COLUMN "t_diabetes_followup"."arteriopalmus" IS '足背动脉波动'; --- 足背动脉波动
COMMENT ON COLUMN "t_diabetes_followup"."vision_left" IS '视力-左';
COMMENT ON COLUMN "t_diabetes_followup"."vision_right" IS '视力-右';
COMMENT ON COLUMN "t_diabetes_followup"."cva_left" IS '矫正视力-左';
COMMENT ON COLUMN "t_diabetes_followup"."cva_right" IS '矫正视力-右';
COMMENT ON COLUMN "t_diabetes_followup"."hearing" IS '听力'; --- 听力
COMMENT ON COLUMN "t_diabetes_followup"."athletic_ability" IS '运动能力'; --- 运动能力
COMMENT ON COLUMN "t_diabetes_followup"."low_smoke" IS '吸烟最低支';
COMMENT ON COLUMN "t_diabetes_followup"."height_smoke" IS '吸烟最高支';
COMMENT ON COLUMN "t_diabetes_followup"."low_drink" IS '饮酒最低量(两)';
COMMENT ON COLUMN "t_diabetes_followup"."height_drink" IS '饮酒最高量(两)';
COMMENT ON COLUMN "t_diabetes_followup"."athletic_time_week" IS '每周运动次数';
COMMENT ON COLUMN "t_diabetes_followup"."athletic_time_frequently" IS '运每周动时常';
COMMENT ON COLUMN "t_diabetes_followup"."next_athletic_time_week" IS '下次每周运动次数';
COMMENT ON COLUMN "t_diabetes_followup"."next_athletic_time_frequently" IS '下次运每周动时常';
COMMENT ON COLUMN "t_diabetes_followup"."staple_food_x" IS '主食量左边值';
COMMENT ON COLUMN "t_diabetes_followup"."staple_food_y" IS '主食量右边值';
COMMENT ON COLUMN "t_diabetes_followup"."psychological_recovery" IS '心理调整'; --- 心理调整
COMMENT ON COLUMN "t_diabetes_followup"."treatment_compliance" IS '遵医行为'; --- 遵医行为
COMMENT ON COLUMN "t_diabetes_followup"."fbg" IS '空腹血糖';
COMMENT ON COLUMN "t_diabetes_followup"."random_blood_sugar" IS '随机血糖';
COMMENT ON COLUMN "t_diabetes_followup"."postprandial_blood_sugar" IS '餐后血糖';
COMMENT ON COLUMN "t_diabetes_followup"."other_examination" IS '其他检查';
COMMENT ON COLUMN "t_diabetes_followup"."compliance" IS '服药依从性'; --- 服药依从性
COMMENT ON COLUMN "t_diabetes_followup"."low_suager_effect" IS '低血糖良反应'; --- 低血糖反应
COMMENT ON COLUMN "t_diabetes_followup"."followup_classification" IS '此次随访分类';--- 此次随访分类
COMMENT ON COLUMN "t_diabetes_followup"."transfer_treatment_cause" IS '转诊原因';
COMMENT ON COLUMN "t_diabetes_followup"."transfer_treatment_org" IS '转诊机构及科别';
COMMENT ON COLUMN "t_diabetes_followup"."followup_result" IS '随访结局';
COMMENT ON COLUMN "t_diabetes_followup"."next_followup_time" IS '下次随访时间';
COMMENT ON COLUMN "t_diabetes_followup"."followup_doc" IS '随访医生';


--- 2型糖尿病用药情况
DROP TABLE IF EXISTS "t_diabetes_medication";
CREATE TABLE "t_diabetes_medication" (
    "id" varchar(50) NOT NULL,
    "diabetes_id" varchar(50) not null,
    "medication_name" varchar(50),
    "time" int4,
    "every_time" int4,
    "units" int4,
    "content" varchar(100),
    "state" int4 DEFAULT 0,
    "create_user" bigint,
    "create_time" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
    "update_user" bigint,
    "update_time" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
    "flag" int2 DEFAULT 1,
	 CONSTRAINT "t_diabetes_medication_pkey" PRIMARY KEY ("id")
)WITH (OIDS=FALSE);
COMMENT ON TABLE "t_diabetes_medication" IS '高血压用药情况';

COMMENT ON COLUMN "t_diabetes_medication"."diabetes_id" IS '高血压随访记录';
COMMENT ON COLUMN "t_diabetes_medication"."medication_name" IS '药品名称';
COMMENT ON COLUMN "t_diabetes_medication"."time" IS '每日次数';
COMMENT ON COLUMN "t_diabetes_medication"."every_time" IS '每次数量';
COMMENT ON COLUMN "t_diabetes_medication"."units" IS '数量单位'; --- 数量单位
COMMENT ON COLUMN "t_diabetes_medication"."content" IS '医嘱';


--- 2型糖尿病胰岛素
DROP TABLE IF EXISTS "t_diabetes_insulin";
CREATE TABLE "t_diabetes_insulin" (
    "id" varchar(50) NOT NULL,
    "diabetes_id" varchar(50) not null,
    "medication_name" varchar(50),
    "time" int4,
    "every_time" int4,
    "units" int4,
    "content" varchar(100),
    "state" int4 DEFAULT 0,
    "create_user" bigint,
    "create_time" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
    "update_user" bigint,
    "update_time" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
    "flag" int2 DEFAULT 1,
	 CONSTRAINT "t_diabetes_insulin_pkey" PRIMARY KEY ("id")
)WITH (OIDS=FALSE);
COMMENT ON TABLE "t_diabetes_insulin" IS '2型糖尿病胰岛素';

COMMENT ON COLUMN "t_diabetes_insulin"."diabetes_id" IS '糖尿病随访记录';
COMMENT ON COLUMN "t_diabetes_insulin"."medication_name" IS '药品名称';
COMMENT ON COLUMN "t_diabetes_insulin"."time" IS '每日次数';
COMMENT ON COLUMN "t_diabetes_insulin"."every_time" IS '每次数量';
COMMENT ON COLUMN "t_diabetes_insulin"."units" IS '数量单位'; --- 数量单位
COMMENT ON COLUMN "t_diabetes_insulin"."content" IS '医嘱';



--- 足背动脉波动
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '足背动脉波动', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '', '触及正常', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '减弱', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '消失', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');

--- 低血糖反应
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '低血糖反应', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '', '无', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '偶尔', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '频繁', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
