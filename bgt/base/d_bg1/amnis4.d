BEGIN ~amnis4~

IF ~~ THEN BEGIN 0
  SAY @763
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1
  SAY @5753
  IF ~~ THEN UNSOLVED_JOURNAL @310310 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @8910
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,1)
GlobalLT("Chapter","GLOBAL",4)~ THEN BEGIN 3
  SAY @13947
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,2)~ THEN BEGIN 4
  SAY @13948
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,3)
GlobalLT("Chapter","GLOBAL",4)~ THEN BEGIN 5
  SAY @13949
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,4)
GlobalLT("Chapter","GLOBAL",4)~ THEN BEGIN 6
  SAY @13950
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,5)
GlobalLT("Chapter","GLOBAL",4)~ THEN BEGIN 7
  SAY @13951
  IF ~~ THEN EXIT
END

IF ~RandomNum(7,6)~ THEN BEGIN 8
  SAY @13952
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 9
  SAY @13953
  IF ~~ THEN EXIT
END
