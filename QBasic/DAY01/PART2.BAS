DIM queue(1 TO 4) AS INTEGER
win1% = 0
win2% = 0
incrs% = 0

OPEN "input.dat" FOR INPUT AS #30

FOR i% = 2 TO 4
        INPUT #30, queue(i%)
NEXT i%

DO WHILE NOT EOF(30)
        GOSUB slidequeue
        INPUT #30, queue(4)

        GOSUB calcwindows

        IF win2% > win1% THEN
                incrs% = incrs% + 1
        END IF
LOOP

CLS
PRINT "The sum increased"; incrs%; "times."

END

slidequeue:
        FOR i% = 1 TO 3
                queue(i%) = queue(i% + 1)
        NEXT i%
        RETURN

calcwindows:
        win1% = queue(1) + queue(2) + queue(3)
        win2% = queue(2) + queue(3) + queue(4)
        RETURN

