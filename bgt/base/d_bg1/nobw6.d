BEGIN ~nobw6~

IF ~RandomNum(2,1)~ THEN BEGIN 0
  SAY @8263
  IF ~~ THEN EXIT
END

IF ~RandomNum(2,2)~ THEN BEGIN 1
  SAY @8264
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @8265
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8266
  IF ~~ THEN EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)
Global("ENDOFBG1","GLOBAL",0)~ THEN BEGIN 4
  SAY @8267
  IF ~~ THEN JOURNAL @310478 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @9128
  IF ~~ THEN EXIT
END
