BEGIN ~ftowb4~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8807
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @8808
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 2
  SAY @8809
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8810
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @8994
  IF ~~ THEN EXIT
END
