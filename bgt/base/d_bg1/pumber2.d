BEGIN ~pumber2~

IF ~True()~ THEN BEGIN 0
  SAY @8532
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1
  SAY @8533
  IF ~~ THEN DO ~Enemy()~ EXIT
END
