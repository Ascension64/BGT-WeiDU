BEGIN ~pumberl~

IF ~True()~ THEN BEGIN 0
  SAY @1398
  IF ~Global("JALAPPEAR","GLOBAL",0)~ THEN REPLY @1409 GOTO 1
  IF ~~ THEN REPLY @1410 GOTO 2
  IF ~~ THEN REPLY @1411 GOTO 3
  IF ~!Dead("Tenya")
Global("TalkedToTenya","GLOBAL",1)
Global("TENAPPEAR","GLOBAL",0)~ THEN REPLY @1412 GOTO 7
END

IF ~~ THEN BEGIN 1
  SAY @1399
  IF ~~ THEN REPLY @1413 GOTO 5
  IF ~~ THEN REPLY @1414 DO ~TakePartyGold(50)~ GOTO 6
END

IF ~~ THEN BEGIN 2
  SAY @1400
  IF ~~ THEN DO ~Wait(10)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @1401
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @1402
  IF ~~ THEN DO ~Wait(10)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @1403
  IF ~~ THEN REPLY @1416 EXIT
  IF ~~ THEN REPLY @1417 DO ~TakePartyGold(100)~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @1404
  IF ~~ THEN DO ~SetGlobal("JALAPPEAR","GLOBAL",1)
CreateCreature("JALANT",[459.531],3)
ActionOverride("Jalantha",Dialogue([PC]))~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @1405
  IF ~~ THEN DO ~SetGlobal("TENAPPEAR","GLOBAL",1)
CreateCreature("TENYA2",[536.648],3)
ActionOverride("Tenya2",SetNumTimesTalkedTo(1))
ActionOverride("Tenya2",Dialogue([PC]))~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @1406
  IF ~~ THEN REPLY @1418 GOTO 9
  IF ~~ THEN REPLY @1419 GOTO 10
END

IF ~~ THEN BEGIN 9
  SAY @1407
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10
  SAY @1408
  IF ~~ THEN DO ~CreateCreature("JALANT",[216.677],3)
ActionOverride("Jalantha",Dialogue([PC]))~ EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 11
  SAY @6366
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12
  SAY @9106
  IF ~~ THEN EXIT
END
