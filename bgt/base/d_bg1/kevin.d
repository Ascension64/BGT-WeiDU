BEGIN ~kevin~

IF ~True()~ THEN BEGIN 0
  SAY @11260
  IF ~~ THEN REPLY @11263 DO ~EscapeArea()~ EXIT
  IF ~~ THEN REPLY @11264 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @11265
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
