BEGIN ~bgmtown2~

IF WEIGHT #2 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @3316
  IF ~~ THEN DO ~SendTrigger("FTownNash3",1)~ EXTERN ~FARM4~ 1
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 1
  SAY @6293
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @9171
  IF ~~ THEN EXIT
END
