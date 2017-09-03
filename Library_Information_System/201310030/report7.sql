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



 select luuserid userid,luusername username,LFFINETYPE,lffineamt net_fine from LIBUSERS join LIBFINES using(luuserid) group by(luuserid,LFFINETYPE,luusername,lffineamt) having lffineamt in (select max(lffineamt) from LIBFINES group by(LFFINETYPE));



CLEAR COMPUTE
CLEAR COLUMN 
CLEAR BREAK
TTITLE OFF
REPFOOTER OFF
REPHEADER OFF 
