ADD_STATE_TRIGGER ~chess~ 0 ~Global("ENDOFBG1","GLOBAL",2)~

APPEND ~chess~

IF ~GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s0
  SAY @23074
  IF ~~ THEN GOTO s1
END

IF ~~ THEN BEGIN s1
  SAY @23075
  IF ~~ THEN DO ~DestroySelf()~ EXIT
END

END
