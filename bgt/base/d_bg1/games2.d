BEGIN ~games2~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8362
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @8363
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 2
  SAY @8364
  IF ~~ THEN EXIT
END
