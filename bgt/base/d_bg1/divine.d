BEGIN ~divine~

IF WEIGHT #1 ~True()~ THEN BEGIN 0
  SAY @1352
  IF ~~ THEN REPLY @1362 EXIT
  IF ~~ THEN REPLY @1363 DO ~TakePartyGold(50)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1353
  IF ~!Dead("Rieltar")~ THEN REPLY @1364 GOTO 2
  IF ~~ THEN REPLY @1365 GOTO 9
  IF ~Global("HelpLothander","GLOBAL",1)~ THEN REPLY @1367 GOTO 4
  IF ~~ THEN REPLY @1366 GOTO 5
  IF ~Global("Chapter","GLOBAL",8)~ THEN REPLY @1368 GOTO 6
  IF ~Global("Chapter","GLOBAL",8)~ THEN REPLY @1369 GOTO 7
  IF ~Dead("Rieltar")~ THEN REPLY @1370 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @1354
  IF ~~ THEN DO ~SetGlobal("LothanderMove","GLOBAL",9)~ UNSOLVED_JOURNAL @310344 GOTO 8
END

IF ~~ THEN BEGIN 3
  SAY @1355
  IF ~~ THEN DO ~SetGlobal("LothanderMove","GLOBAL",9)~ UNSOLVED_JOURNAL @310345 GOTO 8
END

IF ~~ THEN BEGIN 4
  SAY @1356
  IF ~~ THEN DO ~SetGlobal("LothanderMove","GLOBAL",4)~ UNSOLVED_JOURNAL @310346 GOTO 8
END

IF ~~ THEN BEGIN 5
  SAY @1357
  IF ~~ THEN DO ~SetGlobal("LothanderMove","GLOBAL",9)~ JOURNAL @310763 GOTO 8
END

IF ~~ THEN BEGIN 6
  SAY @1358
  IF ~~ THEN DO ~SetGlobal("LothanderMove","GLOBAL",9)~ UNSOLVED_JOURNAL @310347 GOTO 8
END

IF ~~ THEN BEGIN 7
  SAY @1359
  IF ~~ THEN DO ~SetGlobal("LothanderMove","GLOBAL",9)~ JOURNAL @310348 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @1360
  IF ~~ THEN DO ~SetGlobalTimer("Diviner","GLOBAL",ONE_DAY)~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @1361
  IF ~~ THEN GOTO 8
END

IF WEIGHT #0 ~!NumTimesTalkedTo(0)
GlobalTimerNotExpired("Diviner","GLOBAL")~ THEN BEGIN 10
  SAY @6414
  IF ~~ THEN EXIT
END
