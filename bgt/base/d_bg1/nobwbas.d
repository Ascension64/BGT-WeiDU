BEGIN ~nobwbas~

IF ~RandomNum(4,1)~ THEN BEGIN 0
  SAY @9852
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,2)~ THEN BEGIN 1
  SAY @9853
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,3)~ THEN BEGIN 2
  SAY @9854
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,4)~ THEN BEGIN 3
  SAY @9855
  IF ~~ THEN EXIT
END
