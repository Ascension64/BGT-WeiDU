BEGIN ~mcook5~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @7634
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @7635
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 2
  SAY @7636
  IF ~~ THEN EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 3
  SAY @7637
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @9183
  IF ~~ THEN EXIT
END
