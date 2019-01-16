
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



--- 症状
INSERT INTO "c_code_type" VALUES ('34', NULL, '', 'COPD症状', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '', '咳嗽', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '咯痰', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '呼吸困难', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '其他', '4', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');

--- 口唇
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '口唇', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '', '红润', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '苍白', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '发', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '破裂', '4', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '疱疹', '5', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');

--- 肺罗音
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '肺罗音', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '', '无', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '干罗音', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '湿罗音', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '其他', '4', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');

--- 下肢水肿
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '下肢水肿', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '', '无', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '单侧', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '双侧不对称', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '双侧对称', '4', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');


--- 失访原因
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '失访原因', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','外出打工', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '迁居他处', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','走失', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '连续2次未到访', '4', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','其他', '5', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');

--- 死亡原因
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '死亡原因', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','躯体疾病', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','传染病和寄生虫', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','肿瘤', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','心脏病', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','脑血管病', '4', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','呼吸系统疾病', '5', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','消化系统疾病', '6', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','其他疾病', '7', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','不详', '8', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '自杀', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','他杀', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '意外', '4', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','精神疾病相关并发症', '5', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','其他', '6', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');


--- 危险级
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '危险级', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','(0级)', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','(1级)', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','(2级)', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','(3级)', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','(4级)', '4', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','(5级)', '5', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');


--- 目前症状
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '目前症状', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','幻觉', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','交流困难', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','猜疑', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','喜怒无常', '4', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','行为怪异', '5', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','兴奋多话', '6', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','伤人毁物', '7', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','悲观厌世', '8', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','无故走失', '9', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','自言自笑', '10', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','孤僻懒散', '11', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','其他', '12', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');

--- 自治力
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '自治力', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','自治力完全', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','自治力不全', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','自治力缺失', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');


--- 情况
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '睡眠情况', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '', '良好', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '一般', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '较差', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');


--- 住院情况
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '住院情况', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '', '未住院', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '目前正在住院', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '曾住院，现未住院', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');


--- 生产劳动及工作情况
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '生产劳动及工作情况', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '', '良好', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '一般', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '较差', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '此项不适用', '4', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');

--- 关锁
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '关锁情况', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '', '无关锁', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '关锁', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3402', '34', '', '关锁已解除', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');

--- 治疗效果
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '治疗效果', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','痊愈', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','好转', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','无变化', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','加重', '4', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','此项不适用', '5', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');

--- 本次随访分类
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '本次随访分类', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','不稳定', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','基本稳定', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','稳定', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','为随访到', '4', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');


--- 康复措施
INSERT INTO "c_code_type" VALUES ('34', NULL, '', '康复措施', NULL, '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','生活劳动能力', '1', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','职业训练', '2', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','学习能力', '3', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','社会交往', '4', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');
INSERT INTO "c_code_type" VALUES ('3401', '34', '','其他', '5', '1', '1', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP, 't');


