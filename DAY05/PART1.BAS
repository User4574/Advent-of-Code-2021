DECLARE SUB IncrementFloor (x%, y%)
DECLARE FUNCTION IsDigit% (Str AS STRING, Idx AS INTEGER)

CONST file$ = "input.dat"
CONST size% = 1000

DIM SHARED subsize%
subsize% = size% / 10

DIM SHARED floor00(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor01(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor02(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor03(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor04(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor05(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor06(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor07(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor08(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor09(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER

DIM SHARED floor10(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor11(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor12(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor13(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor14(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor15(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor16(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor17(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor18(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor19(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER

DIM SHARED floor20(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor21(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor22(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor23(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor24(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor25(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor26(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor27(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor28(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor29(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER

DIM SHARED floor30(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor31(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor32(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor33(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor34(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor35(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor36(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor37(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor38(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor39(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER

DIM SHARED floor40(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor41(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor42(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor43(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor44(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor45(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor46(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor47(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor48(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor49(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER

DIM SHARED floor50(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor51(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor52(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor53(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor54(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor55(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor56(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor57(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor58(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor59(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER

DIM SHARED floor60(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor61(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor62(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor63(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor64(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor65(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor66(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor67(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor68(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor69(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER

DIM SHARED floor70(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor71(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor72(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor73(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor74(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor75(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor76(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor77(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor78(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor79(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER

DIM SHARED floor80(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor81(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor82(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor83(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor84(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor85(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor86(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor87(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor88(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor89(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER

DIM SHARED floor90(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor91(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor92(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor93(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor94(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor95(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor96(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor97(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor98(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER
DIM SHARED floor99(0 TO (subsize% - 1), 0 TO (subsize% - 1)) AS INTEGER

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

GOSUB countoverlaps

CLS
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
    CALL IncrementFloor(x%, y%)
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
    CALL IncrementFloor(x%, y%)
  NEXT y%
RETURN

countoverlaps:
  count% = 0
  FOR x% = 0 TO (subsize% - 1)
    FOR y% = 0 TO (subsize% - 1)
      IF floor00(x%, y%) > 1 THEN count% = count% + 1
      IF floor01(x%, y%) > 1 THEN count% = count% + 1
      IF floor02(x%, y%) > 1 THEN count% = count% + 1
      IF floor03(x%, y%) > 1 THEN count% = count% + 1
      IF floor04(x%, y%) > 1 THEN count% = count% + 1
      IF floor05(x%, y%) > 1 THEN count% = count% + 1
      IF floor06(x%, y%) > 1 THEN count% = count% + 1
      IF floor07(x%, y%) > 1 THEN count% = count% + 1
      IF floor08(x%, y%) > 1 THEN count% = count% + 1
      IF floor09(x%, y%) > 1 THEN count% = count% + 1

      IF floor10(x%, y%) > 1 THEN count% = count% + 1
      IF floor11(x%, y%) > 1 THEN count% = count% + 1
      IF floor12(x%, y%) > 1 THEN count% = count% + 1
      IF floor13(x%, y%) > 1 THEN count% = count% + 1
      IF floor14(x%, y%) > 1 THEN count% = count% + 1
      IF floor15(x%, y%) > 1 THEN count% = count% + 1
      IF floor16(x%, y%) > 1 THEN count% = count% + 1
      IF floor17(x%, y%) > 1 THEN count% = count% + 1
      IF floor18(x%, y%) > 1 THEN count% = count% + 1
      IF floor19(x%, y%) > 1 THEN count% = count% + 1

      IF floor20(x%, y%) > 1 THEN count% = count% + 1
      IF floor21(x%, y%) > 1 THEN count% = count% + 1
      IF floor22(x%, y%) > 1 THEN count% = count% + 1
      IF floor23(x%, y%) > 1 THEN count% = count% + 1
      IF floor24(x%, y%) > 1 THEN count% = count% + 1
      IF floor25(x%, y%) > 1 THEN count% = count% + 1
      IF floor26(x%, y%) > 1 THEN count% = count% + 1
      IF floor27(x%, y%) > 1 THEN count% = count% + 1
      IF floor28(x%, y%) > 1 THEN count% = count% + 1
      IF floor29(x%, y%) > 1 THEN count% = count% + 1

      IF floor30(x%, y%) > 1 THEN count% = count% + 1
      IF floor31(x%, y%) > 1 THEN count% = count% + 1
      IF floor32(x%, y%) > 1 THEN count% = count% + 1
      IF floor33(x%, y%) > 1 THEN count% = count% + 1
      IF floor34(x%, y%) > 1 THEN count% = count% + 1
      IF floor35(x%, y%) > 1 THEN count% = count% + 1
      IF floor36(x%, y%) > 1 THEN count% = count% + 1
      IF floor37(x%, y%) > 1 THEN count% = count% + 1
      IF floor38(x%, y%) > 1 THEN count% = count% + 1
      IF floor39(x%, y%) > 1 THEN count% = count% + 1

      IF floor40(x%, y%) > 1 THEN count% = count% + 1
      IF floor41(x%, y%) > 1 THEN count% = count% + 1
      IF floor42(x%, y%) > 1 THEN count% = count% + 1
      IF floor43(x%, y%) > 1 THEN count% = count% + 1
      IF floor44(x%, y%) > 1 THEN count% = count% + 1
      IF floor45(x%, y%) > 1 THEN count% = count% + 1
      IF floor46(x%, y%) > 1 THEN count% = count% + 1
      IF floor47(x%, y%) > 1 THEN count% = count% + 1
      IF floor48(x%, y%) > 1 THEN count% = count% + 1
      IF floor49(x%, y%) > 1 THEN count% = count% + 1

      IF floor50(x%, y%) > 1 THEN count% = count% + 1
      IF floor51(x%, y%) > 1 THEN count% = count% + 1
      IF floor52(x%, y%) > 1 THEN count% = count% + 1
      IF floor53(x%, y%) > 1 THEN count% = count% + 1
      IF floor54(x%, y%) > 1 THEN count% = count% + 1
      IF floor55(x%, y%) > 1 THEN count% = count% + 1
      IF floor56(x%, y%) > 1 THEN count% = count% + 1
      IF floor57(x%, y%) > 1 THEN count% = count% + 1
      IF floor58(x%, y%) > 1 THEN count% = count% + 1
      IF floor59(x%, y%) > 1 THEN count% = count% + 1

      IF floor60(x%, y%) > 1 THEN count% = count% + 1
      IF floor61(x%, y%) > 1 THEN count% = count% + 1
      IF floor62(x%, y%) > 1 THEN count% = count% + 1
      IF floor63(x%, y%) > 1 THEN count% = count% + 1
      IF floor64(x%, y%) > 1 THEN count% = count% + 1
      IF floor65(x%, y%) > 1 THEN count% = count% + 1
      IF floor66(x%, y%) > 1 THEN count% = count% + 1
      IF floor67(x%, y%) > 1 THEN count% = count% + 1
      IF floor68(x%, y%) > 1 THEN count% = count% + 1
      IF floor69(x%, y%) > 1 THEN count% = count% + 1

      IF floor70(x%, y%) > 1 THEN count% = count% + 1
      IF floor71(x%, y%) > 1 THEN count% = count% + 1
      IF floor72(x%, y%) > 1 THEN count% = count% + 1
      IF floor73(x%, y%) > 1 THEN count% = count% + 1
      IF floor74(x%, y%) > 1 THEN count% = count% + 1
      IF floor75(x%, y%) > 1 THEN count% = count% + 1
      IF floor76(x%, y%) > 1 THEN count% = count% + 1
      IF floor77(x%, y%) > 1 THEN count% = count% + 1
      IF floor78(x%, y%) > 1 THEN count% = count% + 1
      IF floor79(x%, y%) > 1 THEN count% = count% + 1

      IF floor80(x%, y%) > 1 THEN count% = count% + 1
      IF floor81(x%, y%) > 1 THEN count% = count% + 1
      IF floor82(x%, y%) > 1 THEN count% = count% + 1
      IF floor83(x%, y%) > 1 THEN count% = count% + 1
      IF floor84(x%, y%) > 1 THEN count% = count% + 1
      IF floor85(x%, y%) > 1 THEN count% = count% + 1
      IF floor86(x%, y%) > 1 THEN count% = count% + 1
      IF floor87(x%, y%) > 1 THEN count% = count% + 1
      IF floor88(x%, y%) > 1 THEN count% = count% + 1
      IF floor89(x%, y%) > 1 THEN count% = count% + 1

      IF floor90(x%, y%) > 1 THEN count% = count% + 1
      IF floor91(x%, y%) > 1 THEN count% = count% + 1
      IF floor92(x%, y%) > 1 THEN count% = count% + 1
      IF floor93(x%, y%) > 1 THEN count% = count% + 1
      IF floor94(x%, y%) > 1 THEN count% = count% + 1
      IF floor95(x%, y%) > 1 THEN count% = count% + 1
      IF floor96(x%, y%) > 1 THEN count% = count% + 1
      IF floor97(x%, y%) > 1 THEN count% = count% + 1
      IF floor98(x%, y%) > 1 THEN count% = count% + 1
      IF floor99(x%, y%) > 1 THEN count% = count% + 1
    NEXT y%
  NEXT x%
RETURN

SUB IncrementFloor (x%, y%)
  subx% = INT(x% / subsize%)
  suby% = INT(y% / subsize%)
  fracx% = x% - (subx% * subsize%)
  fracy% = y% - (suby% * subsize%)

  SELECT CASE subx%
    CASE IS = 0
      SELECT CASE suby%
        CASE IS = 0
          floor00(fracx%, fracy%) = floor00(fracx%, fracy%) + 1
        CASE IS = 1
          floor01(fracx%, fracy%) = floor01(fracx%, fracy%) + 1
        CASE IS = 2
          floor02(fracx%, fracy%) = floor02(fracx%, fracy%) + 1
        CASE IS = 3
          floor03(fracx%, fracy%) = floor03(fracx%, fracy%) + 1
        CASE IS = 4
          floor04(fracx%, fracy%) = floor04(fracx%, fracy%) + 1
        CASE IS = 5
          floor05(fracx%, fracy%) = floor05(fracx%, fracy%) + 1
        CASE IS = 6
          floor06(fracx%, fracy%) = floor06(fracx%, fracy%) + 1
        CASE IS = 7
          floor07(fracx%, fracy%) = floor07(fracx%, fracy%) + 1
        CASE IS = 8
          floor08(fracx%, fracy%) = floor08(fracx%, fracy%) + 1
        CASE IS = 9
          floor09(fracx%, fracy%) = floor09(fracx%, fracy%) + 1
      END SELECT
    CASE IS = 1
      SELECT CASE suby%
        CASE IS = 0
          floor10(fracx%, fracy%) = floor10(fracx%, fracy%) + 1
        CASE IS = 1
          floor11(fracx%, fracy%) = floor11(fracx%, fracy%) + 1
        CASE IS = 2
          floor12(fracx%, fracy%) = floor12(fracx%, fracy%) + 1
        CASE IS = 3
          floor13(fracx%, fracy%) = floor13(fracx%, fracy%) + 1
        CASE IS = 4
          floor14(fracx%, fracy%) = floor14(fracx%, fracy%) + 1
        CASE IS = 5
          floor15(fracx%, fracy%) = floor15(fracx%, fracy%) + 1
        CASE IS = 6
          floor16(fracx%, fracy%) = floor16(fracx%, fracy%) + 1
        CASE IS = 7
          floor17(fracx%, fracy%) = floor17(fracx%, fracy%) + 1
        CASE IS = 8
          floor18(fracx%, fracy%) = floor18(fracx%, fracy%) + 1
        CASE IS = 9
          floor19(fracx%, fracy%) = floor19(fracx%, fracy%) + 1
      END SELECT
    CASE IS = 2
      SELECT CASE suby%
        CASE IS = 0
          floor20(fracx%, fracy%) = floor20(fracx%, fracy%) + 1
        CASE IS = 1
          floor21(fracx%, fracy%) = floor21(fracx%, fracy%) + 1
        CASE IS = 2
          floor22(fracx%, fracy%) = floor22(fracx%, fracy%) + 1
        CASE IS = 3
          floor23(fracx%, fracy%) = floor23(fracx%, fracy%) + 1
        CASE IS = 4
          floor24(fracx%, fracy%) = floor24(fracx%, fracy%) + 1
        CASE IS = 5
          floor25(fracx%, fracy%) = floor25(fracx%, fracy%) + 1
        CASE IS = 6
          floor26(fracx%, fracy%) = floor26(fracx%, fracy%) + 1
        CASE IS = 7
          floor27(fracx%, fracy%) = floor27(fracx%, fracy%) + 1
        CASE IS = 8
          floor28(fracx%, fracy%) = floor28(fracx%, fracy%) + 1
        CASE IS = 9
          floor29(fracx%, fracy%) = floor29(fracx%, fracy%) + 1
      END SELECT
    CASE IS = 3
      SELECT CASE suby%
        CASE IS = 0
          floor30(fracx%, fracy%) = floor30(fracx%, fracy%) + 1
        CASE IS = 1
          floor31(fracx%, fracy%) = floor31(fracx%, fracy%) + 1
        CASE IS = 2
          floor32(fracx%, fracy%) = floor32(fracx%, fracy%) + 1
        CASE IS = 3
          floor33(fracx%, fracy%) = floor33(fracx%, fracy%) + 1
        CASE IS = 4
          floor34(fracx%, fracy%) = floor34(fracx%, fracy%) + 1
        CASE IS = 5
          floor35(fracx%, fracy%) = floor35(fracx%, fracy%) + 1
        CASE IS = 6
          floor36(fracx%, fracy%) = floor36(fracx%, fracy%) + 1
        CASE IS = 7
          floor37(fracx%, fracy%) = floor37(fracx%, fracy%) + 1
        CASE IS = 8
          floor38(fracx%, fracy%) = floor38(fracx%, fracy%) + 1
        CASE IS = 9
          floor39(fracx%, fracy%) = floor39(fracx%, fracy%) + 1
      END SELECT
    CASE IS = 4
      SELECT CASE suby%
        CASE IS = 0
          floor40(fracx%, fracy%) = floor40(fracx%, fracy%) + 1
        CASE IS = 1
          floor41(fracx%, fracy%) = floor41(fracx%, fracy%) + 1
        CASE IS = 2
          floor42(fracx%, fracy%) = floor42(fracx%, fracy%) + 1
        CASE IS = 3
          floor43(fracx%, fracy%) = floor43(fracx%, fracy%) + 1
        CASE IS = 4
          floor44(fracx%, fracy%) = floor44(fracx%, fracy%) + 1
        CASE IS = 5
          floor45(fracx%, fracy%) = floor45(fracx%, fracy%) + 1
        CASE IS = 6
          floor46(fracx%, fracy%) = floor46(fracx%, fracy%) + 1
        CASE IS = 7
          floor47(fracx%, fracy%) = floor47(fracx%, fracy%) + 1
        CASE IS = 8
          floor48(fracx%, fracy%) = floor48(fracx%, fracy%) + 1
        CASE IS = 9
          floor49(fracx%, fracy%) = floor49(fracx%, fracy%) + 1
      END SELECT
    CASE IS = 5
      SELECT CASE suby%
        CASE IS = 0
          floor50(fracx%, fracy%) = floor50(fracx%, fracy%) + 1
        CASE IS = 1
          floor51(fracx%, fracy%) = floor51(fracx%, fracy%) + 1
        CASE IS = 2
          floor52(fracx%, fracy%) = floor52(fracx%, fracy%) + 1
        CASE IS = 3
          floor53(fracx%, fracy%) = floor53(fracx%, fracy%) + 1
        CASE IS = 4
          floor54(fracx%, fracy%) = floor54(fracx%, fracy%) + 1
        CASE IS = 5
          floor55(fracx%, fracy%) = floor55(fracx%, fracy%) + 1
        CASE IS = 6
          floor56(fracx%, fracy%) = floor56(fracx%, fracy%) + 1
        CASE IS = 7
          floor57(fracx%, fracy%) = floor57(fracx%, fracy%) + 1
        CASE IS = 8
          floor58(fracx%, fracy%) = floor58(fracx%, fracy%) + 1
        CASE IS = 9
          floor59(fracx%, fracy%) = floor59(fracx%, fracy%) + 1
      END SELECT
    CASE IS = 6
      SELECT CASE suby%
        CASE IS = 0
          floor60(fracx%, fracy%) = floor60(fracx%, fracy%) + 1
        CASE IS = 1
          floor61(fracx%, fracy%) = floor61(fracx%, fracy%) + 1
        CASE IS = 2
          floor62(fracx%, fracy%) = floor62(fracx%, fracy%) + 1
        CASE IS = 3
          floor63(fracx%, fracy%) = floor63(fracx%, fracy%) + 1
        CASE IS = 4
          floor64(fracx%, fracy%) = floor64(fracx%, fracy%) + 1
        CASE IS = 5
          floor65(fracx%, fracy%) = floor65(fracx%, fracy%) + 1
        CASE IS = 6
          floor66(fracx%, fracy%) = floor66(fracx%, fracy%) + 1
        CASE IS = 7
          floor67(fracx%, fracy%) = floor67(fracx%, fracy%) + 1
        CASE IS = 8
          floor68(fracx%, fracy%) = floor68(fracx%, fracy%) + 1
        CASE IS = 9
          floor69(fracx%, fracy%) = floor69(fracx%, fracy%) + 1
      END SELECT
    CASE IS = 7
      SELECT CASE suby%
        CASE IS = 0
          floor70(fracx%, fracy%) = floor70(fracx%, fracy%) + 1
        CASE IS = 1
          floor71(fracx%, fracy%) = floor71(fracx%, fracy%) + 1
        CASE IS = 2
          floor72(fracx%, fracy%) = floor72(fracx%, fracy%) + 1
        CASE IS = 3
          floor73(fracx%, fracy%) = floor73(fracx%, fracy%) + 1
        CASE IS = 4
          floor74(fracx%, fracy%) = floor74(fracx%, fracy%) + 1
        CASE IS = 5
          floor75(fracx%, fracy%) = floor75(fracx%, fracy%) + 1
        CASE IS = 6
          floor76(fracx%, fracy%) = floor76(fracx%, fracy%) + 1
        CASE IS = 7
          floor77(fracx%, fracy%) = floor77(fracx%, fracy%) + 1
        CASE IS = 8
          floor78(fracx%, fracy%) = floor78(fracx%, fracy%) + 1
        CASE IS = 9
          floor79(fracx%, fracy%) = floor79(fracx%, fracy%) + 1
      END SELECT
    CASE IS = 8
      SELECT CASE suby%
        CASE IS = 0
          floor80(fracx%, fracy%) = floor80(fracx%, fracy%) + 1
        CASE IS = 1
          floor81(fracx%, fracy%) = floor81(fracx%, fracy%) + 1
        CASE IS = 2
          floor82(fracx%, fracy%) = floor82(fracx%, fracy%) + 1
        CASE IS = 3
          floor83(fracx%, fracy%) = floor83(fracx%, fracy%) + 1
        CASE IS = 4
          floor84(fracx%, fracy%) = floor84(fracx%, fracy%) + 1
        CASE IS = 5
          floor85(fracx%, fracy%) = floor85(fracx%, fracy%) + 1
        CASE IS = 6
          floor86(fracx%, fracy%) = floor86(fracx%, fracy%) + 1
        CASE IS = 7
          floor87(fracx%, fracy%) = floor87(fracx%, fracy%) + 1
        CASE IS = 8
          floor88(fracx%, fracy%) = floor88(fracx%, fracy%) + 1
        CASE IS = 9
          floor89(fracx%, fracy%) = floor89(fracx%, fracy%) + 1
      END SELECT
    CASE IS = 9
      SELECT CASE suby%
        CASE IS = 0
          floor90(fracx%, fracy%) = floor90(fracx%, fracy%) + 1
        CASE IS = 1
          floor91(fracx%, fracy%) = floor91(fracx%, fracy%) + 1
        CASE IS = 2
          floor92(fracx%, fracy%) = floor92(fracx%, fracy%) + 1
        CASE IS = 3
          floor93(fracx%, fracy%) = floor93(fracx%, fracy%) + 1
        CASE IS = 4
          floor94(fracx%, fracy%) = floor94(fracx%, fracy%) + 1
        CASE IS = 5
          floor95(fracx%, fracy%) = floor95(fracx%, fracy%) + 1
        CASE IS = 6
          floor96(fracx%, fracy%) = floor96(fracx%, fracy%) + 1
        CASE IS = 7
          floor97(fracx%, fracy%) = floor97(fracx%, fracy%) + 1
        CASE IS = 8
          floor98(fracx%, fracy%) = floor98(fracx%, fracy%) + 1
        CASE IS = 9
          floor99(fracx%, fracy%) = floor99(fracx%, fracy%) + 1
      END SELECT
  END SELECT
END SUB

FUNCTION IsDigit% (Str AS STRING, Idx AS INTEGER)
  IsDigit = MID$(Str, Idx%, 1) >= "0" AND MID$(Str, Idx%, 1) <= "9"
END FUNCTION

