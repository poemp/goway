
--- 结核病随访
DROP TABLE IF EXISTS "t_tuberculosis_followup";
CREATE TABLE "t_tuberculosis_followup" (
    "id" varchar(50) NOT NULL,
    "resident_id" varchar(50 ) not null,
    "followup_time" timestamp,
    "symptom" int4,
    "symptom_content" varchar(50),
    "height" int4,
    "weight" int4,
    "body_fat" numeric,
    "animal_heat" numeric,
    "low_blood_pressure" int4,
    "hight_blood_pressure" int4,
    "eart_rate" int4,
    "breathe" int4,
    "low_smoke" int4,
    "height_smoke" int4,
    "low_drink" int4,
    "height_drink" int4,
    "athletic_time_week" int4,
    "athletic_time_frequently" int4,
    "next_athletic_time_week" int4,
    "next_athletic_time_frequently" int4,
    "check_appointment_time" timestamp,
    "inspection_time" timestamp,
    "delay_advance" int4,
    "check_appointment" int4,
    "medicine_situation"  int4,
    "medicine_situation_content"  varchar(100),
    "medicine_untoward_effect"  varchar(100),
    "delay_start_time" timestamp,
    "delay_end_time" timestamp,
    "delay_reason" varchar(100),
    "replenish_time" int4,
    "break_time" int4,
    "untoward_effect"  varchar(100),
    "health_guidance" varchar(100),
    "next_followup_time" timestamp,
    "responsibility_doc" varchar(50),
    "state" int4 DEFAULT 0,
    "create_user" bigint,
    "create_time" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
    "update_user" bigint,
    "update_time" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
    "flag" int2 DEFAULT 1,
	 CONSTRAINT "t_tuberculosis_followup_pkey" PRIMARY KEY ("id")
)WITH (OIDS=FALSE);
COMMENT ON TABLE "t_tuberculosis_followup" IS '结核病随访';

COMMENT ON COLUMN "t_tuberculosis_followup"."resident_id" IS '居民id';
COMMENT ON COLUMN "t_tuberculosis_followup"."followup_time" IS '随访时间';
COMMENT ON COLUMN "t_tuberculosis_followup"."symptom" IS '症状'; --- 结核病-症状
COMMENT ON COLUMN "t_tuberculosis_followup"."symptom_content" IS '症状 为其他时填写';
COMMENT ON COLUMN "t_tuberculosis_followup"."height" IS '身高(cm)';
COMMENT ON COLUMN "t_tuberculosis_followup"."weight" IS '体重(kg)';
COMMENT ON COLUMN "t_tuberculosis_followup"."body_fat" IS '体脂';
COMMENT ON COLUMN "t_tuberculosis_followup"."animal_heat" IS '体温';
COMMENT ON COLUMN "t_tuberculosis_followup"."low_blood_pressure" IS '血压-低压数值';
COMMENT ON COLUMN "t_tuberculosis_followup"."hight_blood_pressure" IS '血压-高压数值';
COMMENT ON COLUMN "t_tuberculosis_followup"."eart_rate" IS '心率';
COMMENT ON COLUMN "t_tuberculosis_followup"."breathe" IS '呼吸(次/分钟)';
COMMENT ON COLUMN "t_tuberculosis_followup"."low_smoke" IS '吸烟最低支';
COMMENT ON COLUMN "t_tuberculosis_followup"."height_smoke" IS '吸烟最高支';
COMMENT ON COLUMN "t_tuberculosis_followup"."low_drink" IS '饮酒最低量(两)';
COMMENT ON COLUMN "t_tuberculosis_followup"."height_drink" IS '饮酒最高量(两)';
COMMENT ON COLUMN "t_tuberculosis_followup"."athletic_time_week" IS '每周运动次数';
COMMENT ON COLUMN "t_tuberculosis_followup"."athletic_time_frequently" IS '运每周动时常';
COMMENT ON COLUMN "t_tuberculosis_followup"."next_athletic_time_week" IS '下次随访每周运动次数';
COMMENT ON COLUMN "t_tuberculosis_followup"."next_athletic_time_frequently" IS '下次随访运每周动时常';
COMMENT ON COLUMN "t_tuberculosis_followup"."check_appointment_time" IS '查痰预约时间';
COMMENT ON COLUMN "t_tuberculosis_followup"."inspection_time" IS '查痰送检时间';
COMMENT ON COLUMN "t_tuberculosis_followup"."delay_advance" IS '查痰延迟，提前(天)';
COMMENT ON COLUMN "t_tuberculosis_followup"."check_appointment" IS '查痰结果'; --- 查痰结果
COMMENT ON COLUMN "t_tuberculosis_followup"."medicine_situation" IS '服药情况'; --- 服药情况
COMMENT ON COLUMN "t_tuberculosis_followup"."medicine_situation_content" IS '服药情况说明';
COMMENT ON COLUMN "t_tuberculosis_followup"."medicine_untoward_effect" IS '药物不良反应';
COMMENT ON COLUMN "t_tuberculosis_followup"."delay_start_time" IS '用药延误开始时间';
COMMENT ON COLUMN "t_tuberculosis_followup"."delay_end_time" IS '用药延误结束时间';
COMMENT ON COLUMN "t_tuberculosis_followup"."delay_reason" IS '用药延误漏服及原因';
COMMENT ON COLUMN "t_tuberculosis_followup"."replenish_time" IS '补服次数';
COMMENT ON COLUMN "t_tuberculosis_followup"."break_time" IS '断药次数';
COMMENT ON COLUMN "t_tuberculosis_followup"."untoward_effect" IS '视访不良反应';
COMMENT ON COLUMN "t_tuberculosis_followup"."health_guidance" IS '健康指导';
COMMENT ON COLUMN "t_tuberculosis_followup"."responsibility_doc" IS '责任医生';
COMMENT ON COLUMN "t_tuberculosis_followup"."next_followup_time" IS '下次随访时间';


