
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
    "medical_live_status" int4,
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
COMMENT ON COLUMN "t_cerebral_stroke_followup"."cerebral_stroke_followup" IS '脑卒中';--- 病史生活习惯控制情况
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



--- COPD随访
DROP TABLE IF EXISTS "t_copd_followup";
CREATE TABLE "t_copd_followup" (
    "id" varchar(50) NOT NULL,
    "resident_id" varchar(50 ) not null,
    "followup_time" timestamp,
    "symptom" int4,
    "symptom_content" varchar(50),
    "lips" int4,
    "pulmonary_sound" int4,
    "pulmonary_sound_content" varchar(50),
    "lower_limb_edema" int4,
    "animal_heat"  numeric,
    "eart_rate" int4,
    "pulse_rate" int4,
    "breathe" int4,
    "height" int4,
    "weight" int4,
    "body_fat" int4,
    "low_smoke"  int4,
    "height_smoke" int4,
    "athletic_time_week" int4,
    "athletic_time_frequently" int4,
    "low_blood_pressure" int4,
    "hight_blood_pressure" int4,
    "hemoglobin" numeric,
    "hemameba" numeric,
    "soterocyte" numeric,
    "other" numeric,
    "other_check" varchar(50),
    "result" varchar(100),
    "health_guidance" varchar(100),
    "transfer_treatment_cause" varchar(100),
    "transfer_treatment_org" varchar(100),
    "responsibility_doc" varchar(50),
    "next_followup_time"  timestamp,
    "state" int4 DEFAULT 0,
    "create_user" bigint,
    "create_time" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
    "update_user" bigint,
    "update_time" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
    "flag" int2 DEFAULT 1,
     CONSTRAINT "t_copd_followup_pkey" PRIMARY KEY ("id")
)WITH (OIDS=FALSE);
COMMENT ON TABLE "t_copd_followup" IS 'COPD随访';

COMMENT ON COLUMN "t_copd_followup"."resident_id" IS '居民id';
COMMENT ON COLUMN "t_copd_followup"."followup_time" IS '随访时间';
COMMENT ON COLUMN "t_copd_followup"."symptom" IS '症状'; --- 症状
COMMENT ON COLUMN "t_copd_followup"."symptom_content" IS '症状 为其他时填写';
COMMENT ON COLUMN "t_copd_followup"."lips" IS '口唇'; --- 口唇
COMMENT ON COLUMN "t_copd_followup"."pulmonary_sound" IS '肺罗音'; --- 肺罗音
COMMENT ON COLUMN "t_copd_followup"."pulmonary_sound_content" IS '肺罗音';
COMMENT ON COLUMN "t_copd_followup"."lower_limb_edema" IS '下肢水肿'; --- 下肢水肿
COMMENT ON COLUMN "t_copd_followup"."animal_heat" IS '体温';
COMMENT ON COLUMN "t_copd_followup"."eart_rate" IS '心率';
COMMENT ON COLUMN "t_copd_followup"."pulse_rate" IS '脉率（次/分钟）';
COMMENT ON COLUMN "t_copd_followup"."breathe" IS '呼吸(次/分钟)';
COMMENT ON COLUMN "t_copd_followup"."height" IS '身高(cm)';
COMMENT ON COLUMN "t_copd_followup"."weight" IS '体重(kg)';
COMMENT ON COLUMN "t_copd_followup"."body_fat" IS '体脂';
COMMENT ON COLUMN "t_copd_followup"."low_smoke" IS '吸烟最低支';
COMMENT ON COLUMN "t_copd_followup"."height_smoke" IS '吸烟最高支';
COMMENT ON COLUMN "t_copd_followup"."athletic_time_week" IS '每周运动次数';
COMMENT ON COLUMN "t_copd_followup"."athletic_time_frequently" IS '运每周动时常';
COMMENT ON COLUMN "t_copd_followup"."low_blood_pressure" IS '血压-低压数值';
COMMENT ON COLUMN "t_copd_followup"."hight_blood_pressure" IS '血压-高压数值';
COMMENT ON COLUMN "t_copd_followup"."hemoglobin" IS '血红蛋白';
COMMENT ON COLUMN "t_copd_followup"."hemameba" IS '白细胞';
COMMENT ON COLUMN "t_copd_followup"."soterocyte" IS '血小板';
COMMENT ON COLUMN "t_copd_followup"."other" IS '其他';
COMMENT ON COLUMN "t_copd_followup"."other_check" IS '其他检查';
COMMENT ON COLUMN "t_copd_followup"."result" IS '随访结果';
COMMENT ON COLUMN "t_copd_followup"."health_guidance" IS '健康指导';
COMMENT ON COLUMN "t_copd_followup"."transfer_treatment_cause" IS '转诊原因';
COMMENT ON COLUMN "t_copd_followup"."transfer_treatment_org" IS '转诊机构及科别';
COMMENT ON COLUMN "t_copd_followup"."responsibility_doc" IS '责任医生';
COMMENT ON COLUMN "t_copd_followup"."next_followup_time" IS '下次随访时间';




