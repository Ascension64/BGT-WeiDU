BEGIN ~bentha~

IF ~Dead("ZORDRAL")~ THEN BEGIN 0
  SAY @18757
  IF ~~ THEN REPLY @18760 GOTO 1
  IF ~~ THEN REPLY @18761 GOTO 2
  IF ~~ THEN REPLY @18762 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @18763
  IF ~~ THEN DO ~GiveItem("POTN20",LastTalkedToBy)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @18764
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @18765
  IF ~~ THEN DO ~GiveItem("POTN09",LastTalkedToBy)
EscapeArea()~ EXIT
END

IF ~True()~ THEN BEGIN 4
  SAY @11865
  IF ~~ THEN EXIT
END
