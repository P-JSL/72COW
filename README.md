# 72COW
 
## 관리자 페이지 담당
 - 신기연 
 - 주장익
 
 페이지
 ----
 1 관리자 메인 페이지  
 2 관리자 매상 확인 페이지  
 3 일람페이지  
   > - 유저 정보 일람  
   > - 출품자 정보 일람  
   > - 모든 상품 일람 
      
 4 문의대응 페이지
   
 ----
 
#관리자쪽 변경점
---
```

 <!--오라클 DB , KANDA_TEST 계정-->
1) 함수 생성

create or replace function search(userid varchar2)
return varchar2
is
 inorout string(60) := '';
 one number;
 two number;
begin
    select count(cu.num) into one from contact_user cu;
    select count(ca.num) into two from contact_admin ca;
    if one > two then inorout := '有';
    else inorout:='無';
    end if;
    return inorout;
end;


2) contact_admin 테이블에  user_num 추가 --- contact_user에서 답변 한 내용 (contact_admin)에서 구분하기 위해서.


3) isfu 함수 생성

create or replace function isfu(
uid varchar2
)
return ischar
is
sendto varchar(100) ;
sendfrom varchar(100);
msg varchar(2000);
begin
 select cu.send_to into sendto from contact_user cu, contact_admin ca where cu.num != ca.user_num and cu.send_to = uid;
select cu.send_from into sendfrom from contact_user cu, contact_admin ca where cu.num != ca.user_num and cu.send_to = uid;
select cu.message into msg from contact_user cu, contact_admin ca where cu.num != ca.user_num and cu.send_to = uid;

return ischar(sendto,sendfrom,msg);

end;

3-1) 사용자 정의 타입 생성
create or replace type ischar is object
(
sendto VARCHAR2(100),
sendfrom VARCHAR2(100),
msg varchar2(2000)
);



<!--회원 등록시 관련  idchk추가-->

create or replace function idchk(uid varchar2)
return number
is
 odd varchar2 (100);
begin

select userid into odd from users where userid = uid;
 if length(odd) >0 then 
  return 1;
  else return 0;
  end if;
DBMS_output.put_line(odd);
end;
```