--- COPD用药情况
DROP TABLE IF EXISTS "t_copd_medication";
CREATE TABLE "t_copd_medication" (
    "id" varchar(50) NOT NULL,
    "copd_id" varchar(50) not null,
    "medication_name" varchar(50),
    "time" int4,
    "every_time" int4,
    "units" int4,
    "content" varchar(100),
    "compliance" int4,
    "untoward_effect" int4,
    "untoward_effect_content" varchar(50),
    "state" int4 DEFAULT 0,
    "create_user" bigint,
    "create_time" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
    "update_user" bigint,
    "update_time" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
    "flag" int2 DEFAULT 1,
     CONSTRAINT "t_copd_medication_pkey" PRIMARY KEY ("id")
)WITH (OIDS=FALSE);
COMMENT ON TABLE "t_copd_medication" IS 'COPD用药情况';

COMMENT ON COLUMN "t_copd_medication"."copd_id" IS 'COPD随访记录';
COMMENT ON COLUMN "t_copd_medication"."medication_name" IS '药品名称';
COMMENT ON COLUMN "t_copd_medication"."time" IS '每日次数';
COMMENT ON COLUMN "t_copd_medication"."every_time" IS '每次数量';
COMMENT ON COLUMN "t_copd_medication"."units" IS '数量单位'; --- 数量单位
COMMENT ON COLUMN "t_copd_medication"."content" IS '医嘱';
COMMENT ON COLUMN "t_copd_medication"."compliance" IS '服药依从性'; --- 服药依从性
COMMENT ON COLUMN "t_copd_medication"."untoward_effect" IS '药物不良反应'; --- 药物不良反应
COMMENT ON COLUMN "t_copd_medication"."untoward_effect_content" IS '药物不良反应情况内容';



