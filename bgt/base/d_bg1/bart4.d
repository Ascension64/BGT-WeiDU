BEGIN ~bart4~

IF ~ReactionGT(LastTalkedToBy(),HOSTILE_UPPER)~ THEN BEGIN 0
  SAY @8183
  IF ~~ THEN REPLY @15059 DO ~StartStore("Inn3304",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15060 EXIT
END

IF ~ReactionLT(LastTalkedToBy(),NEUTRAL_LOWER)~ THEN BEGIN 1
  SAY @8184
  IF ~~ THEN REPLY @15061 DO ~StartStore("Inn3304",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15062 EXIT
END
