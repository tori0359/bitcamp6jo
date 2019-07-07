
DROP TABLE LearningMaterials CASCADE CONSTRAINTS PURGE;



DROP TABLE notice CASCADE CONSTRAINTS PURGE;



DROP TABLE attend CASCADE CONSTRAINTS PURGE;



DROP TABLE score CASCADE CONSTRAINTS PURGE;



DROP TABLE assign CASCADE CONSTRAINTS PURGE;



DROP TABLE qna CASCADE CONSTRAINTS PURGE;



DROP TABLE users CASCADE CONSTRAINTS PURGE;



DROP TABLE subject CASCADE CONSTRAINTS PURGE;



DROP TABLE admins CASCADE CONSTRAINTS PURGE;



DROP TABLE Dept CASCADE CONSTRAINTS PURGE;



DROP TABLE pwfind CASCADE CONSTRAINTS PURGE;

DROP SEQUENCE pwfind_seq;
DROP SEQUENCE Dept_seq;
DROP SEQUENCE LearningMaterials_seq;
DROP SEQUENCE admins_seq;
DROP SEQUENCE subject_seq;
DROP SEQUENCE users_seq;
DROP SEQUENCE qna_seq;
DROP SEQUENCE assign_seq;
DROP SEQUENCE score_seq;
DROP SEQUENCE attend_seq;
DROP SEQUENCE notice_seq;

CREATE SEQUENCE pwfind_seq;
CREATE SEQUENCE Dept_seq;
CREATE SEQUENCE LearningMaterials_seq;
CREATE SEQUENCE admins_seq;
CREATE SEQUENCE subject_seq;
CREATE SEQUENCE users_seq;
CREATE SEQUENCE qna_seq;
CREATE SEQUENCE assign_seq;
CREATE SEQUENCE score_seq;
CREATE SEQUENCE attend_seq;
CREATE SEQUENCE notice_seq;

CREATE TABLE pwfind
(
	pwfno                 NUMBER  NOT NULL ,
	pwfQ                  VARCHAR2(200)  NULL ,
CONSTRAINT  XPKpwfind PRIMARY KEY (pwfno)
);



CREATE TABLE Dept
(
	deptno                NUMBER  NOT NULL ,
	doptnm                VARCHAR2(20)  NULL ,
CONSTRAINT  XPKDept PRIMARY KEY (deptno)
);



CREATE TABLE admins
(
	id                    VARCHAR2(20)  NOT NULL ,
	adno                  NUMBER  NOT NULL ,
	pw1                   VARCHAR2(20)  NOT NULL ,
	pw2                   VARCHAR2(20)  NOT NULL ,
	cp                    VARCHAR2(20)  NOT NULL ,
	email                 VARCHAR2(30)  NULL ,
	sex                   NUMBER  NOT NULL ,
	confirmno             VARCHAR2(20)  NULL ,
	pwa                   VARCHAR2(20)  NULL ,
	name                  VARCHAR2(10)  NULL ,
	pwfno                 NUMBER  NOT NULL ,
	deptno                NUMBER  NOT NULL ,
CONSTRAINT  XPKadmins PRIMARY KEY (adno),
CONSTRAINT  R_3 FOREIGN KEY (pwfno) REFERENCES pwfind(pwfno),
CONSTRAINT  R_8 FOREIGN KEY (deptno) REFERENCES Dept(deptno)
);



CREATE TABLE subject
(
	subnm                 VARCHAR2(20)  NOT NULL ,
	subno                 NUMBER  NOT NULL ,
	subcontent            VARCHAR2(20)  NOT NULL ,
	limitno               NUMBER  NOT NULL ,
	limitend              VARCHAR2(20)  NOT NULL ,
	edustart              VARCHAR2(20)  NOT NULL ,
	eduend                VARCHAR2(20)  NOT NULL ,
	regdate               DATE  NULL ,
	classno               NUMBER  NOT NULL ,
	classnm               VARCHAR2(20)  NULL ,
	adno                  NUMBER  NOT NULL ,
CONSTRAINT  XPKsubject PRIMARY KEY (subno),
CONSTRAINT  R_1 FOREIGN KEY (adno) REFERENCES admins(adno)
);



