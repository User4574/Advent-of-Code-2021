last% = 0
this% = 0
incrs% = 0

OPEN "input.dat" FOR INPUT AS #30

INPUT #30, this%

DO WHILE NOT EOF(30)
        last% = this%
        INPUT #30, this%

        IF this% > last% THEN
                incrs% = incrs% + 1
        END IF
LOOP

CLS
PRINT "The measurement increased"; incrs%; "times."

