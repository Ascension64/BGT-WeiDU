BEGIN ~noblbas~

IF ~RandomNum(4,1)~ THEN BEGIN 0
  SAY @9780
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,2)~ THEN BEGIN 1
  SAY @9781
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,3)~ THEN BEGIN 2
  SAY @9782
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,4)~ THEN BEGIN 3
  SAY @9851
  IF ~~ THEN EXIT
END
