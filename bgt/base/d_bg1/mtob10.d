BEGIN ~mtob10~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8803
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @8804
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @8806
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @9181
  IF ~~ THEN EXIT
END
