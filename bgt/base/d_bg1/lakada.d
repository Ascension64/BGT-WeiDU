BEGIN ~lakada~

IF ~True()~ THEN BEGIN 0
  SAY @18773
  IF ~~ THEN REPLY @18775 GOTO 1
  IF ~~ THEN REPLY @18776 GOTO 6
END

IF ~~ THEN BEGIN 1
  SAY @18778
  IF ~~ THEN REPLY @18780 GOTO 2
  IF ~~ THEN REPLY @18782 GOTO 5
END

IF ~~ THEN BEGIN 2
  SAY @18784
  IF ~~ THEN REPLY @18785 GOTO 3
  IF ~~ THEN REPLY @18786 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @18787
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @18789
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @18792
  IF ~~ THEN DO ~CreateCreature("IRONGU",[1650.582],0)
CreateCreature("IRONGU",[1650.582],0)
CreateCreature("IRONGU",[1650.582],0)
CreateCreature("IRONGU",[1650.582],0)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @18794
  IF ~~ THEN DO ~CreateCreature("IRONGU",[1650.582],0)
CreateCreature("IRONGU",[1650.582],0)
CreateCreature("IRONGU",[1650.582],0)
CreateCreature("IRONGU",[1650.582],0)
Enemy()~ EXIT
END
