BEGIN ~thieff~

IF ~RandomNum(3,1)~ THEN BEGIN 0
  SAY @14196
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,2)~ THEN BEGIN 1
  SAY @14392
  IF ~~ THEN EXIT
END

IF ~false()~ THEN BEGIN 2
  SAY @14393
  IF ~~ THEN EXIT
END

IF ~false()~ THEN BEGIN 3
  SAY @14394
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,3)~ THEN BEGIN 4
  SAY @14631
  IF ~~ THEN EXIT
END
