BEGIN ~eldoth~

IF WEIGHT #5 ~NumTimesTalkedTo(0)
GlobalLT("ENDOFBG1","GLOBAL",2)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN BEGIN 0
  SAY @867
  IF ~~ THEN REPLY @886 GOTO 5
  IF ~~ THEN REPLY @887 GOTO 3
END

IF WEIGHT #6 ~NumTimesTalkedTo(0)
GlobalLT("ENDOFBG1","GLOBAL",2)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN BEGIN 1
  SAY @868
  IF ~~ THEN REPLY @888 GOTO 5
  IF ~~ THEN REPLY @889 GOTO 3
END

IF WEIGHT #7 ~NumTimesTalkedTo(0)
GlobalLT("ENDOFBG1","GLOBAL",2)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN BEGIN 2
  SAY @869
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @870
  IF ~~ THEN DO ~SetNumTimesTalkedTo(0)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @871
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @872
  IF ~~ THEN REPLY @890 UNSOLVED_JOURNAL @310107 GOTO 7
  IF ~~ THEN REPLY @891 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @873
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @874
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF WEIGHT #8 ~False()
InParty("Eldoth")~ THEN BEGIN 8
  SAY @875
  IF ~~ THEN REPLY @892 GOTO 9
  IF ~~ THEN REPLY @893 GOTO 10
END

IF ~False()~ THEN BEGIN 9
  SAY @876
  IF ~~ THEN REPLY @894 DO ~EscapeArea()~ EXIT
  IF ~~ THEN REPLY @895 GOTO 10
END

IF ~False()~ THEN BEGIN 10
  SAY @877
  IF ~~ THEN DO ~SetGlobal("SilvershieldEstate","GLOBAL",1)~ EXIT
END

IF ~False()~ THEN BEGIN 11
  SAY @878
  IF ~~ THEN EXIT
END

IF WEIGHT #9 ~False()
Global("SilvershieldEstate","GLOBAL",1)~ THEN BEGIN 12
  SAY @879
  IF ~~ THEN DO ~SetGlobal("SilvershieldEstate","GLOBAL",2)~ EXIT
END

IF WEIGHT #10 ~False()
Global("SilvershieldEstate","GLOBAL",2)~ THEN BEGIN 13
  SAY @880
  IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 14
  SAY @881
  IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 15
  SAY @882
  IF ~~ THEN EXTERN ~SKIE~ 6
END

IF ~False()~ THEN BEGIN 16
  SAY @883
  IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 17
  SAY @884
  IF ~~ THEN DO ~ActionOverride("Skie",EscapeArea())
EscapeArea()~ EXIT
END

IF ~False()~ THEN BEGIN 18
  SAY @885
  IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 19
  SAY @6128
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 20
  SAY @6129
  IF ~~ THEN EXIT
END

IF WEIGHT #14 ~GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 21
  SAY @6130
  IF ~~ THEN REPLY @10893 EXIT
  IF ~~ THEN REPLY @10894 GOTO 5
END

IF WEIGHT #1 ~False()~ THEN BEGIN 22
  SAY @16160
  IF ~~ THEN DO ~~ EXIT
END

IF WEIGHT #2 ~False()~ THEN BEGIN 23
  SAY @16161
  IF ~~ THEN DO ~~ EXIT
END

IF WEIGHT #3 ~False()~ THEN BEGIN 24
  SAY @16162
  IF ~~ THEN DO ~~ EXIT
END

IF WEIGHT #4 ~False()~ THEN BEGIN 25
  SAY @16163
  IF ~~ THEN DO ~~ EXIT
END
