BEGIN ~droth~

IF WEIGHT #1 ~NumTimesTalkedTo(0)
!Dead("Shoal")~ THEN BEGIN 0
  SAY @2001
  IF ~~ THEN EXTERN ~SHOAL~ 10
END

IF ~~ THEN BEGIN 1
  SAY @2002
  IF ~~ THEN EXTERN ~SHOAL~ 11
END

IF ~~ THEN BEGIN 2
  SAY @2003
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @2004
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @2005
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @2006
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF WEIGHT #0 ~NumTimesTalkedTo(0)
Dead("Shoal")~ THEN BEGIN 6
  SAY @11763
  IF ~~ THEN EXIT
END
