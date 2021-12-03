CONST FALSE = 0
CONST TRUE = NOT FALSE

file$ = "input.dat"
wlen% = 12

bits& = 0
total& = 0

GOSUB getdatalength

DIM records(1 TO lines%) AS STRING
DIM valid(1 TO lines%) AS INTEGER

GOSUB getdata
atbit% = 1
DO
        GOSUB getvalidcount
        IF validcount& = 1 THEN
                EXIT DO
        END IF

        GOSUB getbitcount
        GOSUB invalidatenonoxygen
        atbit% = atbit% + 1
LOOP
GOSUB getvalidloc
oxygen$ = records(validloc%)

GOSUB getdata
atbit% = 1
DO
        GOSUB getvalidcount
        IF validcount& = 1 THEN
                EXIT DO
        END IF

        GOSUB getbitcount
        GOSUB invalidatenonco2
        atbit% = atbit% + 1
LOOP
GOSUB getvalidloc
co2$ = records(validloc%)

gamma& = 0
epsilon& = 0
FOR i% = 1 TO wlen%
        gamma& = gamma& * 2
        epsilon& = epsilon& * 2
        IF MID$(oxygen$, i%, 1) = "1" THEN
                gamma& = gamma& + 1
        END IF
        IF MID$(co2$, i%, 1) = "1" THEN
                epsilon& = epsilon& + 1
        END IF
NEXT i%

CLS
PRINT "Product:"; gamma& * epsilon&
END

getdatalength:
        OPEN file$ FOR INPUT AS #30
        lines% = 0
        DO UNTIL EOF(30)
                INPUT #30, dump$
                lines% = lines% + 1
        LOOP
        CLOSE #30
RETURN

getdata:
        OPEN file$ FOR INPUT AS #30
        FOR i% = 1 TO lines%
                INPUT #30, records(i%)
                valid(i%) = TRUE
        NEXT i%
        CLOSE #30
RETURN

getbitcount:
        bits& = 0
        total& = 0

        FOR i% = 1 TO lines%
                IF valid(i%) THEN
                        bits& = bits& + VAL(MID$(records(i%), atbit%, 1))
                        total& = total& + 1
                END IF
        NEXT i%
RETURN

invalidatenonoxygen:
        FOR i% = 1 TO lines%
                IF valid(i%) THEN
                        x$ = MID$(records(i%), atbit%, 1)
                        IF bits& >= total& - bits& THEN
                                IF x$ = "0" THEN
                                        valid(i%) = FALSE
                                END IF
                        ELSE
                                IF x$ = "1" THEN
                                        valid(i%) = FALSE
                                END IF
                        END IF
                END IF
        NEXT i%
RETURN

invalidatenonco2:
        FOR i% = 1 TO lines%
                IF valid(i%) THEN
                        x$ = MID$(records(i%), atbit%, 1)
                        IF bits& < total& - bits& THEN
                                IF x$ = "0" THEN
                                        valid(i%) = FALSE
                                END IF
                        ELSE
                                IF x$ = "1" THEN
                                        valid(i%) = FALSE
                                END IF
                        END IF
                END IF
        NEXT i%
RETURN

getvalidcount:
        validcount& = 0
        FOR i% = 1 TO lines%
                IF valid(i%) THEN
                        validcount& = validcount& + 1
                END IF
        NEXT i%
RETURN

getvalidloc:
        validloc% = 0
        FOR i% = 1 TO lines%
                IF valid(i%) THEN
                        validloc% = i%
                END IF
        NEXT i%
RETURN

