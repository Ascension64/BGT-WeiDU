BEGIN ~fatmba~

IF ~RandomNum(4,1)~ THEN BEGIN 0
  SAY @13983
  IF ~~ THEN EXIT
END

IF ~false()~ THEN BEGIN 1
  SAY @13984
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,2)~ THEN BEGIN 2
  SAY @13985
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,3)~ THEN BEGIN 3
  SAY @13986
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,4)~ THEN BEGIN 4
  SAY @13988
  IF ~~ THEN EXIT
END
