BEGIN ~flam7~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @7515
  IF ~~ THEN REPLY @7520 GOTO 1
  IF ~~ THEN REPLY @7521 GOTO 2
  IF ~~ THEN REPLY @7522 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @7516
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @7517
  IF ~~ THEN DO ~SendTrigger("FlamingFist7",1)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @7518
  IF ~~ THEN DO ~SendTrigger("FlamingFist7",1)~ EXIT
END

IF ~RandomNum(2,1)
StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 4
  SAY @7519
  IF ~~ THEN EXIT
END

IF ~RandomNum(2,2)
StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 5
  SAY @7523
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @9008
  IF ~~ THEN EXIT
END
