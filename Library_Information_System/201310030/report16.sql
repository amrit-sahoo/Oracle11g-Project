SET LINESIZE 90
SET PAGESIZE 20
REPHEADER CENTER 'FINE DETAIL' SKIP 1 CENTER 'National Institute Of Science and Technology' SKIP 1 CENTER 'Pallur Hills,Berhampur-761008'
REPFOOTER CENTER RIGHT 'PAGE NO:-'SQL.PNO
BREAK ON LFFINETYPE
COMPUTE SUM OF LFFINEAMT 'TOTAL FINE' ON LFFINETYPE
COLUMN LFFINEAMT HEADING 'FINE AMOUNT'

select LUUSERID,LUUSERNAME,LFFINEAMT,LFFINENOTE from libusers join libfines using(LUUSERID) where LFFINENOTE is not null;


CLEAR COMPUTE
CLEAR COLUMN 
CLEAR BREAK
TTITLE OFF
REPFOOTER OFF
REPHEADER OFF 




