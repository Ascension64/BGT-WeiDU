BEGIN ~feloni~

IF ~True()~ THEN BEGIN 0
  SAY @10456
  IF ~~ THEN REPLY @10457 GOTO 1
  IF ~Global("Baldurian","GLOBAL",1)~ THEN REPLY @10458 GOTO 2
  IF ~Global("Baldurian","GLOBAL",1)~ THEN REPLY @10460 GOTO 3
  IF ~~ THEN REPLY @10557 GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @10459
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @10461
  IF ~~ THEN DO ~CreateCreature("FLAMEN",[302.639],0)
CreateCreature("FLAMEN",[302.639],0)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @10462
  IF ~~ THEN DO ~TakePartyGold(300)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @10558
  IF ~~ THEN EXIT
END
