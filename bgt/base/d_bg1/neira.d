BEGIN ~neira~

IF ~True()~ THEN BEGIN 0
  SAY @17913
  IF ~~ THEN REPLY @17914 GOTO 1
  IF ~~ THEN REPLY @17915 GOTO 2
  IF ~~ THEN REPLY @17916 GOTO 3
  IF ~~ THEN REPLY @17917 GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @17918
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @17919
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @17920
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @17922
  IF ~~ THEN DO ~Enemy()~ EXIT
END
