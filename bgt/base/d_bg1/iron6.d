BEGIN ~iron6~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @3983
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 1
  SAY @9214
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @9215
  IF ~~ THEN EXIT
END
