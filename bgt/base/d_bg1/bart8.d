BEGIN ~bart8~

IF ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN BEGIN 0
  SAY @8330
  IF ~~ THEN REPLY @15072 DO ~StartStore("tav0705",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15073 EXIT
END

IF ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN BEGIN 1
  SAY @8331
  IF ~~ THEN REPLY @15074 DO ~StartStore("tav0705",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15075 EXIT
END

IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN BEGIN 2
  SAY @8332
  IF ~~ THEN EXIT
END
