BEGIN ~sunin~

IF ~True()~ THEN BEGIN 0
  SAY @18951
  IF ~~ THEN REPLY @18952 GOTO 1
  IF ~~ THEN REPLY @18953 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @18954
  IF ~~ THEN DO ~CreateCreature("JOULAR",[494.355],0)
CreateCreature("MAKA",[773.386],0)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @18955
  IF ~~ THEN DO ~Enemy()~ EXIT
END
