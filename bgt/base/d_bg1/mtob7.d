BEGIN ~mtob7~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8792
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @8793
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(2)~ THEN BEGIN 2
  SAY @8794
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8795
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @9175
  IF ~~ THEN EXIT
END
