BEGIN ~ftowb6~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8814
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @8815
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 2
  SAY @8816
  IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 3
  SAY @8817
  IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 4
  SAY @8996
  IF ~~ THEN EXIT
END
