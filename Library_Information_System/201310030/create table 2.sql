create table LIBBOOKSTATUS
(
BKIndexNum  Number(9) constraint BKIndexNum_LIBBOOKSTATUS_fk references libbooks(BKIndexNum )s,
BSBookStatus varchar2(2),
TITitleID Number(6) constraint ttitlid_LIBBOOKSTATUS_fk references LIBTITLES(TITitleID),
LUUserID Number(9) constraint LUUserID_LIBBOOKSTATUS_fk references LIBUSERS(LUUserID),
BSIssueDate date,
BSDueDate date
);


create table LIBFINES
(
LFFineID Number(5) constraint LFFineID_pk primary key,
LUUserID Number(9)constraint LUUserID_LIBFINES_fk references LIBUSERS(LUUserID),
BKIndexNum Number(9) constraint BKIndexNum_LIBFINES_fk references libbooks(BKIndexNum ), 
TITitleID  Number(6) constraint ttitlid_LIBfines_fk references LIBTITLES(TITitleID),
BSDueDate  date,
LFReturnDate  date,
LFFineAmt Number(3),
LFFineNote varchar2(100),
LFFineType varchar2(1)
);



create table LIBBOOKTRANS
(
BTBookTransID Number(6) constraint BTBookTransID_pk primary key,
BKIndexNum Number(9) constraint BKIndexNum_LIBBOOKTRANS_fk references libbooks(BKIndexNum),
TITitleID Number(6) constraint ttitlid_LIBBOOKTRANS_fk references LIBTITLES(TITitleID),
BTBookTransType varchar2(8),
LUUserID Number(9) constraint LUUserID_LIBBOOKTRANS_fk references  LIBUSERS(LUUserID)
);



   