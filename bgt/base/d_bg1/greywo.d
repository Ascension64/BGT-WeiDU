BEGIN ~greywo~

IF ~~ THEN BEGIN 0
  SAY @667
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 1
  SAY @668
  IF ~~ THEN EXTERN ~PRISM~ 6
END

IF ~~ THEN BEGIN 2
  SAY @669
  IF ~Global("Greywolf","GLOBAL",0)~ THEN REPLY @4833 GOTO 4
  IF ~Global("Greywolf","GLOBAL",0)~ THEN REPLY @4834 GOTO 5
  IF ~Global("Greywolf","GLOBAL",0)~ THEN REPLY @4836 GOTO 6
  IF ~Global("Greywolf","GLOBAL",1)~ THEN REPLY @4838 GOTO 3
  IF ~Global("Greywolf","GLOBAL",1)~ THEN REPLY @4840 GOTO 3
  IF ~Global("Greywolf","GLOBAL",1)~ THEN REPLY @4841 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @670
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @671
  IF ~~ THEN DO ~Attack("Prism")~ EXTERN ~PRISM~ 9
END

IF ~~ THEN BEGIN 5
  SAY @672
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @673
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 7
  SAY @6949
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @9028
  IF ~~ THEN EXIT
END
