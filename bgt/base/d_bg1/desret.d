BEGIN ~desret~

IF ~True()~ THEN BEGIN 0
  SAY @18915
  IF ~~ THEN REPLY @18916 GOTO 1
  IF ~~ THEN REPLY @18917 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @18918
  IF ~~ THEN DO ~ActionOverride("VAYYA",EscapeArea())
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @18919
  IF ~~ THEN REPLY @18920 GOTO 1
  IF ~~ THEN REPLY @18921 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @18922
  IF ~~ THEN DO ~ActionOverride("VAYYA",Enemy())
Enemy()~ EXIT
END
