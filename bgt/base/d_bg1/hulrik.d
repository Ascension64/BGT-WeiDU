BEGIN ~hulrik~

IF WEIGHT #0 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @14979
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~Global("XvartsDead","GLOBAL",8)
!Dead("HulriksCow")~ THEN BEGIN 1
  SAY @14981
  IF ~~ THEN DO ~AddexperienceParty(350)
ReputationInc(1)
IncrementGlobal("XvartsDead","GLOBAL",1)~ SOLVED_JOURNAL @310565 EXIT
END

IF WEIGHT #2 ~Dead("HulriksCow")~ THEN BEGIN 2
  SAY @14986
  IF ~~ THEN SOLVED_JOURNAL @310566 EXIT
END

IF WEIGHT #3 ~GlobalLT("XvartsDead","GLOBAL",8)~ THEN BEGIN 3
  SAY @14987
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~True()~ THEN BEGIN 4
  SAY @14988
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~false()~ THEN BEGIN 5
  SAY @14989
  IF ~~ THEN EXIT
END
