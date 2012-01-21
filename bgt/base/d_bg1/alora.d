BEGIN ~alora~

IF WEIGHT #1 ~NumTimesTalkedTo(0)
GlobalLT("ENDOFBG1","GLOBAL",2)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN BEGIN 0
  SAY @3027
  IF ~~ THEN REPLY @3030 GOTO 6
  IF ~~ THEN REPLY @3031 GOTO 5
  IF ~~ THEN REPLY @3034 GOTO 11
END

IF WEIGHT #2 ~NumTimesTalkedTo(0)
GlobalLT("ENDOFBG1","GLOBAL",2)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN BEGIN 1
  SAY @3028
  IF ~~ THEN REPLY @3029 GOTO 6
  IF ~~ THEN REPLY @3032 GOTO 5
  IF ~~ THEN REPLY @3033 GOTO 11
END

IF WEIGHT #3 ~NumTimesTalkedTo(0)
GlobalLT("ENDOFBG1","GLOBAL",2)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN BEGIN 2
  SAY @3035
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF WEIGHT #4 ~NumTimesTalkedTo(1)
GlobalLT("ENDOFBG1","GLOBAL",2)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN BEGIN 3
  SAY @3036
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~NumTimesTalkedTo(1)
GlobalLT("ENDOFBG1","GLOBAL",2)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN BEGIN 4
  SAY @3039
  IF ~~ THEN REPLY @3040 GOTO 6
  IF ~~ THEN REPLY @3041 GOTO 5
  IF ~~ THEN REPLY @3042 GOTO 11
END

IF ~~ THEN BEGIN 5
  SAY @3043
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @3044
  IF ~~ THEN DO ~DialogInterrupt(FALSE)
SetGlobal("AloraLoots","Global",1)
MoveToPoint([769.849])
DialogInterrupt(TRUE)~ EXIT
END

IF WEIGHT #6 ~Global("AloraLoots","Global",1)~ THEN BEGIN 7
  SAY @3046
  IF ~~ THEN REPLY @3047 GOTO 9
  IF ~~ THEN REPLY @3048 GOTO 8
  IF ~~ THEN REPLY @3049 GOTO 5
END

IF ~~ THEN BEGIN 8
  SAY @3050
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @3051
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)
GlobalLT("ENDOFBG1","GLOBAL",2)
~ THEN BEGIN 10
  SAY @5748
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11
  SAY @14199
  IF ~~ THEN DO ~CreateCreature("FLAM",[802.905],0)
CreateCreature("FLAM",[850.886],0)
EscapeArea()~ EXIT
END

IF WEIGHT #7 ~False()~ THEN BEGIN 12
  SAY @14201
  IF ~~ THEN DO ~CreateCreature("FLAM",[802.905],0)
CreateCreature("FLAM",[850.886],0)
EscapeArea()
~ EXIT
END

IF ~False()~ THEN BEGIN 13
  SAY @14358
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~False()~ THEN BEGIN 14
  SAY @14359
  IF ~~ THEN DO ~LeaveParty()
SetDialog("Alorap")
~ EXIT
END