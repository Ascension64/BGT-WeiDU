BEGIN ~mtob3~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @7512
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @7513
  IF ~~ THEN EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 2
  SAY @7514
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @9179
  IF ~~ THEN EXIT
END
