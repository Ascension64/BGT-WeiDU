BEGIN ~dink~

IF ~True()~ THEN BEGIN 0
  SAY @18641
  IF ~~ THEN REPLY @18642 GOTO 1
  IF ~~ THEN REPLY @18643 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @18644
  IF ~~ THEN DO ~GiveItem("DAGG07",LastTalkedToBy)
EscapeArea()~ UNSOLVED_JOURNAL @310077 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @18645
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~False()~ THEN BEGIN 3
  SAY @18647
  IF ~~ THEN EXIT
END