BEGIN ~waiter~

IF WEIGHT #2 ~True()~ THEN BEGIN 0
  SAY @8383
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 1
  SAY @8385
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @9038
  IF ~~ THEN EXIT
END