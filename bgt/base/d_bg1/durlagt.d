BEGIN ~durlagt~

IF WEIGHT #4 ~True()~ THEN BEGIN 0
  SAY @23450
  IF ~~ THEN REPLY @23451 GOTO 1
  IF ~~ THEN REPLY @23452 GOTO 2
  IF ~~ THEN REPLY @23453 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @23454
  IF ~~ THEN UNSOLVED_JOURNAL @310626 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @23455
  IF ~~ THEN UNSOLVED_JOURNAL @310626 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @23456
  IF ~~ THEN UNSOLVED_JOURNAL @310626 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @23457
  IF ~~ THEN UNSOLVED_JOURNAL @310627 EXIT
END

IF WEIGHT #1 ~Global("vikingx","GLOBAL",2)~ THEN BEGIN 5
  SAY @23460
  IF ~~ THEN UNSOLVED_JOURNAL @310628 EXIT
END

IF WEIGHT #0 ~Global("Durtombx","GLOBAL",1)
Global("DurStatx","GLOBAL",1)
Global("vikingx","GLOBAL",2)~ THEN BEGIN 6
  SAY @23462
  IF ~~ THEN REPLY @23463 GOTO 7
  IF ~~ THEN REPLY @23464 GOTO 8
  IF ~~ THEN REPLY @23465 GOTO 9
END

IF ~~ THEN BEGIN 7
  SAY @23466
  IF ~~ THEN DO ~SetGlobal("TeleRoom","GLOBAL",1)
DialogInterrupt(FALSE)
MoveToPoint([3923.881])
DialogInterrupt(TRUE)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @23467
  IF ~~ THEN DO ~SetGlobal("TeleRoom","GLOBAL",1)
DialogInterrupt(FALSE)
MoveToPoint([3923.881])
DialogInterrupt(TRUE)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @23468
  IF ~~ THEN DO ~SetGlobal("TeleRoom","GLOBAL",1)
DialogInterrupt(FALSE)
MoveToPoint([3923.881])
DialogInterrupt(TRUE)
DestroySelf()~ EXIT
END

IF WEIGHT #2 ~Global("Durtombx","GLOBAL",1)~ THEN BEGIN 10
  SAY @23469
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~Global("DurStatx","GLOBAL",1)~ THEN BEGIN 11
  SAY @23470
  IF ~~ THEN EXIT
END
