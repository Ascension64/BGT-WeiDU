BEGIN ~nobl11~

IF WEIGHT #0 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @7489
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~True()~ THEN BEGIN 1
  SAY @7490
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~StateCheck(Myself,STATE_CHARMED)
Global("A6Charmed","LOCALS",0)~ THEN BEGIN 2
  SAY @7491
  IF ~~ THEN DO ~SetGlobal("A6Charmed","LOCALS",1)
GiveGoldForce(10)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @9145
  IF ~~ THEN EXIT
END
