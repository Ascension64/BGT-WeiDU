BEGIN ~xzar~

IF ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy(Myself),NEUTRAL_UPPER)
!Dead("Montaron")~ THEN BEGIN 0
  SAY @108
  IF ~~ THEN DO ~SetGlobal("SpokeToXzar","GLOBAL",1)~ EXTERN ~MONTAR~ 0
END

IF ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy(Myself),HOSTILE_UPPER)
ReactionLT(LastTalkedToBy(Myself),FRIENDLY_LOWER)
!Dead("Montaron")~ THEN BEGIN 1
  SAY @109
  IF ~~ THEN DO ~SetGlobal("SpokeToXzar","GLOBAL",1)~ EXTERN ~MONTAR~ 1
END

IF ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy(Myself),NEUTRAL_LOWER)
!Dead("Montaron")~ THEN BEGIN 2
  SAY @110
  IF ~~ THEN EXTERN ~MONTAR~ 2
END

IF ~~ THEN BEGIN 3
  SAY @102
  IF ~~ THEN REPLY @241 GOTO 7
  IF ~~ THEN REPLY @242 GOTO 4
  IF ~~ THEN REPLY @243 GOTO 18
END

IF ~~ THEN BEGIN 4
  SAY @103
  IF ~~ THEN EXTERN ~MONTAR~ 3
END

IF ~~ THEN BEGIN 5
  SAY @104
  IF ~~ THEN EXTERN ~MONTAR~ 4
END

IF ~~ THEN BEGIN 6
  SAY @217
  IF ~~ THEN EXTERN ~MONTAR~ 5
END

IF ~~ THEN BEGIN 7
  SAY @218
  IF ~~ THEN DO ~GiveItem("POTN08",LastTalkedToBy)~ EXTERN ~MONTAR~ 5
END

IF ~~ THEN BEGIN 8
  SAY @219
  IF ~~ THEN EXTERN ~MONTAR~ 6
END

IF ~~ THEN BEGIN 9
  SAY @220
  IF ~~ THEN REPLY @245 GOTO 10
  IF ~~ THEN REPLY @246 GOTO 11
  IF ~ReactionGT(LastTalkedToBy(Myself),HOSTILE_UPPER)~ THEN REPLY @247 GOTO 12
  IF ~ReactionLT(LastTalkedToBy(Myself),NEUTRAL_LOWER)~ THEN REPLY @248 GOTO 13
END

IF ~~ THEN BEGIN 10
  SAY @221
  IF ~~ THEN JOURNAL @310789 EXTERN ~MONTAR~ 10
END

IF ~~ THEN BEGIN 11
  SAY @222
  IF ~~ THEN EXTERN ~MONTAR~ 9
END

IF ~~ THEN BEGIN 12
  SAY @223
  IF ~~ THEN JOURNAL @310789 EXTERN ~MONTAR~ 7
END

IF ~~ THEN BEGIN 13
  SAY @224
  IF ~~ THEN EXTERN ~MONTAR~ 8
END

IF WEIGHT #8 ~False()
GlobalTimerExpired("Xzar","GLOBAL")
Global("VisitNashkell","GLOBAL",1)
Global("Chapter","GLOBAL",1)~ THEN BEGIN 14
  SAY @225
  IF ~~ THEN DO ~SetGlobal("VisitNashkell","GLOBAL",2)
SetGlobalTimer("Xzar","GLOBAL",ONE_DAY)~ EXIT
END

IF WEIGHT #9 ~False()
GlobalTimerExpired("Xzar","GLOBAL")
Global("VisitNashkell","GLOBAL",2)
Global("Chapter","GLOBAL",1)~ THEN BEGIN 15
  SAY @226
  IF ~~ THEN DO ~SetGlobal("VisitNashkell","GLOBAL",3)
SetGlobalTimer("Xzar","GLOBAL",ONE_DAY)~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @227
  IF ~~ THEN EXIT
END

IF WEIGHT #10 ~False()
GlobalTimerExpired("Xzar","GLOBAL")
Global("VisitNashkell","GLOBAL",3)
Global("Chapter","GLOBAL",1)
!Dead("Montaron")~ THEN BEGIN 17
  SAY @228
  IF ~~ THEN DO ~SetGlobal("VisitNashkell","GLOBAL",4)~ EXTERN ~MONTAR~ 9
END

IF ~~ THEN BEGIN 18
  SAY @244
  IF ~~ THEN EXTERN ~MONTAR~ 9
END

IF ~~ THEN BEGIN 19
  SAY @4306
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 20
  SAY @6435
  IF ~~ THEN EXIT
END

IF WEIGHT #11 ~False()~ THEN BEGIN 21
  SAY @15581
  IF ~~ THEN REPLY @17825 DO ~ActionOverride("Montaron",JoinParty())
JoinParty()~ EXIT
  IF ~~ THEN REPLY @17826 EXIT
END

IF WEIGHT #1 ~False()~ THEN BEGIN 22
  SAY @15915
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~False()~ THEN BEGIN 23
  SAY @15916
  IF ~~ THEN DO ~~ EXIT
END

IF WEIGHT #3 ~False()~ THEN BEGIN 24
  SAY @16044
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~False()~ THEN BEGIN 25
  SAY @16045
  IF ~~ THEN DO ~~ EXIT
END
