BEGIN ~childulg~

IF ~RandomNum(5,1)~ THEN BEGIN 0
  SAY @21305
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,2)~ THEN BEGIN 1
  SAY @21306
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,3)~ THEN BEGIN 2
  SAY @21307
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,4)~ THEN BEGIN 3
  SAY @21309
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,5)~ THEN BEGIN 4
  SAY @21310
  IF ~~ THEN EXIT
END
