BEGIN ~krysti~

IF ~~ THEN BEGIN 0
  SAY @17034
  IF ~~ THEN EXTERN ~SLYTHE~ 1
END

IF ~~ THEN BEGIN 1
  SAY @17036
  IF ~~ THEN EXTERN ~SLYTHE~ 3
END

IF ~~ THEN BEGIN 2
  SAY @17038
  IF ~~ THEN DO ~ActionOverride("Slythe",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @17320
  IF ~~ THEN EXTERN ~SLYTHE~ 2
END
