BEGIN ~ftowfr~

IF WEIGHT #3 ~RandomNum(11,1)~ THEN BEGIN 0
  SAY @860
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~RandomNum(11,2)~ THEN BEGIN 1
  SAY @861
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~RandomNum(11,3)
GlobalLT("Chapter","GLOBAL",7)~ THEN BEGIN 2
  SAY @862
  IF ~~ THEN JOURNAL @310500 EXIT
END

IF WEIGHT #0 ~GlobalGT("Chapter","GLOBAL",3)~ THEN BEGIN 3
  SAY @863
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~RandomNum(11,4)
GlobalLT("Chapter","GLOBAL",6)~ THEN BEGIN 4
  SAY @864
  IF ~~ THEN UNSOLVED_JOURNAL @310501 EXIT
END

IF WEIGHT #7 ~RandomNum(11,5)
GlobalLT("Chapter","GLOBAL",6)~ THEN BEGIN 5
  SAY @865
  IF ~~ THEN UNSOLVED_JOURNAL @310501 EXIT
END

IF WEIGHT #1 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 6
  SAY @6420
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @9057
  IF ~~ THEN EXIT
END

IF WEIGHT #8 ~RandomNum(11,6)~ THEN BEGIN 8
  SAY @15950
  IF ~~ THEN EXIT
END

IF WEIGHT #9 ~RandomNum(11,7)~ THEN BEGIN 9
  SAY @16038
  IF ~~ THEN EXIT
END

IF WEIGHT #10 ~RandomNum(11,8)~ THEN BEGIN 10
  SAY @16039
  IF ~~ THEN EXIT
END

IF WEIGHT #11 ~RandomNum(11,9)~ THEN BEGIN 11
  SAY @17709
  IF ~~ THEN REPLY @17711 GOTO 13
  IF ~~ THEN REPLY @17712 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @17713
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13
  SAY @17714
  IF ~~ THEN EXIT
END

IF WEIGHT #13 ~RandomNum(11,11)~ THEN BEGIN 14
  SAY @17743
  IF ~~ THEN REPLY @17748 GOTO 15
  IF ~~ THEN REPLY @17752 GOTO 16
END

IF ~~ THEN BEGIN 15
  SAY @17754
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16
  SAY @17755
  IF ~~ THEN EXIT
END

IF WEIGHT #12 ~RandomNum(11,10)~ THEN BEGIN 17
  SAY @17982
  IF ~~ THEN EXIT
END
