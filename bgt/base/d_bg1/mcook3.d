BEGIN ~mcook3~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @7473
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @7474
  IF ~~ THEN EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 2
  SAY @7475
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @9185
  IF ~~ THEN EXIT
END
