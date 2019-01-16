
--- 高血压
DROP TABLE IF EXISTS "t_high_blood_followup";
CREATE TABLE "t_high_blood_followup" (
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
    "heart_rate" int4,
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
    "salt_x" int4,
    "salt_y" int4,
    "psychological_recovery" int4,
    "treatment_compliance" int4,
    "auxiliary_examination"  varchar(50),
    "compliance"  int4,
    "untoward_effect"  int4,
    "untoward_effect_content"  varchar(50),
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
	 CONSTRAINT "t_high_blood_followup_pkey" PRIMARY KEY ("id")
)WITH (OIDS=FALSE);
COMMENT ON TABLE "t_high_blood_followup" IS '高血压随访';

COMMENT ON COLUMN "t_high_blood_followup"."resident_id" IS '居民id';
COMMENT ON COLUMN "t_high_blood_followup"."followup_time" IS '随访时间';
COMMENT ON COLUMN "t_high_blood_followup"."followup_type" IS '随访方式'; --- 随访方式
COMMENT ON COLUMN "t_high_blood_followup"."symptom" IS '症状'; --- 症状
COMMENT ON COLUMN "t_high_blood_followup"."symptom_content" IS '症状 为其他时填写';
COMMENT ON COLUMN "t_high_blood_followup"."low_blood_pressure" IS '血压-低压数值';
COMMENT ON COLUMN "t_high_blood_followup"."hight_blood_pressure" IS '血压-高压数值';
COMMENT ON COLUMN "t_high_blood_followup"."low_weight" IS '体重-低(kg)';
COMMENT ON COLUMN "t_high_blood_followup"."hight_weight" IS '体重-高(kg)';
COMMENT ON COLUMN "t_high_blood_followup"."height" IS '身高(cm)';
COMMENT ON COLUMN "t_high_blood_followup"."body_fat" IS '体脂';
COMMENT ON COLUMN "t_high_blood_followup"."heart_rate" IS '心率';
COMMENT ON COLUMN "t_high_blood_followup"."vision_left" IS '视力-左';
COMMENT ON COLUMN "t_high_blood_followup"."vision_right" IS '视力-右';
COMMENT ON COLUMN "t_high_blood_followup"."cva_left" IS '矫正视力-左';
COMMENT ON COLUMN "t_high_blood_followup"."cva_right" IS '矫正视力-右';
COMMENT ON COLUMN "t_high_blood_followup"."hearing" IS '听力'; --- 听力
COMMENT ON COLUMN "t_high_blood_followup"."athletic_ability" IS '运动能力'; --- 运动能力
COMMENT ON COLUMN "t_high_blood_followup"."low_smoke" IS '吸烟最低支';
COMMENT ON COLUMN "t_high_blood_followup"."height_smoke" IS '吸烟最高支';
COMMENT ON COLUMN "t_high_blood_followup"."low_drink" IS '饮酒最低量(两)';
COMMENT ON COLUMN "t_high_blood_followup"."height_drink" IS '饮酒最高量(两)';
COMMENT ON COLUMN "t_high_blood_followup"."athletic_time_week" IS '每周运动次数';
COMMENT ON COLUMN "t_high_blood_followup"."athletic_time_frequently" IS '运每周动时常';
COMMENT ON COLUMN "t_high_blood_followup"."next_athletic_time_week" IS '下次每周运动次数';
COMMENT ON COLUMN "t_high_blood_followup"."next_athletic_time_frequently" IS '下次运每周动时常';
COMMENT ON COLUMN "t_high_blood_followup"."salt_x" IS '摄盐量左边值'; --- 摄盐量
COMMENT ON COLUMN "t_high_blood_followup"."salt_y" IS '摄盐量右边值'; --- 摄盐量
COMMENT ON COLUMN "t_high_blood_followup"."psychological_recovery" IS '心理调整'; --- 心理调整
COMMENT ON COLUMN "t_high_blood_followup"."treatment_compliance" IS '遵医行为'; --- 遵医行为
COMMENT ON COLUMN "t_high_blood_followup"."auxiliary_examination" IS '辅助检查';
COMMENT ON COLUMN "t_high_blood_followup"."compliance" IS '服药依从性'; --- 服药依从性
COMMENT ON COLUMN "t_high_blood_followup"."untoward_effect" IS '药物不良反应'; --- 药物不良反应
COMMENT ON COLUMN "t_high_blood_followup"."untoward_effect_content" IS '药物不良反应情况内容';
COMMENT ON COLUMN "t_high_blood_followup"."followup_classification" IS '此次随访分类';--- 此次随访分类
COMMENT ON COLUMN "t_high_blood_followup"."transfer_treatment_cause" IS '转诊原因';
COMMENT ON COLUMN "t_high_blood_followup"."transfer_treatment_org" IS '转诊机构及科别';
COMMENT ON COLUMN "t_high_blood_followup"."followup_result" IS '随访结局';
COMMENT ON COLUMN "t_high_blood_followup"."next_followup_time" IS '下次随访时间';
COMMENT ON COLUMN "t_high_blood_followup"."followup_doc" IS '随访医生';


