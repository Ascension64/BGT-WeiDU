ADD_STATE_TRIGGER ~kagaip~ 0 ~Global("ENDOFBG1","GLOBAL",2)~ 1 4


APPEND ~kagaip~

IF WEIGHT #-4 ~False()~ THEN BEGIN s0
  SAY @15798
  IF ~~ THEN DO ~~ EXIT
END

IF WEIGHT #-3 ~Global("IWasKickedOut","LOCALS",0)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s1
  SAY @15799
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1)~ EXIT
END

IF WEIGHT #-1 ~GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",1)~ THEN BEGIN s2
  SAY @15802
  IF ~~ THEN REPLY @15804 GOTO s3
  IF ~~ THEN REPLY @15807 GOTO s4
END

IF ~~ THEN BEGIN s3
  SAY @15806
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN s4
  SAY @15808
  IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~StateCheck(Myself,STATE_CHARMED)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s5
  SAY @16786
  IF ~~ THEN EXIT
END


END