--- 严重精神病随访
DROP TABLE IF EXISTS "t_psychosis_followup";
CREATE TABLE "t_psychosis_followup" (
    "id" varchar(50) NOT NULL,
    "resident_id" varchar(50 ) not null,
    "followup_time" timestamp,
    "followup_type"  int4 ,
    "unfolloup_type" int4,
    "death_time" timestamp,
    "death_type" int4,
    "danger_classes" int4,
    "symptom" int4[],
    "symptom_content" varchar(50),
    "possessiveness" int4,
    "sleep" int4,
    "eat" int4,
    "arrange" int4,
    "household_duties" int4,
    "labor_wages" int4,
    "study" int4,
    "social_contact" int4,
    "cause_trouble" int4,
    "create_disturbance" int4,
    "cause_accident" int4,
    "other" int4,
    "suicide" int4,
    "failed_suicide" int4,
    "captivity" int4,
    "hospital" int4,
    "hospital_time" timestamp,
    "low_blood_pressure" int4,
    "hight_blood_pressure" int4,
    "weight"  numeric,
    "FBG" numeric,
    "vision_left"  numeric,
    "vision_right"  numeric,
    "cva_left" numeric,
    "cva_right" numeric,
    "hearing" int4,
    "athletic_ability" int4,
    "laboratory_examination" varchar(50),
    "compliance"  int4,
    "untoward_effect"  int4,
    "untoward_effect_content"  varchar(50),
    "pharmacy" varchar(50)[],
    "therapeutic_effect" int4,
    "followup_class" int4,
    "transfer_treatment_cause" varchar(100),
    "transfer_treatment_org" varchar(100),
    "rehabilitation_measures" int4,
    "rehabilitation_measures_content" varchar(50),
    "followup_result" varchar(100),
    "next_followup_time" timestamp,
    "followup_doc" varchar(50),
    "state" int4 DEFAULT 0,
    "create_user" bigint,
    "create_time" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
    "update_user" bigint,
    "update_time" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
    "flag" int2 DEFAULT 1,
     CONSTRAINT "t_psychosis_followup_pkey" PRIMARY KEY ("id")
)WITH (OIDS=FALSE);
COMMENT ON TABLE "t_psychosis_followup" IS '严重精神病随访';


