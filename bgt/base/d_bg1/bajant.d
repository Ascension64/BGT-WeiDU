BEGIN ~bajant~

IF WEIGHT #0 ~False()~ THEN BEGIN 0
  SAY @14398
  IF ~~ THEN DO ~~ EXIT
END

IF WEIGHT #1 ~InParty([0.0.0.0.0.0.MASK_EVIL])
InParty("Xan")
See("Xan")
RandomNum(2,1)~ THEN BEGIN 1
  SAY @14399
  IF ~~ THEN EXTERN ~BXANNN~ 4
END

IF WEIGHT #2 ~InParty([0.0.0.0.0.0.MASK_EVIL])
InParty("Xan")
See("Xan")
RandomNum(2,2)~ THEN BEGIN 2
  SAY @14400
  IF ~~ THEN EXTERN ~BXANNN~ 3
END

IF WEIGHT #4 ~InParty([0.0.0.0.0.0.MASK_EVIL])~ THEN BEGIN 3
  SAY @14401
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~InParty([0.0.0.0.0.0.MASK_EVIL])
RandomNum(10,1)~ THEN BEGIN 4
  SAY @14402
  IF ~~ THEN DO ~Attack([0.0.0.0.0.0.MASK_EVIL])~ EXIT
END
