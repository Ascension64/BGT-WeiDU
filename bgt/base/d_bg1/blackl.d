BEGIN ~blackl~

IF WEIGHT #1 ~True()~ THEN BEGIN 0
  SAY @2842
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2843
  IF ~~ THEN DO ~StartStore("stoblack",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @2844
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @2845
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 4
  SAY @6393
  IF ~~ THEN EXIT
END
