BEGIN ~nestor~

IF ~True()~ THEN BEGIN 0
  SAY @18337
  IF ~~ THEN REPLY @18339 GOTO 1
  IF ~~ THEN REPLY @18341 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @18343
  IF ~~ THEN DO ~CreateCreature("CAVENE",[4361.1455],0)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @18349
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @18352
  IF ~~ THEN DO ~CreateCreature("CAVENE",[4361.1455],0)
Enemy()~ EXIT
END
