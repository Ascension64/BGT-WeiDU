BEGIN ~dopmer~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @16585
  IF ~~ THEN REPLY @16586 DO ~SetGlobal("Laola","GLOBAL",1)
SetGlobal("CheckedSevenSuns","GLOBAL",2)~ GOTO 1
  IF ~~ THEN REPLY @16587 DO ~SetGlobal("Laola","GLOBAL",1)
SetGlobal("CheckedSevenSuns","GLOBAL",2)~ GOTO 2
  IF ~~ THEN REPLY @16588 DO ~SetGlobal("Laola","GLOBAL",1)
SetGlobal("CheckedSevenSuns","GLOBAL",2)~ GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @16589
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @16591
  IF ~~ THEN REPLY @16592 GOTO 4
  IF ~~ THEN REPLY @16593 GOTO 5
  IF ~~ THEN REPLY @16594 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @16595
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @16596
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @16597
  IF ~~ THEN REPLY @16598 GOTO 3
  IF ~~ THEN REPLY @16599 GOTO 4
  IF ~~ THEN REPLY @16600 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @16601
  IF ~~ THEN DO ~SetGlobal("Doppleganger","GLOBAL",1)~ EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 7
  SAY @16602
  IF ~~ THEN REPLY @16605 GOTO 8
  IF ~~ THEN REPLY @16603 GOTO 9
  IF ~~ THEN REPLY @16606 GOTO 9
END

IF ~~ THEN BEGIN 8
  SAY @16607
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY @16608
  IF ~~ THEN DO ~SetGlobal("Doppleganger","GLOBAL",1)~ EXIT
END

IF ~NumTimesTalkedTo(2)~ THEN BEGIN 10
  SAY @16609
  IF ~~ THEN REPLY @16610 GOTO 11
  IF ~~ THEN REPLY @16611 GOTO 12
  IF ~~ THEN REPLY @16612 GOTO 13
END

IF ~~ THEN BEGIN 11
  SAY @16613
  IF ~~ THEN DO ~SetGlobal("Doppleganger","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @16614
  IF ~~ THEN DO ~SetGlobal("Doppleganger","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @16615
  IF ~~ THEN DO ~SetGlobal("Doppleganger","GLOBAL",1)~ EXIT
END
