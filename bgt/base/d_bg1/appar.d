BEGIN ~appar~

IF ~True()~ THEN BEGIN 0
  SAY @23177
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @23187
  IF ~~ THEN DO ~Kill("APPAR")~ EXIT
END