--- 结核病接触情况
DROP TABLE IF EXISTS "t_tuberculosis_touch";
CREATE TABLE "t_tuberculosis_touch" (
    "id" varchar(50) NOT NULL,
    "tuberculosis_id" varchar(50) not null,
    "name" varchar(50),
    "relationship" int4,
    "symptom" int4,
    "symptom_content" varchar(50),
    "state" int4 DEFAULT 0,
    "create_user" bigint,
    "create_time" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
    "update_user" bigint,
    "update_time" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
    "flag" int2 DEFAULT 1,
	 CONSTRAINT "t_tuberculosis_touch_pkey" PRIMARY KEY ("id")
)WITH (OIDS=FALSE);
COMMENT ON TABLE "t_tuberculosis_touch" IS '结核病亲密接触情况';

COMMENT ON COLUMN "t_tuberculosis_touch"."tuberculosis_id" IS '结核病随访记录';
COMMENT ON COLUMN "t_tuberculosis_touch"."name" IS '姓名';
COMMENT ON COLUMN "t_tuberculosis_touch"."relationship" IS '与患者关系 11. 户主关系';
COMMENT ON COLUMN "t_tuberculosis_touch"."symptom" IS '症状'; --- 结核病-亲密接触-症状
COMMENT ON COLUMN "t_tuberculosis_touch"."symptom_content" IS '症状详情';


--- 结核病-症状
INSERT INTO "c_code_type" VALUES ('34', NULL, 'symptom', '结核病-症状', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','无症状', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '咳嗽咳痰', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','恶心厌食', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '腹胀腹痛', '4', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','呼吸困难', '5', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '头痛头晕', '6', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','失眠', '7', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '咯血', '8', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','下肢水肿', '9', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');


--- 查痰结果
INSERT INTO "c_code_type" VALUES ('34', NULL, 'symptom', '查痰结果', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','涂阴', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '涂阳', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');


--- 服药情况
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '服药情况', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '', '按时服药', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '', '停药原因', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');

--- 结核病-亲密接触-症状
INSERT INTO "c_code_type" VALUES ('34', NULL, 'symptom', '结核病-亲密接触-症状', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','无有症状', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '咳嗽咳痰', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','潮热', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '盗汗', '4', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','消瘦', '5', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '咯血', '6', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','其他', '7', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
