BEGIN ~noober~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @18494
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @18497
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(2)~ THEN BEGIN 2
  SAY @18498
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(3)~ THEN BEGIN 3
  SAY @18502
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(4)~ THEN BEGIN 4
  SAY @18507
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(5)~ THEN BEGIN 5
  SAY @18508
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(6)~ THEN BEGIN 6
  SAY @18509
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(7)~ THEN BEGIN 7
  SAY @18512
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(8)~ THEN BEGIN 8
  SAY @18514
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(9)~ THEN BEGIN 9
  SAY @18518
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToLT(31)~ THEN BEGIN 10
  SAY @18521
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(31)~ THEN BEGIN 11
  SAY @18522
  IF ~~ THEN DO ~AddexperienceParty(400)
EscapeArea()~ EXIT
END
