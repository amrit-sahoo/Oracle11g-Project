SET LINESIZE 90
SET PAGESIZE 20
REPHEADER CENTER 'FINE DETAIL' SKIP 1 CENTER 'National Institute Of Science and Technology' SKIP 1 CENTER 'Pallur Hills,Berhampur-761008'
REPFOOTER CENTER RIGHT 'PAGE NO:-'SQL.PNO
BREAK ON LFFINETYPE
COMPUTE SUM OF LFFINEAMT 'TOTAL FINE' ON LFFINETYPE
COLUMN LFFINEAMT HEADING 'FINE AMOUNT'


SELECT LUUSERNAME,BKINDEXNUM,TITITLE,BSBOOKTRANSDATE FROM LIBBOOKTRANS JOIN LIBUSERS USING (LUUSERID) JOIN LIBTITLES USING(TITITLEID) WHERE BSBOOKTRANSDATE IN (SELECT BSBOOKTRANSDATE FROM LIBBOOKTRANS GROUP BY TITITLEID,BSBOOKTRANSDATE HAVING COUNT(TITITLEID)=(SELECT MAX(COUNT(TITITLEID)) FROM LIBBOOKTRANS GROUP BY TITITLEID,BSBOOKTRANSDATE));

CLEAR COMPUTE
CLEAR COLUMN 
CLEAR BREAK
TTITLE OFF
REPFOOTER OFF
REPHEADER OFF 