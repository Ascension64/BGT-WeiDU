BEGIN ~trave2~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8206
  IF ~~ THEN EXIT
END

IF ~NumberOfTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @8207
  IF ~~ THEN EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 2
  SAY @8208
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @9040
  IF ~~ THEN EXIT
END
