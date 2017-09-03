 SET LINESIZE 90
SET PAGESIZE 120
SET TERMOUT OFF
COLUMN SYSDATE NEW_VALUE C_DATE
SELECT SYSDATE FROM DUAL;
SET TERMOUT On  
REPHEADER CENTER 'FINE DETAIL' SKIP 1 CENTER 'National Institute Of Science and Technology' SKIP 1 CENTER 'Pallur Hills,Berhampur-761008'
REPFOOTER CENTER RIGHT 'PAGE NO:-'SQL.PNO
BREAK ON Luusercat
COMPUTE SUM OF LFFINEAMT LEVEL 'TOTAL FINE' ON LUUSERCAT
COLUMN LFFINEAMT HEADING 'FINE AMOUNT'


select book.bkindexnum,title.tititle,lt.topicname,ls.subjectname from LIBFINES FINES join LIBBOOKS BOOK ON(FINES.bkindexnum=BOOK.bkindexnum) join LIBTITLES TITLE ON(book.tititleid=TITLE.tititleid) join LIBTOPICS  lt ON(title.topicid=lt.topicid) join LIBSUBJECTS ls on (lt.subjectid=ls.subjectid) where fines.lffineamt=(select  max(lffineamt) from LIBFINES);



CLEAR COMPUTE
CLEAR COLUMN 
CLEAR BREAK
TTITLE OFF
REPFOOTER OFF
REPHEADER OFF
 