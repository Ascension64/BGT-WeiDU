BEGIN ~ironm2~

IF WEIGHT #0 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @7654
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @7655
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~True()~ THEN BEGIN 2
  SAY @7656
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~StateCheck(Myself,STATE_CHARMED)
Global("A6Charmed","LOCALS",0)~ THEN BEGIN 3
  SAY @7657
  IF ~~ THEN DO ~SetGlobal("A6Charmed","LOCALS",1)
GiveGoldForce(25)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @9206
  IF ~~ THEN EXIT
END
