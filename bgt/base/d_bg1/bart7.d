BEGIN ~bart7~

IF ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN BEGIN 0
  SAY @8320
  IF ~~ THEN REPLY @15326 DO ~StartStore("inn0103",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15067 EXIT
END

IF ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN BEGIN 1
  SAY @8321
  IF ~~ THEN REPLY @15068 DO ~StartStore("inn0103",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15069 EXIT
END

IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN BEGIN 2
  SAY @8322
  IF ~~ THEN REPLY @15070 DO ~StartStore("inn0103",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15071 EXIT
END
