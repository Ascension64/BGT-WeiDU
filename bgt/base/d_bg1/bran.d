BEGIN ~bran~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1679
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 1
  SAY @1681
  IF ~~ THEN EXIT
END
