//TS compatibility 6.03
ADD_STATE_TRIGGER ~coranp~ 0 ~Global("ENDOFBG1","GLOBAL",2)~ 1 3 8


APPEND ~coranp~

IF WEIGHT #-1 ~Global("IWasKickedOut","LOCALS",1)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s0
  SAY @15453
  IF ~~ THEN REPLY @15454 GOTO s1
  IF ~~ THEN REPLY @15455 GOTO s2
END

IF ~~ THEN BEGIN s1
  SAY @15456
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN s2
  SAY @15457
  IF ~~ THEN EXIT
END

IF WEIGHT #-4 ~Global("IWasKickedOut","LOCALS",0)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s3
  SAY @15432
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1)~ EXIT

END

IF WEIGHT #-3 ~Global("IWasKickedOut","LOCALS",0)
GlobalLT("ENDOFBG1","GLOBAL",2)
HappinessLT(Myself,0)~ THEN BEGIN s4
  SAY @15433
  IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~StateCheck(Myself,STATE_CHARMED)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s5
  SAY @16796
  IF ~~ THEN EXIT
END

END
