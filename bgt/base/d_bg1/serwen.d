BEGIN ~serwen~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8325
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1
  SAY @8326
  IF ~~ THEN EXIT
END

IF ~Global("SpokeToAreana","GLOBAL",1)~ THEN BEGIN 2
  SAY @8328
  IF ~~ THEN EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 3
  SAY @8329
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @9086
  IF ~~ THEN EXIT
END
