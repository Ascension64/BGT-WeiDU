BEGIN ~cauter~

IF ~True()~ THEN BEGIN 0
  SAY @19261
  IF ~~ THEN REPLY @19262 GOTO 1
  IF ~~ THEN REPLY @19263 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @19264
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @19265
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @19266
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
