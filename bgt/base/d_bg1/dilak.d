BEGIN ~dilak~

IF ~True()~ THEN BEGIN 0
  SAY @19289
  IF ~~ THEN REPLY @19290 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @19291
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
