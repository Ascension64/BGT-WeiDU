BEGIN ~ftowb3~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8375
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @8376
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(2)~ THEN BEGIN 2
  SAY @8377
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 3
  SAY @8378
  IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 4
  SAY @8379
  IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 5
  SAY @8993
  IF ~~ THEN EXIT
END
