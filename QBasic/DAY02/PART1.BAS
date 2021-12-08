horiz% = 0
depth% = 0

OPEN "input.dat" FOR INPUT AS #30

DO UNTIL EOF(30)
        INPUT #30, line$
       
        comnd$ = LEFT$(line$, 2)
        delta% = VAL(RIGHT$(line$, 1))

        SELECT CASE comnd$
        CASE IS = "fo"
                horiz% = horiz% + delta%
        CASE IS = "up"
                depth% = depth% - delta%
        CASE IS = "do"
                depth% = depth% + delta%
        END SELECT
LOOP

prod& = horiz%
prod& = prod& * depth%

CLS
PRINT "Product:"; prod&

