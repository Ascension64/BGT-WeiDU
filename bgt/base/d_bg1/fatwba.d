BEGIN ~fatwba~

IF ~RandomNum(3,1)~ THEN BEGIN 0
  SAY @13989
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,2)~ THEN BEGIN 1
  SAY @13990
  IF ~~ THEN EXIT
END

IF ~false()~ THEN BEGIN 2
  SAY @13991
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,3)~ THEN BEGIN 3
  SAY @13992
  IF ~~ THEN EXIT
END
