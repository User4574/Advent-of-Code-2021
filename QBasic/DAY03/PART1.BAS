wlen% = 12
DIM bits(1 TO wlen%) AS LONG
total& = 0

OPEN "input.dat" FOR INPUT AS #30

FOR i% = 1 TO wlen%
        bits(i%) = 0
NEXT i%

DO UNTIL EOF(30)
        INPUT #30, word$
        FOR i% = 1 TO wlen%
                bits(i%) = bits(i%) + VAL(MID$(word$, i%, 1))
        NEXT i%
        total& = total& + 1
LOOP

gamma& = 0
epsilon& = 0
FOR i% = 1 TO wlen%
        gamma& = gamma& * 2
        epsilon& = epsilon& * 2
        IF bits(i%) > total& - bits(i%) THEN
                gamma& = gamma& + 1
        ELSE
                epsilon& = epsilon& + 1
        END IF
NEXT i%

CLS
PRINT "Product:"; gamma& * epsilon&

