BEGIN ~narcil~

IF ~True()~ THEN BEGIN 0
  SAY @18354
  IF ~~ THEN REPLY @18356 GOTO 1
  IF ~~ THEN REPLY @18358 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @18359
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @18366
  IF ~~ THEN REPLY @18376 GOTO 3
  IF ~~ THEN REPLY @18383 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @18384
  IF ~~ THEN DO ~CreateCreature("JELLYGR",[3777.2859],0)
CreateCreature("JELLYGR",[3777.2859],0)
CreateCreature("JELLYGR",[3777.2859],0)
CreateCreature("JELLYGR",[3777.2859],0)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @18388
  IF ~~ THEN DO ~CreateCreature("JELLMU",[3777.2859],0)
CreateCreature("JELLMU",[3777.2859],0)
Enemy()~ EXIT
END
