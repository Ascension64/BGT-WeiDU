BEGIN ~prost3~

IF ~Gender(LastTalkedToBy,MALE)~ THEN BEGIN 0
  SAY @8233
  IF ~~ THEN EXIT
END

IF ~Gender(LastTalkedToBy,FEMALE)~ THEN BEGIN 1
  SAY @8234
  IF ~~ THEN EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 2
  SAY @8235
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @9103
  IF ~~ THEN EXIT
END
