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



select luuserid,luusername from libusers where luuserid in (select luuserid from libusers minus select luuserid from libfines);

CLEAR COMPUTE
CLEAR COLUMN 
CLEAR BREAK
TTITLE OFF
REPFOOTER OFF
REPHEADER OFF 


CLEAR COMPUTE
CLEAR COLUMN 
CLEAR BREAK
TTITLE OFF
REPFOOTER OFF
REPHEADER OFF 

CLEAR COMPUTE
CLEAR COLUMN 
CLEAR BREAK
TTITLE OFF
REPFOOTER OFF
REPHEADER OFF 