-----
## 유저쪽 변경점
 
 - DB 
 
 ```
 --------------------------------------------------------
--  파일이 생성됨 - 금요일-7월-24-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "NOTICE" 
   (	"NUM" NUMBER DEFAULT 0, 
	"TITLE" VARCHAR2(200), 
	"CONTENT" CLOB, 
	"REGDATE" DATE, 
	"WRITER" VARCHAR2(200)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("CONTENT") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
REM INSERTING into NOTICE
SET DEFINE OFF;
Insert into NOTICE (NUM,TITLE,REGDATE,WRITER) values (6,'お知らせです。',to_date('20/07/21','RR/MM/DD'),'관리자');
Insert into NOTICE (NUM,TITLE,REGDATE,WRITER) values (26,'お知らせです。',to_date('20/07/23','RR/MM/DD'),'관리자');
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "NOTICE" MODIFY ("NUM" NOT NULL ENABLE);
 
  ALTER TABLE "NOTICE" MODIFY ("TITLE" NOT NULL ENABLE);
 
  ALTER TABLE "NOTICE" MODIFY ("CONTENT" NOT NULL ENABLE);

 ```
 ```
 --------------------------------------------------------
--  DDL for Table PCOMMENT
--------------------------------------------------------

  CREATE TABLE "PCOMMENT" 
   (	"CNO" NUMBER, 
	"NUM" NUMBER, 
	"CONTENT" VARCHAR2(2000), 
	"USERID" VARCHAR2(20), 
	"REG_DATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Table SEND_ADDR
--------------------------------------------------------

  CREATE TABLE "SEND_ADDR" 
   (	"NUM" NUMBER, 
	"SNAME" VARCHAR2(100), 
	"PHONE" VARCHAR2(100), 
	"ADDR" VARCHAR2(2000)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS";
REM INSERTING into PCOMMENT
SET DEFINE OFF;
Insert into PCOMMENT (CNO,NUM,CONTENT,USERID,REG_DATE) values (3,1,'1','althsuwpfl',to_date('20/07/24','RR/MM/DD'));
REM INSERTING into SEND_ADDR
SET DEFINE OFF;
Insert into SEND_ADDR (NUM,SNAME,PHONE,ADDR) values (45,'신기연','01012343431','静岡県静岡市駿河区 南町１８−１サウスポット静岡６階');
--------------------------------------------------------
--  DDL for Index PCOMMENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PCOMMENT_PK" ON "PCOMMENT" ("CNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS";
--------------------------------------------------------
--  Constraints for Table PCOMMENT
--------------------------------------------------------

  ALTER TABLE "PCOMMENT" ADD CONSTRAINT "PCOMMENT_PK" PRIMARY KEY ("CNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "PCOMMENT" MODIFY ("CNO" NOT NULL ENABLE);
 
  ALTER TABLE "PCOMMENT" MODIFY ("NUM" NOT NULL ENABLE);
 
  ALTER TABLE "PCOMMENT" MODIFY ("CONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "PCOMMENT" MODIFY ("USERID" NOT NULL ENABLE);
 
  ALTER TABLE "PCOMMENT" MODIFY ("REG_DATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SEND_ADDR
--------------------------------------------------------

  ALTER TABLE "SEND_ADDR" MODIFY ("SNAME" NOT NULL ENABLE);
 
  ALTER TABLE "SEND_ADDR" MODIFY ("PHONE" NOT NULL ENABLE);
 
  ALTER TABLE "SEND_ADDR" MODIFY ("ADDR" NOT NULL ENABLE);
  ALTER TABLE "SEND_ADDR" MODIFY ("NUM" NOT NULL ENABLE);

 ```
 
 
 ---
 
 ###아래는 데이터 / 그냥 복붙하면 됨
 ---
 ```
 --USERS 테이블
   1) POINT 속성 추가

-- TREAD_MSG 테이블 제거

========== 데이터 =============   ▼▼▼▼ 복붙 실행하면 됨 ▼▼▼ =================
REM INSERTING into CONTACT_ADMIN
SET DEFINE OFF;
Insert into CONTACT_ADMIN (NUM,MESSAGE,SEND_TO,SEND_FROM,SDATE,USER_NUM) values (4,'3232','管理者','aasd',to_date('20/07/22','RR/MM/DD'),null);
Insert into CONTACT_ADMIN (NUM,MESSAGE,SEND_TO,SEND_FROM,SDATE,USER_NUM) values (2,'はい。その件に関してはすぐ処理いたしますので・・・','管理者','aasd',to_date('20/07/21','RR/MM/DD'),'1');
REM INSERTING into CONTACT_USER
SET DEFINE OFF;
Insert into CONTACT_USER (NUM,MESSAGE,SEND_TO,SEND_FROM,SDATE) values (1,'商品に関してですが。','aasd','管理者',to_date('20/07/21','RR/MM/DD'));
Insert into CONTACT_USER (NUM,MESSAGE,SEND_TO,SEND_FROM,SDATE) values (2,'d213','aasd','管理者',to_date('20/07/21','RR/MM/DD'));
REM INSERTING into CHAT
SET DEFINE OFF;
REM INSERTING into FEES
SET DEFINE OFF;
Insert into FEES (NUM,TDATE,CATEGORY,PRICE,MANY,SUM_PRICE,SEPARATE,USERID,PICTURE) values (45,'20/07/25','living',11320,1,11320,0,'althsuwpfl','/upload/dd61821b-9b84-4db8-8b3c-b3fc3942ff5a_coffee_bean_4.jpg');
Insert into FEES (NUM,TDATE,CATEGORY,PRICE,MANY,SUM_PRICE,SEPARATE,USERID,PICTURE) values (1,'2020-07-20','1',11111,2,22222,0,'aasd',null);
Insert into FEES (NUM,TDATE,CATEGORY,PRICE,MANY,SUM_PRICE,SEPARATE,USERID,PICTURE) values (2,'2020-07-11','2',2211,2,4422,0,'aasd',null);
Insert into FEES (NUM,TDATE,CATEGORY,PRICE,MANY,SUM_PRICE,SEPARATE,USERID,PICTURE) values (3,'2020-06-08','3',4124,3,1272,0,'adsa',null);
Insert into FEES (NUM,TDATE,CATEGORY,PRICE,MANY,SUM_PRICE,SEPARATE,USERID,PICTURE) values (4,'2020-07-22','4',2133,5,10165,1,'adss',null);
REM INSERTING into NOTICE
SET DEFINE OFF;
Insert into NOTICE (NUM,TITLE,REGDATE,WRITER) values (6,'お知らせです。',to_date('20/07/21','RR/MM/DD'),'관리자');
Insert into NOTICE (NUM,TITLE,REGDATE,WRITER) values (26,'お知らせです。',to_date('20/07/23','RR/MM/DD'),'관리자');
REM INSERTING into P_STATUS
SET DEFINE OFF;
REM INSERTING into PCOMMENT
SET DEFINE OFF;
Insert into PCOMMENT (CNO,NUM,CONTENT,USERID,REG_DATE) values (3,1,'1','althsuwpfl',to_date('20/07/24','RR/MM/DD'));
REM INSERTING into PRODUCT
SET DEFINE OFF;
Insert into PRODUCT (NUM,USERID,TITLE,NAME,CATEGORY,PRICE,AMOUNT,PICTURE,PDATE,VIEWS,STATUS,ADDR,CONTENTS,PSID) values (43,'althsuwpfl','테스트','커피','food',10000,0,'39d87050-38b4-4eb9-a73b-444eacce3a4b_Hawaiian kona.jpg*09d22d2e-8075-4ccc-92c2-60d51530d881_colombian bean.jpg*1c4f171c-de0f-4aa7-99fc-53407b414f17_Jamaican Blue.jpg*',to_date('20/07/24','RR/MM/DD'),0,'新品・未使用','神奈川県','test',null);
Insert into PRODUCT (NUM,USERID,TITLE,NAME,CATEGORY,PRICE,AMOUNT,PICTURE,PDATE,VIEWS,STATUS,ADDR,CONTENTS,PSID) values (45,'althsuwpfl','테스트 닉네임','커피','living',10000,0,'*9ada61c4-f4f0-4466-ae69-a45d810c974b_colombian bean.jpg*e97f06a3-855c-4be2-a7eb-1f81fa891d87_Hawaiian kona.jpg*a9b53a61-7dee-4780-b131-8eb9d41a95fb_JAVA_Bean.jpg*dd61821b-9b84-4db8-8b3c-b3fc3942ff5a_coffee_bean_4.jpg*',to_date('20/07/24','RR/MM/DD'),0,'新品・未使用','山梨県','test',null);
REM INSERTING into RECEIVE_MAIL
SET DEFINE OFF;
REM INSERTING into SEND_ADDR
SET DEFINE OFF;
Insert into SEND_ADDR (NUM,SNAME,PHONE,ADDR) values (45,'신기연','01012343431','静岡県静岡市駿河区 南町１８−１サウスポット静岡６階');
REM INSERTING into SEND_MAIL
SET DEFINE OFF;
REM INSERTING into SHUT_USER
SET DEFINE OFF;
REM INSERTING into TREAD_MSG
SET DEFINE OFF;
REM INSERTING into USERS
SET DEFINE OFF;
Insert into USERS (NUM,USERID,F_NAME,L_NAME,F_E_NAME,L_E_NAME,PASSWORD,EMAIL,PHONE,ADDRESS,SCORE,RDATE,POINT) values (12,'althsuwpfl','다나카','유지','danaka','yuuji','$2a$10$92A5lj4GpR3JDaId3cDXjesYb3oXeQe//M3jK93.Cg7MAwV4OGdzK','althsuwpfl@gmail.com','01012343431','神奈川県 川崎市高津区 下作延５−３６−１',null,to_date('20/07/23','RR/MM/DD'),null);
Insert into USERS (NUM,USERID,F_NAME,L_NAME,F_E_NAME,L_E_NAME,PASSWORD,EMAIL,PHONE,ADDRESS,SCORE,RDATE,POINT) values (5,'adsa','山下','直樹','yamasita','naoki','dqw1qwawqqwd','asdsad@naver.com','0197230144',null,null,to_date('20/07/21','RR/MM/DD'),null);
Insert into USERS (NUM,USERID,F_NAME,L_NAME,F_E_NAME,L_E_NAME,PASSWORD,EMAIL,PHONE,ADDRESS,SCORE,RDATE,POINT) values (6,'adss','小川','伊藤','ogawa','ito','asdsafafasf','asdasd@naver.com','1237217041',null,null,to_date('20/07/22','RR/MM/DD'),null);
Insert into USERS (NUM,USERID,F_NAME,L_NAME,F_E_NAME,L_E_NAME,PASSWORD,EMAIL,PHONE,ADDRESS,SCORE,RDATE,POINT) values (3,'althsuwpfls','田中','雄二','danaka','yuuji','$2a$10$LpQkG3C6M5pOel.7/S.h7em58hAn58W1PD.ttAqPz1uTxDVykSiFi','althsuwpfl@gmail.com','01012343431',null,null,to_date('20/07/20','RR/MM/DD'),null);
Insert into USERS (NUM,USERID,F_NAME,L_NAME,F_E_NAME,L_E_NAME,PASSWORD,EMAIL,PHONE,ADDRESS,SCORE,RDATE,POINT) values (4,'aasd','中村','一郎','nakamura','ichiro','d12qwaswdwqwaswdqwad','aasd@naver.com','0100203041',null,null,to_date('20/07/20','RR/MM/DD'),null);
REM INSERTING into USERS_AUTH
SET DEFINE OFF;
Insert into USERS_AUTH (USERID,AUTH) values ('althsuwpfl','USER');
Insert into USERS_AUTH (USERID,AUTH) values ('althsuwpfls','ADMIN');

===================================================================================
                    키 / 외래키 / 등 추가 제약조건
==================  =========================================================
--------------------------------------------------------
--  DDL for Index CONTACT_ADMIN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CONTACT_ADMIN_PK" ON "CONTACT_ADMIN" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index CONTACT_USER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CONTACT_USER_PK" ON "CONTACT_USER" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index CHAT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CHAT_PK" ON "CHAT" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index P_STATUS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "P_STATUS_PK" ON "P_STATUS" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index PCOMMENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PCOMMENT_PK" ON "PCOMMENT" ("CNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index RECEIVE_MAIL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RECEIVE_MAIL_PK" ON "RECEIVE_MAIL" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS";
-------------------------------------------------------
--  DDL for Index SEND_MAIL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SEND_MAIL_PK" ON "SEND_MAIL" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index SHUT_USER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHUT_USER_PK" ON "SHUT_USER" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index TREAD_MSG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TREAD_MSG_PK" ON "TREAD_MSG" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index USERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USERS_PK" ON "USERS" ("USERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index USER_AUTH_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USER_AUTH_PK" ON "USERS_AUTH" ("USERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS";
--------------------------------------------------------
--  Constraints for Table CONTACT_ADMIN
--------------------------------------------------------

  ALTER TABLE "CONTACT_ADMIN" ADD CONSTRAINT "CONTACT_ADMIN_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "CONTACT_ADMIN" MODIFY ("NUM" NOT NULL ENABLE);
 
  ALTER TABLE "CONTACT_ADMIN" MODIFY ("MESSAGE" NOT NULL ENABLE);
 
  ALTER TABLE "CONTACT_ADMIN" MODIFY ("SEND_TO" NOT NULL ENABLE);
 
  ALTER TABLE "CONTACT_ADMIN" MODIFY ("SEND_FROM" NOT NULL ENABLE);
 
  ALTER TABLE "CONTACT_ADMIN" MODIFY ("SDATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CONTACT_USER
--------------------------------------------------------

  ALTER TABLE "CONTACT_USER" ADD CONSTRAINT "CONTACT_USER_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "CONTACT_USER" MODIFY ("NUM" NOT NULL ENABLE);
 
  ALTER TABLE "CONTACT_USER" MODIFY ("MESSAGE" NOT NULL ENABLE);
 
  ALTER TABLE "CONTACT_USER" MODIFY ("SEND_TO" NOT NULL ENABLE);
 
  ALTER TABLE "CONTACT_USER" MODIFY ("SEND_FROM" NOT NULL ENABLE);
 
  ALTER TABLE "CONTACT_USER" MODIFY ("SDATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CHAT
--------------------------------------------------------

  ALTER TABLE "CHAT" ADD CONSTRAINT "CHAT_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "CHAT" MODIFY ("NUM" NOT NULL ENABLE);
 
  ALTER TABLE "CHAT" MODIFY ("TEXT" NOT NULL ENABLE);
 
  ALTER TABLE "CHAT" MODIFY ("NICKNAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FEES
--------------------------------------------------------

  ALTER TABLE "FEES" MODIFY ("NUM" NOT NULL ENABLE);
 
  ALTER TABLE "FEES" MODIFY ("TDATE" NOT NULL ENABLE);
 
  ALTER TABLE "FEES" MODIFY ("CATEGORY" NOT NULL ENABLE);
 
  ALTER TABLE "FEES" MODIFY ("PRICE" NOT NULL ENABLE);
 
  ALTER TABLE "FEES" MODIFY ("MANY" NOT NULL ENABLE);
 
  ALTER TABLE "FEES" MODIFY ("SUM_PRICE" NOT NULL ENABLE);
 
  ALTER TABLE "FEES" MODIFY ("SEPARATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "NOTICE" MODIFY ("NUM" NOT NULL ENABLE);
 
  ALTER TABLE "NOTICE" MODIFY ("TITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table P_STATUS
--------------------------------------------------------

  ALTER TABLE "P_STATUS" ADD CONSTRAINT "P_STATUS_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "P_STATUS" MODIFY ("NUM" NOT NULL ENABLE);
 
  ALTER TABLE "P_STATUS" MODIFY ("PSID" NOT NULL ENABLE);
 
  ALTER TABLE "P_STATUS" MODIFY ("SDATE" NOT NULL ENABLE);
 
  ALTER TABLE "P_STATUS" MODIFY ("MANY" NOT NULL ENABLE);
 
  ALTER TABLE "P_STATUS" MODIFY ("TIMES" NOT NULL ENABLE);
 
  ALTER TABLE "P_STATUS" MODIFY ("EXPLAN" NOT NULL ENABLE);
 
  ALTER TABLE "P_STATUS" MODIFY ("ADDRESS" NOT NULL ENABLE);
 
  ALTER TABLE "P_STATUS" MODIFY ("REPORT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PCOMMENT
--------------------------------------------------------

  ALTER TABLE "PCOMMENT" ADD CONSTRAINT "PCOMMENT_PK" PRIMARY KEY ("CNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "PCOMMENT" MODIFY ("CNO" NOT NULL ENABLE);
 
  ALTER TABLE "PCOMMENT" MODIFY ("NUM" NOT NULL ENABLE);
 
  ALTER TABLE "PCOMMENT" MODIFY ("CONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "PCOMMENT" MODIFY ("USERID" NOT NULL ENABLE);
 
  ALTER TABLE "PCOMMENT" MODIFY ("REG_DATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "PRODUCT" MODIFY ("NUM" NOT NULL ENABLE);
 
  ALTER TABLE "PRODUCT" MODIFY ("USERID" NOT NULL ENABLE);
 
  ALTER TABLE "PRODUCT" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "PRODUCT" MODIFY ("CATEGORY" NOT NULL ENABLE);
 
  ALTER TABLE "PRODUCT" MODIFY ("PRICE" NOT NULL ENABLE);
 
  ALTER TABLE "PRODUCT" MODIFY ("AMOUNT" NOT NULL ENABLE);
 
  ALTER TABLE "PRODUCT" MODIFY ("PICTURE" NOT NULL ENABLE);
 
  ALTER TABLE "PRODUCT" MODIFY ("PDATE" NOT NULL ENABLE);
 
  ALTER TABLE "PRODUCT" MODIFY ("VIEWS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RECEIVE_MAIL
--------------------------------------------------------

  ALTER TABLE "RECEIVE_MAIL" ADD CONSTRAINT "RECEIVE_MAIL_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "RECEIVE_MAIL" MODIFY ("NUM" NOT NULL ENABLE);
 
  ALTER TABLE "RECEIVE_MAIL" MODIFY ("BUYER" NOT NULL ENABLE);
 
  ALTER TABLE "RECEIVE_MAIL" MODIFY ("MSG" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SEND_ADDR
--------------------------------------------------------

  ALTER TABLE "SEND_ADDR" MODIFY ("SNAME" NOT NULL ENABLE)
 
  ALTER TABLE "SEND_ADDR" MODIFY ("PHONE" NOT NULL ENABLE)
 
  ALTER TABLE "SEND_ADDR" MODIFY ("ADDR" NOT NULL ENABLE)
 
  ALTER TABLE "SEND_ADDR" MODIFY ("NUM" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table SEND_MAIL
--------------------------------------------------------

  ALTER TABLE "SEND_MAIL" ADD CONSTRAINT "SEND_MAIL_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "SEND_MAIL" MODIFY ("NUM" NOT NULL ENABLE);
 
  ALTER TABLE "SEND_MAIL" MODIFY ("BUYER" NOT NULL ENABLE);
 
  ALTER TABLE "SEND_MAIL" MODIFY ("MSG" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SHUT_USER
--------------------------------------------------------

  ALTER TABLE "SHUT_USER" ADD CONSTRAINT "SHUT_USER_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "SHUT_USER" MODIFY ("NUM" NOT NULL ENABLE);
 
  ALTER TABLE "SHUT_USER" MODIFY ("USERID" NOT NULL ENABLE);
 
  ALTER TABLE "SHUT_USER" MODIFY ("SDATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TREAD_MSG
--------------------------------------------------------

  ALTER TABLE "TREAD_MSG" MODIFY ("NUM" NOT NULL ENABLE);
 
  ALTER TABLE "TREAD_MSG" MODIFY ("E_MSG" NOT NULL ENABLE);
 
  ALTER TABLE "TREAD_MSG" MODIFY ("SEND_TO" NOT NULL ENABLE);
 
  ALTER TABLE "TREAD_MSG" MODIFY ("SEND_FROM" NOT NULL ENABLE);
 
  ALTER TABLE "TREAD_MSG" MODIFY ("MDATE" NOT NULL ENABLE);
 
  ALTER TABLE "TREAD_MSG" ADD CONSTRAINT "TREAD_MSG_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "USERS" MODIFY ("NUM" NOT NULL ENABLE);
 
  ALTER TABLE "USERS" MODIFY ("USERID" NOT NULL ENABLE);
 
  ALTER TABLE "USERS" MODIFY ("F_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "USERS" MODIFY ("L_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "USERS" MODIFY ("F_E_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "USERS" MODIFY ("L_E_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "USERS" MODIFY ("PASSWORD" NOT NULL ENABLE);
 
  ALTER TABLE "USERS" MODIFY ("EMAIL" NOT NULL ENABLE);
 
  ALTER TABLE "USERS" MODIFY ("PHONE" NOT NULL ENABLE);
 
  ALTER TABLE "USERS" MODIFY ("RDATE" NOT NULL ENABLE);
 
  ALTER TABLE "USERS" ADD CONSTRAINT "USERS_PK" PRIMARY KEY ("USERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USERS_AUTH
--------------------------------------------------------

  ALTER TABLE "USERS_AUTH" MODIFY ("USERID" NOT NULL ENABLE);
 
  ALTER TABLE "USERS_AUTH" MODIFY ("AUTH" NOT NULL ENABLE);
 
  ALTER TABLE "USERS_AUTH" ADD CONSTRAINT "USER_AUTH_PK" PRIMARY KEY ("USERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "PRODUCT" ADD CONSTRAINT "PRODUCT_FK1" FOREIGN KEY ("USERID")
	  REFERENCES "USERS" ("USERID") ON DELETE CASCADE ENABLE;
 ```
 