--- 高血压用药情况
DROP TABLE IF EXISTS "t_high_blood_medication";
CREATE TABLE "t_high_blood_medication" (
    "id" varchar(50) NOT NULL,
    "high_blood_id" varchar(50) not null,
    "medication_name" varchar(50),
    "time" int4,
    "every_time" int4,
    "units" int4,
    "state" int4 DEFAULT 0,
    "create_user" bigint,
    "create_time" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
    "update_user" bigint,
    "update_time" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
    "flag" int2 DEFAULT 1,
	 CONSTRAINT "t_high_blood_medication_pkey" PRIMARY KEY ("id")
)WITH (OIDS=FALSE);
COMMENT ON TABLE "t_high_blood_medication" IS '高血压用药情况';

COMMENT ON COLUMN "t_high_blood_medication"."high_blood_id" IS '高血压随访记录';
COMMENT ON COLUMN "t_high_blood_medication"."medication_name" IS '药品名称';
COMMENT ON COLUMN "t_high_blood_medication"."time" IS '每日次数';
COMMENT ON COLUMN "t_high_blood_medication"."every_time" IS '每次数量';
COMMENT ON COLUMN "t_high_blood_medication"."units" IS '数量单位'; --- 数量单位




--- 随访方式
INSERT INTO "c_code_type" VALUES ('34', NULL, 'followup_way', '随访方式', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', 'outpatient', '门诊', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', 'home', '家庭', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3403', '34', 'phone', '电话', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');

--- 症状
INSERT INTO "c_code_type" VALUES ('34', NULL, 'symptom', '症状', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', 'asymptomatic','无症状', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', 'headache', '头痛头晕', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', 'nausea','恶心呕吐', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', 'roaring', '眼花耳鸣', '4', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', 'dyspnea','呼吸困难', '5', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', 'ghd_hot_pink', '心悸胸闷', '6', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', 'epistaxis','鼻衄', '7', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', 'pins_needles', '四肢发麻', '8', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','下肢水肿', '9', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','多饮', '10', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','多食', '11', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','多尿', '12', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','视力模糊', '13', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','感染', '14', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','手脚麻木', '15', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','下肢浮肿', '16', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','体重明显下降', '17', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', 'other', '其他', '24', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');

--- 听力
INSERT INTO "c_code_type" VALUES ('34', NULL, 'hearing', '听力', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', 'hear', '听见', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', 'inaudibility', '听不清或无法听见', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');


--- 运动能力
INSERT INTO "c_code_type" VALUES ('34', NULL, 'athletic_ability', '运动能力', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', 'ability', '可以顺利完成', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', 'disability', '无法独立完成其中任何一动作', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');

--- 摄盐量

INSERT INTO "c_code_type" VALUES ('34', NULL, 'salt', '摄盐量', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', 'light', '轻', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', 'middle', '中', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', 'seriousness', '重', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');

--- 心理调整
INSERT INTO "c_code_type" VALUES ('34', NULL, 'psychological', '心理调整', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', 'well', '良好', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', 'general', '一般', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', 'bad', '差', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');

--- 遵医行为
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '遵医行为', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '', '良好', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '一般', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '差', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');


--- 服药依从性
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '服药依从性', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '', '规律', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '间断', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '不服药', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');

--- 药物不良反应
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '药物不良反应', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '', '无', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '', '有', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');

--- 此次随访分类
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '此次随访分类', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','控制满意', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '控制不满意', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','不良反应', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '并发症', '4', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');


--- 数量单位
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '数量单位', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','mg', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', 'ml', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','g', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '片', '4', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','粒', '5', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '袋', '6', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','瓶', '7', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '支', '8', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','盒', '9', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', 'U', '10', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
