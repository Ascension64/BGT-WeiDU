BEGIN ~boybe2~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8198
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @8200
  IF ~~ THEN EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 2
  SAY @8201
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8948
  IF ~~ THEN EXIT
END
