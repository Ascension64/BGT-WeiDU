BEGIN ~mtbe10~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8151
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @8152
  IF ~~ THEN EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 2
  SAY @8153
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @9056
  IF ~~ THEN EXIT
END
