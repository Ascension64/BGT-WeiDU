BEGIN ~housg6~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8386
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @8387
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @8388
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(2)~ THEN BEGIN 3
  SAY @8389
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @8390
  IF ~~ THEN EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 5
  SAY @8391
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @9257
  IF ~~ THEN EXIT
END
