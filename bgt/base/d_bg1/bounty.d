BEGIN ~bounty~

IF WEIGHT #1 
~NumTimesTalkedToLT(3)~ THEN BEGIN 0
  SAY @8705
  IF ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @8706 GOTO 1
  IF ~NumTimesTalkedTo(1)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @8707 GOTO 2
  IF ~NumTimesTalkedTo(2)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @8708 GOTO 4
  IF ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY @8709 GOTO 2
  IF ~NumTimesTalkedToGT(0)
NumTimesTalkedToLT(3)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY @8710 GOTO 4
  IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN REPLY @8711 GOTO 4
  IF ~~ THEN REPLY @8712 GOTO 6
  IF ~~ THEN REPLY @8713 GOTO 5
END

IF ~~ THEN BEGIN 1
  SAY @8714
  IF ~~ THEN REPLY @8715 GOTO 4
  IF ~PartyGoldGT(3000)~ THEN REPLY @8716 DO ~TakePartyGold(3000)~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @8717
  IF ~~ THEN REPLY @8718 GOTO 4
  IF ~PartyGoldGT(8000)~ THEN REPLY @8719 DO ~TakePartyGold(8000)~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @8720
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @8721
  IF ~~ THEN DO ~Shout(1)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @8722
  IF ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @8723 GOTO 1
  IF ~NumTimesTalkedTo(1)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @8724 GOTO 2
  IF ~NumTimesTalkedTo(2)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @8725 GOTO 4
  IF ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY @8726 GOTO 2
  IF ~NumTimesTalkedToGT(0)
NumTimesTalkedToLT(3)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY @8727 GOTO 4
  IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN REPLY @8728 GOTO 4
  IF ~~ THEN REPLY @8729 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @8731
  IF ~~ THEN DO ~Shout(1)
Enemy()~ EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 7
  SAY @8904
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~True()~ THEN BEGIN 8
  SAY @8905
  IF ~~ THEN DO ~Shout(1)
Enemy()~ EXIT
END
