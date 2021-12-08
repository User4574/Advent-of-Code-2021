CONST FALSE = 0
CONST TRUE = NOT FALSE

CONST file$ = "input.dat"
CONST size% = 5

CLS

GOSUB getnumboards
DIM boards(1 TO numboards%, 1 TO size%, 1 TO size%) AS INTEGER

GOSUB getdata

winner% = 0
atnumber% = 0

DO UNTIL winner% > 0
  atnumber% = atnumber% + 1
  GOSUB markboards

  GOSUB checkwin
LOOP

GOSUB getunmarkedsum
GOSUB printanswer

END

getnumboards:
  OPEN file$ FOR INPUT AS #30
 
  numboards% = -1
  DO UNTIL EOF(30)
    LINE INPUT #30, line$
    numboards% = numboards% + 1
  LOOP
  numboards% = numboards% / (size% + 1)
 
  CLOSE #30
RETURN

getdata:
  OPEN file$ FOR INPUT AS #30
  GOSUB getnumbers
  GOSUB getboards
  CLOSE #30
RETURN

getnumbers:
  LINE INPUT #30, line$

  at% = 1
  numnums% = 1
  DO UNTIL at% > LEN(line$)
    IF MID$(line$, at%, 1) = "," THEN
      numnums% = numnums% + 1
    END IF
    at% = at% + 1
  LOOP

  DIM numbers(1 TO numnums%) AS INTEGER

  sta% = 1
  lth% = 1
  at% = 1
  DO UNTIL at% = numnums%
    IF MID$(line$, sta% + lth%, 1) = "," THEN
      numbers(at%) = VAL(MID$(line$, sta%, lth%))
      sta% = sta% + lth% + 1
      lth% = 1
      at% = at% + 1
    ELSE
      lth% = lth% + 1
    END IF
  LOOP
  numbers(at%) = VAL(MID$(line$, sta%, LEN(line$) - sta% + 1))
RETURN

getboards:
  FOR board% = 1 TO numboards%
    LINE INPUT #30, line$
    FOR row% = 1 TO size%
      LINE INPUT #30, line$
                       
      sta% = 1
      lth% = 0
      col% = 1

      IF LEFT$(line$, 1) = " " THEN
        sta% = 2
      END IF

      DO UNTIL sta% > LEN(line$)
        IF sta% + lth% > LEN(line$) THEN
          boards(board%, row%, col%) = VAL(MID$(line$, sta%, lth%))
          sta% = sta% + lth%
        ELSE
          this$ = MID$(line$, sta% + lth%, 1)
          IF this$ >= "0" AND this$ <= "9" THEN
            lth% = lth% + 1
          ELSE
            boards(board%, row%, col%) = VAL(MID$(line$, sta%, lth%))
            col% = col% + 1
            DO
              lth% = lth% + 1
              this$ = MID$(line$, sta% + lth%, 1)
            LOOP UNTIL this$ >= "0" AND this$ <= "9"
            sta% = sta% + lth%
            lth% = 0
          END IF
        END IF
      LOOP
    NEXT row%
  NEXT board%
RETURN

markboards:
  FOR board% = 1 TO numboards%
    FOR row% = 1 TO size%
      FOR col% = 1 TO size%
        IF boards(board%, row%, col%) = numbers(atnumber%) THEN
          boards(board%, row%, col%) = -1
        END IF
      NEXT col%
    NEXT row%
  NEXT board%
RETURN

checkwin:
  winner% = 0

  FOR board% = 1 TO numboards%
    FOR row% = 1 TO size%
      rowwin% = TRUE
      FOR col% = 1 TO size%
        IF boards(board%, row%, col%) <> -1 THEN
          rowwin% = FALSE
        END IF
      NEXT col%
      IF rowwin% THEN
        winner% = board%
        RETURN
      END IF
    NEXT row%

    FOR col% = 1 TO size%
      colwin% = TRUE
      FOR row% = 1 TO size%
        IF boards(board%, row%, col%) <> -1 THEN
          colwin% = FALSE
        END IF
      NEXT row%
      IF colwin% THEN
        winner% = board%
        RETURN
      END IF
    NEXT col%

  NEXT board%
RETURN

getunmarkedsum:
  sum& = 0
  FOR row% = 1 TO size%
    FOR col% = 1 TO size%
      num% = boards(winner%, row%, col%)
      IF num% <> -1 THEN
        sum& = sum& + num%
      END IF
    NEXT col%
  NEXT row%
RETURN

printanswer:
  PRINT "Answer:"; sum& * numbers(atnumber%)
RETURN

