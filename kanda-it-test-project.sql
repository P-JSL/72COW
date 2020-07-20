--------------------------------------------------------
--  ������ ������ - ������-7��-20-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_USERS
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_USERS"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence SEQ_TRADE
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_TRADE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence SEQ_SHUT_USER
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_SHUT_USER"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence SEQ_SEND
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_SEND"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence SEQ_STATUS
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_STATUS"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence SEQ_RECEIVE
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_RECEIVE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence SEQ_PRODUCT
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_PRODUCT"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence SEQ_FEES
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_FEES"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence SEQ_CONT_USER
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_CONT_USER"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence SEQ_CONT_ADMIN
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_CONT_ADMIN"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence SEQ_CHAT
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_CHAT"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "USERS" 
   (	"NUM" NUMBER, 
	"SID" VARCHAR2(60), 
	"F_NAME" VARCHAR2(40), 
	"L_NAME" VARCHAR2(40), 
	"F_E_NAME" VARCHAR2(40), 
	"L_E_NAME" VARCHAR2(40), 
	"PASSWORD" VARCHAR2(20), 
	"EMAIL" VARCHAR2(20), 
	"PHONE" VARCHAR2(14), 
	"NICKNAME" VARCHAR2(40), 
	"ADDRESS" VARCHAR2(40), 
	"SCORE" NUMBER, 
	"RDATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 

   COMMENT ON COLUMN "USERS"."NUM" IS '��ȣ'
 
   COMMENT ON COLUMN "USERS"."SID" IS '������ȣ'
 
   COMMENT ON COLUMN "USERS"."F_NAME" IS '��'
 
   COMMENT ON COLUMN "USERS"."L_NAME" IS '�̸�'
 
   COMMENT ON COLUMN "USERS"."F_E_NAME" IS '���� ��'
 
   COMMENT ON COLUMN "USERS"."L_E_NAME" IS '���� �̸�'
 
   COMMENT ON COLUMN "USERS"."PASSWORD" IS '��й�ȣ'
 
   COMMENT ON COLUMN "USERS"."EMAIL" IS '�̸���'
 
   COMMENT ON COLUMN "USERS"."PHONE" IS '�ڵ���'
 
   COMMENT ON COLUMN "USERS"."NICKNAME" IS '�г���'
 
   COMMENT ON COLUMN "USERS"."ADDRESS" IS '�ּ�'
 
   COMMENT ON COLUMN "USERS"."SCORE" IS '�����̺�'
 
   COMMENT ON COLUMN "USERS"."RDATE" IS 'ȸ�� ��� ��¥'
--------------------------------------------------------
--  DDL for Table USERS_AUTH
--------------------------------------------------------

  CREATE TABLE "USERS_AUTH" 
   (	"SID" VARCHAR2(60), 
	"AUTH" VARCHAR2(30)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 

   COMMENT ON COLUMN "USERS_AUTH"."SID" IS 'ȸ�� ��Ϲ�ȣ
'
 
   COMMENT ON COLUMN "USERS_AUTH"."AUTH" IS '����/������ ����'
--------------------------------------------------------
--  DDL for Table TREAD_MSG
--------------------------------------------------------

  CREATE TABLE "TREAD_MSG" 
   (	"NUM" NUMBER, 
	"E_MSG" VARCHAR2(2000), 
	"SEND_TO" VARCHAR2(100), 
	"SEND_FROM" VARCHAR2(100), 
	"MDATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 

   COMMENT ON COLUMN "TREAD_MSG"."NUM" IS '��ȣ'
 
   COMMENT ON COLUMN "TREAD_MSG"."E_MSG" IS '�޽���'
 
   COMMENT ON COLUMN "TREAD_MSG"."SEND_TO" IS '���� ���'
 
   COMMENT ON COLUMN "TREAD_MSG"."SEND_FROM" IS '������ ���'
 
   COMMENT ON COLUMN "TREAD_MSG"."MDATE" IS '���� ��¥'
--------------------------------------------------------
--  DDL for Table SHUT_USER
--------------------------------------------------------

  CREATE TABLE "SHUT_USER" 
   (	"NUM" NUMBER, 
	"SID" VARCHAR2(20), 
	"SDATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 

   COMMENT ON COLUMN "SHUT_USER"."NUM" IS '��ȣ'
 
   COMMENT ON COLUMN "SHUT_USER"."SID" IS 'ȸ�� ���� ��ȣ'
 
   COMMENT ON COLUMN "SHUT_USER"."SDATE" IS '�Ű� ���� ���� �� ��¥'
--------------------------------------------------------
--  DDL for Table SEND_MAIL
--------------------------------------------------------

  CREATE TABLE "SEND_MAIL" 
   (	"NUM" NUMBER, 
	"BUYER" VARCHAR2(40), 
	"MSG" VARCHAR2(1000)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 

   COMMENT ON COLUMN "SEND_MAIL"."BUYER" IS '��ǰ������'
 
   COMMENT ON COLUMN "SEND_MAIL"."MSG" IS '��ǰ �߼� �޽���'
--------------------------------------------------------
--  DDL for Table RECEIVE_MAIL
--------------------------------------------------------

  CREATE TABLE "RECEIVE_MAIL" 
   (	"NUM" NUMBER, 
	"BUYER" VARCHAR2(40), 
	"MSG" VARCHAR2(1000)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 

   COMMENT ON COLUMN "RECEIVE_MAIL"."BUYER" IS '������/����'
 
   COMMENT ON COLUMN "RECEIVE_MAIL"."MSG" IS '���� �Ϸ� �޽���'
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "PRODUCT" 
   (	"NUM" NUMBER, 
	"SID" VARCHAR2(40), 
	"PSID" VARCHAR2(40), 
	"NAME" VARCHAR2(20), 
	"CATEGORY" VARCHAR2(40), 
	"PRICE" NUMBER, 
	"AMOUNT" NUMBER, 
	"PICTURE" VARCHAR2(100), 
	"PDATE" DATE, 
	"VIEWS" NUMBER DEFAULT 0, 
	"DIBS" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 

   COMMENT ON COLUMN "PRODUCT"."SID" IS 'ȸ�� ���� ��ȣ'
 
   COMMENT ON COLUMN "PRODUCT"."PSID" IS '��ǰ ���� ��ȣ'
 
   COMMENT ON COLUMN "PRODUCT"."NAME" IS '��ǰ �̸�'
 
   COMMENT ON COLUMN "PRODUCT"."CATEGORY" IS 'ī�װ�'
 
   COMMENT ON COLUMN "PRODUCT"."PRICE" IS '����'
 
   COMMENT ON COLUMN "PRODUCT"."AMOUNT" IS '��ǰ ����'
 
   COMMENT ON COLUMN "PRODUCT"."PICTURE" IS '��ǰ ����'
 
   COMMENT ON COLUMN "PRODUCT"."PDATE" IS '��ǰ ��� ��¥'
 
   COMMENT ON COLUMN "PRODUCT"."VIEWS" IS '��ǰ ��ȸ��'
 
   COMMENT ON COLUMN "PRODUCT"."DIBS" IS '���� ��ǰ ����'
--------------------------------------------------------
--  DDL for Table FEES
--------------------------------------------------------

  CREATE TABLE "FEES" 
   (	"NUM" NUMBER, 
	"PSID" VARCHAR2(40), 
	"TDATE" DATE, 
	"CATEGORY" VARCHAR2(40), 
	"PRICE" NUMBER, 
	"MANY" NUMBER, 
	"SUM_PRICE" NUMBER, 
	"SEPARATE" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 

   COMMENT ON COLUMN "FEES"."NUM" IS '��ȣ'
 
   COMMENT ON COLUMN "FEES"."PSID" IS '��ǰ ���� ��ȣ'
 
   COMMENT ON COLUMN "FEES"."TDATE" IS '��ǰ�� �Ǹ� �� ��¥'
 
   COMMENT ON COLUMN "FEES"."CATEGORY" IS 'ī�װ�'
 
   COMMENT ON COLUMN "FEES"."PRICE" IS '�Ǹ� ��ǰ ����'
 
   COMMENT ON COLUMN "FEES"."MANY" IS '�Ǹ� ��ǰ ����'
 
   COMMENT ON COLUMN "FEES"."SUM_PRICE" IS '�� �Ǹ� �ݾ�'
 
   COMMENT ON COLUMN "FEES"."SEPARATE" IS '���� : 0 / ������ : 1'
--------------------------------------------------------
--  DDL for Table P_STATUS
--------------------------------------------------------

  CREATE TABLE "P_STATUS" 
   (	"NUM" NUMBER, 
	"PSID" VARCHAR2(40), 
	"SDATE" DATE DEFAULT NULL, 
	"MANY" NUMBER DEFAULT 1, 
	"TIMES" NUMBER, 
	"EXPLAN" VARCHAR2(1000), 
	"ADDRESS" VARCHAR2(100), 
	"REPORT" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 

   COMMENT ON COLUMN "P_STATUS"."NUM" IS '��ȣ'
 
   COMMENT ON COLUMN "P_STATUS"."PSID" IS '��ǰ ���� ��ȣ'
 
   COMMENT ON COLUMN "P_STATUS"."SDATE" IS '���� ��¥ -��ǰ ���� ��¥'
 
   COMMENT ON COLUMN "P_STATUS"."MANY" IS '�⺻�� :1 / �⽺ �� ���ڰ���'
 
   COMMENT ON COLUMN "P_STATUS"."TIMES" IS '�⺻�� :1 / ��� Ƚ��'
 
   COMMENT ON COLUMN "P_STATUS"."EXPLAN" IS 't���� ����/�ڸ�Ʈ'
 
   COMMENT ON COLUMN "P_STATUS"."ADDRESS" IS '�ּ�'
 
   COMMENT ON COLUMN "P_STATUS"."REPORT" IS '�Ű� Ƚ��'
--------------------------------------------------------
--  DDL for Table CONTACT_USER
--------------------------------------------------------

  CREATE TABLE "CONTACT_USER" 
   (	"NUM" NUMBER, 
	"MESSAGE" VARCHAR2(1000), 
	"SEND_TO" VARCHAR2(100), 
	"SEND_FROM" VARCHAR2(100), 
	"SDATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 

   COMMENT ON COLUMN "CONTACT_USER"."MESSAGE" IS '�޽���'
 
   COMMENT ON COLUMN "CONTACT_USER"."SEND_TO" IS '����'
 
   COMMENT ON COLUMN "CONTACT_USER"."SEND_FROM" IS '������'
 
   COMMENT ON COLUMN "CONTACT_USER"."SDATE" IS '���� ��¥'
--------------------------------------------------------
--  DDL for Table CONTACT_ADMIN
--------------------------------------------------------

  CREATE TABLE "CONTACT_ADMIN" 
   (	"NUM" NUMBER, 
	"MESSAGE" VARCHAR2(1000), 
	"SEND_TO" VARCHAR2(100), 
	"SEND_FROM" VARCHAR2(100), 
	"SDATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 

   COMMENT ON COLUMN "CONTACT_ADMIN"."MESSAGE" IS '�޽���
'
 
   COMMENT ON COLUMN "CONTACT_ADMIN"."SEND_FROM" IS '������'
 
   COMMENT ON COLUMN "CONTACT_ADMIN"."SDATE" IS '���� ��¥'
--------------------------------------------------------
--  DDL for Table CHAT
--------------------------------------------------------

  CREATE TABLE "CHAT" 
   (	"NUM" NUMBER, 
	"TEXT" VARCHAR2(3000), 
	"NICKNAME" VARCHAR2(100)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 

   COMMENT ON COLUMN "CHAT"."TEXT" IS 'ä�� �޽���'
 
   COMMENT ON COLUMN "CHAT"."NICKNAME" IS '�г���'
REM INSERTING into USERS
SET DEFINE OFF;
REM INSERTING into USERS_AUTH
SET DEFINE OFF;
REM INSERTING into TREAD_MSG
SET DEFINE OFF;
REM INSERTING into SHUT_USER
SET DEFINE OFF;
REM INSERTING into SEND_MAIL
SET DEFINE OFF;
REM INSERTING into RECEIVE_MAIL
SET DEFINE OFF;
REM INSERTING into PRODUCT
SET DEFINE OFF;
REM INSERTING into FEES
SET DEFINE OFF;
REM INSERTING into P_STATUS
SET DEFINE OFF;
REM INSERTING into CONTACT_USER
SET DEFINE OFF;
REM INSERTING into CONTACT_ADMIN
SET DEFINE OFF;
REM INSERTING into CHAT
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index USERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USERS_PK" ON "USERS" ("SID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"
--------------------------------------------------------
--  DDL for Index USER_AUTH_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USER_AUTH_PK" ON "USERS_AUTH" ("SID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"
--------------------------------------------------------
--  DDL for Index TREAD_MSG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TREAD_MSG_PK" ON "TREAD_MSG" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"
--------------------------------------------------------
--  DDL for Index SHUT_USER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHUT_USER_PK" ON "SHUT_USER" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"
--------------------------------------------------------
--  DDL for Index SEND_MAIL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SEND_MAIL_PK" ON "SEND_MAIL" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"
--------------------------------------------------------
--  DDL for Index RECEIVE_MAIL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RECEIVE_MAIL_PK" ON "RECEIVE_MAIL" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"
--------------------------------------------------------
--  DDL for Index PRODUCT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRODUCT_PK" ON "PRODUCT" ("NUM", "PSID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"
--------------------------------------------------------
--  DDL for Index FEES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FEES_PK" ON "FEES" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"
--------------------------------------------------------
--  DDL for Index P_STATUS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "P_STATUS_PK" ON "P_STATUS" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"
--------------------------------------------------------
--  DDL for Index CONTACT_USER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CONTACT_USER_PK" ON "CONTACT_USER" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"
--------------------------------------------------------
--  DDL for Index CONTACT_ADMIN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CONTACT_ADMIN_PK" ON "CONTACT_ADMIN" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"
--------------------------------------------------------
--  DDL for Index CHAT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CHAT_PK" ON "CHAT" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "USERS" MODIFY ("NUM" NOT NULL ENABLE)
 
  ALTER TABLE "USERS" MODIFY ("SID" NOT NULL ENABLE)
 
  ALTER TABLE "USERS" MODIFY ("F_NAME" NOT NULL ENABLE)
 
  ALTER TABLE "USERS" MODIFY ("L_NAME" NOT NULL ENABLE)
 
  ALTER TABLE "USERS" MODIFY ("F_E_NAME" NOT NULL ENABLE)
 
  ALTER TABLE "USERS" MODIFY ("L_E_NAME" NOT NULL ENABLE)
 
  ALTER TABLE "USERS" MODIFY ("PASSWORD" NOT NULL ENABLE)
 
  ALTER TABLE "USERS" MODIFY ("EMAIL" NOT NULL ENABLE)
 
  ALTER TABLE "USERS" MODIFY ("PHONE" NOT NULL ENABLE)
 
  ALTER TABLE "USERS" MODIFY ("NICKNAME" NOT NULL ENABLE)
 
  ALTER TABLE "USERS" MODIFY ("ADDRESS" NOT NULL ENABLE)
 
  ALTER TABLE "USERS" MODIFY ("RDATE" NOT NULL ENABLE)
 
  ALTER TABLE "USERS" ADD CONSTRAINT "USERS_PK" PRIMARY KEY ("SID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE
--------------------------------------------------------
--  Constraints for Table USERS_AUTH
--------------------------------------------------------

  ALTER TABLE "USERS_AUTH" MODIFY ("SID" NOT NULL ENABLE)
 
  ALTER TABLE "USERS_AUTH" MODIFY ("AUTH" NOT NULL ENABLE)
 
  ALTER TABLE "USERS_AUTH" ADD CONSTRAINT "USER_AUTH_PK" PRIMARY KEY ("SID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE
--------------------------------------------------------
--  Constraints for Table TREAD_MSG
--------------------------------------------------------

  ALTER TABLE "TREAD_MSG" MODIFY ("NUM" NOT NULL ENABLE)
 
  ALTER TABLE "TREAD_MSG" MODIFY ("E_MSG" NOT NULL ENABLE)
 
  ALTER TABLE "TREAD_MSG" MODIFY ("SEND_TO" NOT NULL ENABLE)
 
  ALTER TABLE "TREAD_MSG" MODIFY ("SEND_FROM" NOT NULL ENABLE)
 
  ALTER TABLE "TREAD_MSG" MODIFY ("MDATE" NOT NULL ENABLE)
 
  ALTER TABLE "TREAD_MSG" ADD CONSTRAINT "TREAD_MSG_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE
--------------------------------------------------------
--  Constraints for Table SHUT_USER
--------------------------------------------------------

  ALTER TABLE "SHUT_USER" ADD CONSTRAINT "SHUT_USER_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE
 
  ALTER TABLE "SHUT_USER" MODIFY ("NUM" NOT NULL ENABLE)
 
  ALTER TABLE "SHUT_USER" MODIFY ("SID" NOT NULL ENABLE)
 
  ALTER TABLE "SHUT_USER" MODIFY ("SDATE" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table SEND_MAIL
--------------------------------------------------------

  ALTER TABLE "SEND_MAIL" ADD CONSTRAINT "SEND_MAIL_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE
 
  ALTER TABLE "SEND_MAIL" MODIFY ("NUM" NOT NULL ENABLE)
 
  ALTER TABLE "SEND_MAIL" MODIFY ("BUYER" NOT NULL ENABLE)
 
  ALTER TABLE "SEND_MAIL" MODIFY ("MSG" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table RECEIVE_MAIL
--------------------------------------------------------

  ALTER TABLE "RECEIVE_MAIL" ADD CONSTRAINT "RECEIVE_MAIL_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE
 
  ALTER TABLE "RECEIVE_MAIL" MODIFY ("NUM" NOT NULL ENABLE)
 
  ALTER TABLE "RECEIVE_MAIL" MODIFY ("BUYER" NOT NULL ENABLE)
 
  ALTER TABLE "RECEIVE_MAIL" MODIFY ("MSG" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "PRODUCT" ADD CONSTRAINT "PRODUCT_PK" PRIMARY KEY ("NUM", "PSID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE
 
  ALTER TABLE "PRODUCT" MODIFY ("NUM" NOT NULL ENABLE)
 
  ALTER TABLE "PRODUCT" MODIFY ("SID" NOT NULL ENABLE)
 
  ALTER TABLE "PRODUCT" MODIFY ("PSID" NOT NULL ENABLE)
 
  ALTER TABLE "PRODUCT" MODIFY ("NAME" NOT NULL ENABLE)
 
  ALTER TABLE "PRODUCT" MODIFY ("CATEGORY" NOT NULL ENABLE)
 
  ALTER TABLE "PRODUCT" MODIFY ("PRICE" NOT NULL ENABLE)
 
  ALTER TABLE "PRODUCT" MODIFY ("AMOUNT" NOT NULL ENABLE)
 
  ALTER TABLE "PRODUCT" MODIFY ("PICTURE" NOT NULL ENABLE)
 
  ALTER TABLE "PRODUCT" MODIFY ("PDATE" NOT NULL ENABLE)
 
  ALTER TABLE "PRODUCT" MODIFY ("VIEWS" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table FEES
--------------------------------------------------------

  ALTER TABLE "FEES" ADD CONSTRAINT "FEES_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE
 
  ALTER TABLE "FEES" MODIFY ("NUM" NOT NULL ENABLE)
 
  ALTER TABLE "FEES" MODIFY ("PSID" NOT NULL ENABLE)
 
  ALTER TABLE "FEES" MODIFY ("TDATE" NOT NULL ENABLE)
 
  ALTER TABLE "FEES" MODIFY ("CATEGORY" NOT NULL ENABLE)
 
  ALTER TABLE "FEES" MODIFY ("PRICE" NOT NULL ENABLE)
 
  ALTER TABLE "FEES" MODIFY ("MANY" NOT NULL ENABLE)
 
  ALTER TABLE "FEES" MODIFY ("SUM_PRICE" NOT NULL ENABLE)
 
  ALTER TABLE "FEES" MODIFY ("SEPARATE" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table P_STATUS
--------------------------------------------------------

  ALTER TABLE "P_STATUS" ADD CONSTRAINT "P_STATUS_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE
 
  ALTER TABLE "P_STATUS" MODIFY ("NUM" NOT NULL ENABLE)
 
  ALTER TABLE "P_STATUS" MODIFY ("PSID" NOT NULL ENABLE)
 
  ALTER TABLE "P_STATUS" MODIFY ("SDATE" NOT NULL ENABLE)
 
  ALTER TABLE "P_STATUS" MODIFY ("MANY" NOT NULL ENABLE)
 
  ALTER TABLE "P_STATUS" MODIFY ("TIMES" NOT NULL ENABLE)
 
  ALTER TABLE "P_STATUS" MODIFY ("EXPLAN" NOT NULL ENABLE)
 
  ALTER TABLE "P_STATUS" MODIFY ("ADDRESS" NOT NULL ENABLE)
 
  ALTER TABLE "P_STATUS" MODIFY ("REPORT" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table CONTACT_USER
--------------------------------------------------------

  ALTER TABLE "CONTACT_USER" ADD CONSTRAINT "CONTACT_USER_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE
 
  ALTER TABLE "CONTACT_USER" MODIFY ("NUM" NOT NULL ENABLE)
 
  ALTER TABLE "CONTACT_USER" MODIFY ("MESSAGE" NOT NULL ENABLE)
 
  ALTER TABLE "CONTACT_USER" MODIFY ("SEND_TO" NOT NULL ENABLE)
 
  ALTER TABLE "CONTACT_USER" MODIFY ("SEND_FROM" NOT NULL ENABLE)
 
  ALTER TABLE "CONTACT_USER" MODIFY ("SDATE" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table CONTACT_ADMIN
--------------------------------------------------------

  ALTER TABLE "CONTACT_ADMIN" ADD CONSTRAINT "CONTACT_ADMIN_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE
 
  ALTER TABLE "CONTACT_ADMIN" MODIFY ("NUM" NOT NULL ENABLE)
 
  ALTER TABLE "CONTACT_ADMIN" MODIFY ("MESSAGE" NOT NULL ENABLE)
 
  ALTER TABLE "CONTACT_ADMIN" MODIFY ("SEND_TO" NOT NULL ENABLE)
 
  ALTER TABLE "CONTACT_ADMIN" MODIFY ("SEND_FROM" NOT NULL ENABLE)
 
  ALTER TABLE "CONTACT_ADMIN" MODIFY ("SDATE" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table CHAT
--------------------------------------------------------

  ALTER TABLE "CHAT" ADD CONSTRAINT "CHAT_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE
 
  ALTER TABLE "CHAT" MODIFY ("NUM" NOT NULL ENABLE)
 
  ALTER TABLE "CHAT" MODIFY ("TEXT" NOT NULL ENABLE)
 
  ALTER TABLE "CHAT" MODIFY ("NICKNAME" NOT NULL ENABLE)
--------------------------------------------------------
--  Ref Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "PRODUCT" ADD CONSTRAINT "PRODUCT_FK1" FOREIGN KEY ("SID")
	  REFERENCES "USERS" ("SID") ENABLE
