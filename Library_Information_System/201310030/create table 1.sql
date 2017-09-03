create table libsubjects
(
subjectid number(2) constraint subid_pk primary key,
subjectname varchar2(20)
);
  
create table libtopics
(
TopicID Number(3) constraint topid_pk primary key,
SubjectID Number(2) constraint subid_fk references libsubjects(subjectid), 
TopicName varchar2(30)
);

create table LIBTITLES
(
TITitleID Number(6) constraint ttitlid_pk primary key,
SubjectID Number(2) constraint subid_libtt_fk references libsubjects(subjectid),
TopicID Number(3) constraint topid_libttl_fk references libtopics(TopicID),
TITitle varchar2(100),
TINumCopies Number(1),
TIAuthFullNames varchar2(80),
TIEdition Number(1),
TIPublisher varchar2(30),
TIPublishYear Number(4),
TINumPages Number(3),
TIISBN varchar2(18)
);

create table LIBFINEPOLICIES
(
FPIssueType Number(1) constraint FPIssueType_pk primary key,
FPIssueDays Number(2),
FPNomFineDays Number(2),
FPNomFineAmt Number(2,1),
FPPunitFineAmt Number(2,1)
);


create table LIBBOOKS
(
BKAccessionID Number(5),
FPIssueType Number(1) constraint FPIssueType_LIBBOOKS_fk references LIBFINEPOLICIES(FPIssueType),
TITitleID  Number(6) constraint ttitlid_LIBBOOKS_fk references LIBTITLES(TITitleID),
BKCopyNum Number(1),
BKIndexNum Number(9),
BKBillDate date,
BKBookCost Number(5,2),
BKReplaceCost Number(6,2)
);



create table  LIBISSUEPOLICIES
(
LUUserCat  varchar2(10) constraint LUUserCat_pk primary key,
IPMaxTextBooks Number(1),
IPMaxGenBooks Number(1)
);


create table  LIBUSERS
(
LUUserID Number(9) constraint LUUserID_pk primary key,
LUUserCat varchar2(10) constraint LUUserCat_LIBUSERS_fk references LIBISSUEPOLICIES(LUUserCat),
LUUserName varchar2(20), 
LUMaxTextBooks  Number(2),
LUMaxGenBooks Number(2),  
LUIsActiveUser Number(1)
);


