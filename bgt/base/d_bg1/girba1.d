BEGIN ~girba1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8833
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @8834
  IF ~~ THEN EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 2
  SAY @8835
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @9023
  IF ~~ THEN EXIT
END