COMMENT ON COLUMN "t_psychosis_followup"."resident_id" IS '居民id';
COMMENT ON COLUMN "t_psychosis_followup"."followup_time" IS '随访时间';
COMMENT ON COLUMN "t_psychosis_followup"."followup_type" IS '本次随访方式'; --- 随访方式
COMMENT ON COLUMN "t_psychosis_followup"."unfolloup_type" IS '失访原因'; --- 失访原因
COMMENT ON COLUMN "t_psychosis_followup"."death_time" IS '死亡时间';
COMMENT ON COLUMN "t_psychosis_followup"."death_type" IS '死亡原因'; --- 死亡原因
COMMENT ON COLUMN "t_psychosis_followup"."danger_classes" IS '危险级'; --- 危险级
COMMENT ON COLUMN "t_psychosis_followup"."symptom" IS '症状'; --- 目前症状
COMMENT ON COLUMN "t_psychosis_followup"."symptom_content" IS '症状 为其他时填写';
COMMENT ON COLUMN "t_psychosis_followup"."possessiveness" IS '自治力'; --- 自治力
COMMENT ON COLUMN "t_psychosis_followup"."sleep" IS '睡眠情况'; --- 情况
COMMENT ON COLUMN "t_psychosis_followup"."eat" IS '饮食情况'; --- 情况
COMMENT ON COLUMN "t_psychosis_followup"."arrange" IS '个人生活料理'; --- 情况
COMMENT ON COLUMN "t_psychosis_followup"."household_duties" IS '家务'; --- 情况
COMMENT ON COLUMN "t_psychosis_followup"."labor_wages" IS '生产劳动及工作'; --- 生产劳动及工作情况
COMMENT ON COLUMN "t_psychosis_followup"."study" IS '学习能力'; --- 情况
COMMENT ON COLUMN "t_psychosis_followup"."social_contact" IS '社会人际'; --- 情况
COMMENT ON COLUMN "t_psychosis_followup"."cause_trouble" IS '滋事';
COMMENT ON COLUMN "t_psychosis_followup"."create_disturbance" IS '肇事';
COMMENT ON COLUMN "t_psychosis_followup"."cause_accident" IS '肇祸';
COMMENT ON COLUMN "t_psychosis_followup"."other" IS '其他危险行为';
COMMENT ON COLUMN "t_psychosis_followup"."suicide" IS '自杀';
COMMENT ON COLUMN "t_psychosis_followup"."failed_suicide" IS '自杀未遂';
COMMENT ON COLUMN "t_psychosis_followup"."captivity" IS '关锁'; --- 关锁
COMMENT ON COLUMN "t_psychosis_followup"."hospital" IS '住院情况'; --- 住院情况
COMMENT ON COLUMN "t_psychosis_followup"."hospital_time" IS '末次出院时间';
COMMENT ON COLUMN "t_psychosis_followup"."low_blood_pressure" IS '血压-低压数值';
COMMENT ON COLUMN "t_psychosis_followup"."hight_blood_pressure" IS '血压-高压数值';
COMMENT ON COLUMN "t_psychosis_followup"."weight" IS '体重(kg)';
COMMENT ON COLUMN "t_psychosis_followup"."FBG" IS '空腹血糖';
COMMENT ON COLUMN "t_psychosis_followup"."vision_left" IS '视力-左';
COMMENT ON COLUMN "t_psychosis_followup"."vision_right" IS '视力-右';
COMMENT ON COLUMN "t_psychosis_followup"."cva_left" IS '矫正视力-左';
COMMENT ON COLUMN "t_psychosis_followup"."cva_right" IS '矫正视力-右';
COMMENT ON COLUMN "t_psychosis_followup"."hearing" IS '听力'; --- 听力
COMMENT ON COLUMN "t_psychosis_followup"."athletic_ability" IS '运动能力'; --- 运动能力
COMMENT ON COLUMN "t_psychosis_followup"."laboratory_examination" IS '实验室检查';
COMMENT ON COLUMN "t_psychosis_followup"."compliance" IS '服药依从性'; --- 服药依从性
COMMENT ON COLUMN "t_psychosis_followup"."untoward_effect" IS '药物不良反应'; --- 药物不良反应
COMMENT ON COLUMN "t_psychosis_followup"."untoward_effect_content" IS '药物不良反应情况内容';
COMMENT ON COLUMN "t_psychosis_followup"."pharmacy" IS '用药指导';
COMMENT ON COLUMN "t_psychosis_followup"."therapeutic_effect" IS '治疗效果';--- 治疗效果
COMMENT ON COLUMN "t_psychosis_followup"."followup_class" IS '本次随访分类';--- 本次随访分类
COMMENT ON COLUMN "t_psychosis_followup"."transfer_treatment_cause" IS '转诊原因';
COMMENT ON COLUMN "t_psychosis_followup"."transfer_treatment_org" IS '转诊机构及科别';
COMMENT ON COLUMN "t_psychosis_followup"."rehabilitation_measures" IS '康复措施'; --- 康复措施
COMMENT ON COLUMN "t_psychosis_followup"."rehabilitation_measures_content" IS '康复措施 其他';
COMMENT ON COLUMN "t_psychosis_followup"."followup_result" IS '随访结局';
COMMENT ON COLUMN "t_psychosis_followup"."next_followup_time" IS '下次随访时间';
COMMENT ON COLUMN "t_psychosis_followup"."followup_doc" IS '责任医生';


--- 严重精神病用药情况
DROP TABLE IF EXISTS "t_psychosis_medication";
CREATE TABLE "t_psychosis_medication" (
    "id" varchar(50) NOT NULL,
    "psychosis_id" varchar(50) not null,
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
     CONSTRAINT "t_psychosis_medication_pkey" PRIMARY KEY ("id")
)WITH (OIDS=FALSE);
COMMENT ON TABLE "t_psychosis_medication" IS '严重精神病用药情况';

COMMENT ON COLUMN "t_psychosis_medication"."psychosis_id" IS 'psychosis随访记录';
COMMENT ON COLUMN "t_psychosis_medication"."medication_name" IS '药品名称';
COMMENT ON COLUMN "t_psychosis_medication"."time" IS '每日次数';
COMMENT ON COLUMN "t_psychosis_medication"."every_time" IS '每次数量';
COMMENT ON COLUMN "t_psychosis_medication"."units" IS '数量单位'; --- 数量单位
COMMENT ON COLUMN "t_psychosis_medication"."content" IS '医嘱';
