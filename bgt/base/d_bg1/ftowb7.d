BEGIN ~ftowb7~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8818
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @8819
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @8820
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 3
  SAY @8821
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @8997
  IF ~~ THEN EXIT
END
