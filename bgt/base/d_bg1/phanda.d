BEGIN ~phanda~

IF ~NumTimesTalkedTo(0)
InParty([0.0.0.0.0.0.MASK_EVIL])
See([PC.0.0.0.0.0.MASK_EVIL])~ THEN BEGIN 0
  SAY @15209
  IF ~~ THEN DO ~Attack([0.0.0.0.0.0.MASK_EVIL])~ JOURNAL @310193 EXIT
END

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 1
  SAY @15210
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~false()~ THEN BEGIN 2
  SAY @15212
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @15214
  IF ~~ THEN EXIT
END
