BEGIN ~mtob8~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8796
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @8797
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @8798
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @9174
  IF ~~ THEN EXIT
END
