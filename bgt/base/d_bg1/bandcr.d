BEGIN ~bandcr~

IF ~NumTimesTalkedTo(0)
Global("JoinedBandits","GLOBAL",5)~ THEN BEGIN 0
  SAY @1871
  IF ~~ THEN DO ~~ EXTERN ~RAIKEN~ 12
END

IF ~~ THEN BEGIN 1
  SAY @1872
  IF ~~ THEN EXTERN ~BGTAZOK~ 0
END

IF ~NumTimesTalkedTo(0)
Global("JoinedBandits","GLOBAL",2)~ THEN BEGIN 2
  SAY @1873
  IF ~~ THEN DO ~~ EXTERN ~RAIKEN~ 13
END

IF ~~ THEN BEGIN 3
  SAY @1874
  IF ~~ THEN UNSOLVED_JOURNAL @310418 EXTERN ~BGTAZOK~ 3
END

IF ~NumTimesTalkedTo(0)
Global("JoinedBandits","GLOBAL",0)~ THEN BEGIN 4
  SAY @1877
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @1878
  IF ~~ THEN REPLY @1965 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @1879
  IF ~~ THEN DO ~Enemy()
  Shout(1)~ EXIT
END

IF ~False()~ THEN BEGIN 7
  SAY @1880
  IF ~~ THEN EXIT
END
