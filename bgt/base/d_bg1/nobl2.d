BEGIN ~nobl2~

IF ~True()~ THEN BEGIN 0
  SAY @3340
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 1
  SAY @6320
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @9140
  IF ~~ THEN EXIT
END
