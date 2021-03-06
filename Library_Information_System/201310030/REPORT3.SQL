SET LINESIZE 120
SET PAGESIZE 60
SET TERMOUT OFF
COLUMN SYSDATE NEW_VALUE C_DATE
SELECT SYSDATE FROM DUAL;
SET TERMOUT ON
REPHEADER CENTER 'FINE DETAILS' SKIP 1 CENTER  'National Institute of Science and Technology' SKIP 1 CENTER 'Palur Hills, Berhampur- 761008' LEFT && C_DATE
REPFOOTER RIGHT 'PAGE NO:- 'SQL.PNO
BREAK ON LUUSERCAT
COMPUTE SUM OF LFFINEAMT LEVEL "TOTAL FINE" ON LUUSERCAT
COLUMN LUUSERID HEADING 'USER ID'
COLUMN LUUSERNAME HEADING 'USER NAME'
COLUMN LFFINEAMT HEADING 'FINE AMMOUNT'
COLUMN LUUSERCAT HEADING 'USER CATEGORY'
SELECT LUUSERCAT,LUUSERID,LUUSERNAME,LFFINEAMT FROM LIBUSERS JOIN LIBFINES USING(LUUSERID) ORDER BY LUUSERCAT;


clear column
clear brEAK
TTITLE OFF 
CLEAR COMPUTE
REPFOOTER OFF
REPHEADER OFF