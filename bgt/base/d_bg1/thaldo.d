BEGIN ~thaldo~

IF WEIGHT #2 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1459
  IF ~~ THEN REPLY @1477 GOTO 1
  IF ~~ THEN REPLY @1478 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @1460
  IF ~~ THEN REPLY @1479 DO ~SetGlobal("SearchIronThrone","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY @1480 DO ~SetGlobal("SearchIronThrone","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @1481 DO ~SetGlobal("SearchIronThrone","GLOBAL",1)~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @1461
  IF ~~ THEN REPLY @1482 UNSOLVED_JOURNAL @310132 GOTO 3
  IF ~~ THEN REPLY @1483 DO ~EscapeArea()~ EXIT
  IF ~~ THEN REPLY @1484 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @1462
  IF ~~ THEN REPLY @1485 GOTO 2
  IF ~~ THEN REPLY @1486 DO ~EscapeArea()~ EXIT
  IF ~~ THEN REPLY @1487 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @1463
  IF ~~ THEN REPLY @1488 DO ~EscapeArea()~ EXIT
  IF ~~ THEN REPLY @1489 DO ~Enemy()~ EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 5
  SAY @6072
  IF ~~ THEN UNSOLVED_JOURNAL @310133 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @9073
  IF ~~ THEN EXIT
END
