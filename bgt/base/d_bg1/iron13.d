BEGIN ~iron13~

IF ~True()~ THEN BEGIN 0
  SAY @7600
  IF ~PartyGoldGT(99)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN REPLY @7609 GOTO 1
  IF ~PartyGoldGT(99)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN REPLY @7610 GOTO 2
  IF ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY @7611 GOTO 3
  IF ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @7612 GOTO 4
  IF ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY @7613 GOTO 5
  IF ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @7614 GOTO 6
  IF ~PartyGoldGT(199)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN REPLY @7615 DO ~TakePartyGold(200)~ GOTO 7
  IF ~PartyGoldGT(199)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN REPLY @7616 DO ~TakePartyGold(200)~ GOTO 8
  IF ~~ THEN REPLY @11827 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @7601
  IF ~~ THEN DO ~TakePartyGold(100)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @7602
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @7603
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @7604
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @7605
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @7606
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @7607
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @7608
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 9
  SAY @7617
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10
  SAY @9221
  IF ~~ THEN EXIT
END
