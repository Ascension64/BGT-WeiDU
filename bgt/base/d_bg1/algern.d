BEGIN ~algern~

IF ~True()~ THEN BEGIN 0
  SAY @15114
  IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 1
  SAY @15115
  IF ~~ THEN DO ~~ EXIT
END

IF ~False()~ THEN BEGIN 2
  SAY @15116
  IF ~~ THEN DO ~~ EXIT
END

IF ~False()~ THEN BEGIN 3
  SAY @15117
  IF ~~ THEN DO ~~ EXIT
END
