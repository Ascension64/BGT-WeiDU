BEGIN ~taxek~

IF ~True()~ THEN BEGIN 0
  SAY @18898
  IF ~~ THEN REPLY @18899 GOTO 1
  IF ~~ THEN REPLY @18900 GOTO 3
  IF ~~ THEN REPLY @10093 GOTO 6
  IF ~~ THEN REPLY @11862 DO ~ActionOverride("MICHAEL",EscapeArea())
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @18901
  IF ~~ THEN REPLY @18902 GOTO 3
  IF ~~ THEN REPLY @18903 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @18904
  IF ~~ THEN DO ~GivePartyGold(210)
ActionOverride("MICHAEL",EscapeArea())
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @18905
  IF ~~ THEN REPLY @18906 GOTO 4
  IF ~~ THEN REPLY @18907 GOTO 4
  IF ~~ THEN REPLY @18908 GOTO 4
  IF ~~ THEN REPLY @18909 GOTO 5
  IF ~~ THEN REPLY @18910 GOTO 4
  IF ~~ THEN REPLY @18911 GOTO 4
  IF ~~ THEN REPLY @18912 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @18913
  IF ~~ THEN DO ~ActionOverride("MICHAEL",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @18914
  IF ~~ THEN DO ~ActionOverride("MICHAEL",EscapeArea())
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @10094
  IF ~~ THEN DO ~ActionOverride("MICHAEL",Enemy())
Enemy()~ EXIT
END
