ADD_STATE_TRIGGER ~imoen2p~ 0 ~Global("ENDOFBG1","GLOBAL",2)~ 3 4 6 7
ADD_STATE_TRIGGER ~imoen2p~ 4 ~!Global("Chapter","GLOBAL",1)~ 7

APPEND ~imoen2p~

//BG1 part

IF ~GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN s8
  SAY @16408
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1)~ EXIT
END

IF ~False()~ THEN BEGIN s9
  SAY @16411
  IF ~~ THEN DO ~~ EXIT
END

IF ~GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",1)~ THEN BEGIN s10
  SAY @16412
  IF ~~ THEN REPLY @16413 GOTO s11
  IF ~~ THEN REPLY @16414 GOTO s12
END

IF ~~ THEN BEGIN s11
  SAY @16415
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN s12
  SAY @16416
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",0)
JoinParty()~ EXIT
END

END
