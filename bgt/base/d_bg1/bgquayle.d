BEGIN ~bgquayle~

IF WEIGHT #1 ~NumTimesTalkedTo(0)
GlobalLT("ENDOFBG1","GLOBAL",2)
~ THEN BEGIN 0
  SAY @117
  IF ~ReactionGT(LastTalkedToBy(),NEUTRAL_UPPER)~ THEN REPLY @119 GOTO 1
  IF ~ReactionLT(LastTalkedToBy(),FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy(),HOSTILE_UPPER)~ THEN REPLY @134 GOTO 2
  IF ~ReactionLT(LastTalkedToBy(),NEUTRAL_LOWER)~ THEN REPLY @135 GOTO 3
  IF ~ReactionGT(LastTalkedToBy(),NEUTRAL_UPPER)~ THEN REPLY @120 GOTO 1
  IF ~ReactionLT(LastTalkedToBy(),FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy(),HOSTILE_UPPER)~ THEN REPLY @121 GOTO 2
  IF ~ReactionLT(LastTalkedToBy(),NEUTRAL_LOWER)~ THEN REPLY @122 GOTO 3
  IF ~ReactionGT(LastTalkedToBy(),NEUTRAL_UPPER)~ THEN REPLY @136 GOTO 1
  IF ~ReactionLT(LastTalkedToBy(),FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy(),HOSTILE_UPPER)~ THEN REPLY @137 GOTO 2
  IF ~ReactionLT(LastTalkedToBy(),NEUTRAL_LOWER)~ THEN REPLY @138 GOTO 3
  IF ~ReactionGT(LastTalkedToBy(),NEUTRAL_UPPER)~ THEN REPLY @139 GOTO 1
  IF ~ReactionLT(LastTalkedToBy(),FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy(),HOSTILE_UPPER)~ THEN REPLY @140 GOTO 2
  IF ~ReactionLT(LastTalkedToBy(),NEUTRAL_LOWER)~ THEN REPLY @141 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @123
  IF ~~ THEN REPLY @128 GOTO 4
  IF ~~ THEN REPLY @129 GOTO 5
END

IF ~~ THEN BEGIN 2
  SAY @124
  IF ~~ THEN REPLY @130 GOTO 4
  IF ~~ THEN REPLY @131 GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY @125
  IF ~~ THEN REPLY @132 GOTO 4
  IF ~~ THEN REPLY @133 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @126
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @127
  IF ~~ THEN JOURNAL @310746 EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)
GlobalLT("ENDOFBG1","GLOBAL",2)
~ THEN BEGIN 6
  SAY @6367
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~True()
GlobalLT("ENDOFBG1","GLOBAL",2)
~ THEN BEGIN 7
  SAY @6368
  IF ~~ THEN REPLY @10891 EXIT
  IF ~~ THEN REPLY @10892 DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @14745
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY @14746
  IF ~~ THEN EXIT
END
