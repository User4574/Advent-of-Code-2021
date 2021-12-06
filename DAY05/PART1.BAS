DECLARE FUNCTION IsDigit% (Str AS STRING, Idx AS INTEGER)

CONST file$ = "input.dat"
CONST size% = 1000

subsize% = size% / 5

DIM floor00(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM floor01(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM floor02(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM floor03(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM floor04(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER

DIM floor10(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM floor11(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM floor12(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM floor13(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM floor14(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER

DIM floor20(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM floor21(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM floor22(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM floor23(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM floor24(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER

DIM floor30(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM floor31(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM floor32(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM floor33(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM floor34(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER

DIM floor40(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM floor41(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM floor42(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM floor43(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM floor44(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER

OPEN file$ FOR INPUT AS #30

DIM coords(1 TO 4) AS INTEGER
DO UNTIL EOF(30)
  LINE INPUT #30, line$
  GOSUB parseline
  IF coords(1) = coords(3) THEN
    GOSUB markvert
  ELSEIF coords(2) = coords(4) THEN
    GOSUB markhoriz
  END IF
LOOP

CLS
FOR x% = 0 TO (size% - 1)
  FOR y% = 0 TO (size% - 1)
    PRINT floor(x%, y%);
  NEXT y%
  PRINT
NEXT x%

GOSUB countoverlaps
PRINT "Answer:"; count%

END

parseline:
  sta% = 1
  lth% = 0

  FOR i% = 1 TO 4
    DO WHILE IsDigit(line$, sta% + lth%)
      lth% = lth% + 1
    LOOP
    coords(i%) = VAL(MID$(line$, sta%, lth%))

    sta% = sta% + lth%
    DO UNTIL sta% > LEN(line$) OR IsDigit(line$, sta%)
      sta% = sta% + 1
    LOOP
    lth% = 0
  NEXT i%
RETURN

markhoriz:
  y% = coords(2)
  sx% = coords(1)
  ex% = coords(3)

  IF ex% < sx% THEN
    t% = sx%
    sx% = ex%
    ex% = t%
  END IF

  FOR x% = sx% TO ex%
    floor(x%, y%) = floor(x%, y%) + 1
  NEXT x%
RETURN

markvert:
  x% = coords(1)
  sy% = coords(2)
  ey% = coords(4)
 
  IF ey% < sy% THEN
    t% = sy%
    sy% = ey%
    ey% = t%
  END IF

  FOR y% = sy% TO ey%
    floor(x%, y%) = floor(x%, y%) + 1
  NEXT y%
RETURN

countoverlaps:
  count% = 0
  FOR x% = 0 TO (size% - 1)
    FOR y% = 0 TO (size% - 1)
      IF floor(x%, y%) > 1 THEN
        count% = count% + 1
      END IF
    NEXT y%
  NEXT x%
RETURN

FUNCTION IsDigit% (Str AS STRING, Idx AS INTEGER)
  IsDigit = MID$(Str, Idx%, 1) >= "0" AND MID$(Str, Idx%, 1) <= "9"
END FUNCTION