CREATE TABLE users
(
	userno                NUMBER  NOT NULL ,
	id                    VARCHAR2(20)  NOT NULL ,
	name                  VARCHAR2(20)  NOT NULL ,
	pw1                   VARCHAR2(20)  NOT NULL ,
	pw2                   VARCHAR2(20)  NOT NULL ,
	cp                    VARCHAR2(20)  NOT NULL ,
	email                 VARCHAR2(20)  NOT NULL ,
	sex                   NUMBER  NULL ,
	subject               VARCHAR2(20)  NULL ,
	regdate               DATE  NULL ,
	pwa                   VARCHAR2(20)  NOT NULL ,
	jpath                 NUMBER  NOT NULL ,
	pwfno                 NUMBER  NOT NULL ,
	subno                 NUMBER  NOT NULL ,
	classno               NUMBER  NULL ,
CONSTRAINT  XPKusers PRIMARY KEY (userno),
CONSTRAINT  R_4 FOREIGN KEY (pwfno) REFERENCES pwfind(pwfno),
CONSTRAINT  R_16 FOREIGN KEY (subno) REFERENCES subject(subno)
);



CREATE TABLE qna
(
	qnano                 NUMBER  NOT NULL ,
	qsub                  VARCHAR2(20)  NULL ,
	qcontent              VARCHAR2(20)  NULL ,
	regdate               DATE  NULL ,
	asub                  VARCHAR2(20)  NULL ,
	acontent              VARCHAR2(20)  NULL ,
	updatedate            DATE  NULL ,
	userno                NUMBER  NOT NULL ,
CONSTRAINT  XPKqna PRIMARY KEY (qnano),
CONSTRAINT  R_10 FOREIGN KEY (userno) REFERENCES users(userno)
);



CREATE TABLE assign
(
	assno                 NUMBER  NOT NULL ,
	assnm                 VARCHAR2(20)  NULL ,
	asscontent            VARCHAR2(20)  NULL ,
	regdate               DATE  NULL ,
	filenm                VARCHAR2(20)  NULL ,
	filepath              VARCHAR2(20)  NULL ,
	userno                NUMBER  NOT NULL ,
CONSTRAINT  XPKassign PRIMARY KEY (assno),
CONSTRAINT  R_11 FOREIGN KEY (userno) REFERENCES users(userno)
);



CREATE TABLE score
(
	scoreno               NUMBER  NOT NULL ,
	testno                NUMBER  NOT NULL ,
	testscore             NUMBER  NOT NULL ,
	userno                NUMBER  NOT NULL ,
CONSTRAINT  XPKscore PRIMARY KEY (scoreno),
CONSTRAINT  R_7 FOREIGN KEY (userno) REFERENCES users(userno)
);



CREATE TABLE attend
(
	attno                 NUMBER  NOT NULL ,
	state                 NUMBER  NOT NULL ,
	attdate               DATE  NULL ,
	userno                NUMBER  NOT NULL ,
CONSTRAINT  XPKattend PRIMARY KEY (attno),
CONSTRAINT  R_9 FOREIGN KEY (userno) REFERENCES users(userno)
);



CREATE TABLE notice
(
	nsub                  VARCHAR2(20)  NULL ,
	nno                   NUMBER  NOT NULL ,
	ncontent              VARCHAR2(20)  NULL ,
	regdate               DATE  NULL ,
	topstate              NUMBER  NOT NULL ,
	adno                  NUMBER  NOT NULL ,
CONSTRAINT  XPKnotice PRIMARY KEY (nno),
CONSTRAINT  R_14 FOREIGN KEY (adno) REFERENCES admins(adno)
);



CREATE TABLE LearningMaterials
(
	lmnm                  VARCHAR2(20)  NULL ,
	lmno                  NUMBER  NOT NULL ,
	regdate               DATE  NULL ,
	filenm                VARCHAR2(20)  NULL ,
	filepath              VARCHAR2(20)  NULL ,
	adno                  NUMBER  NOT NULL ,
CONSTRAINT  XPKLearningMaterials PRIMARY KEY (lmno),
CONSTRAINT  R_13 FOREIGN KEY (adno) REFERENCES admins(adno)
);


--DUMMY
insert into dept values (dept_seq.nextval, '강사');
insert into dept values (dept_seq.nextval, '행정');
insert into dept values (dept_seq.nextval, '영업');

insert into pwfind values (pwfind_seq.nextval, '보물1호는?');
insert into pwfind values (pwfind_seq.nextval, '아버지이름?');
insert into pwfind values (pwfind_seq.nextval, '좋아하는색깔은?');
insert into pwfind values (pwfind_seq.nextval, '좋아하는캐릭터는?');

insert into admins (adno,name,id,pw1,pw2,cp,email,sex,pwa,pwfno,deptno) values (admins_seq.nextval,'관리자','admin','1234','1234','01012345678','asd@naver.com',1,'a',2,1);
commit;