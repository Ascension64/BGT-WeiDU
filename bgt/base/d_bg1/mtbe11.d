BEGIN ~mtbe11~

IF WEIGHT #5 ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy(),HOSTILE_UPPER)~ THEN BEGIN 0
  SAY @8154
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy(),NEUTRAL_LOWER)~ THEN BEGIN 1
  SAY @8155
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~NumTimesTalkedTo(0)
PartyHasItem("AMUL13")~ THEN BEGIN 2
  SAY @8156
  IF ~ReactionGT(LastTalkedToBy(),NEUTRAL_UPPER)~ THEN REPLY @8165 DO ~SetGlobal("Amulet","GLOBAL",1)~ GOTO 3
  IF ~ReactionLT(LastTalkedToBy(),FRIENDLY_LOWER)~ THEN REPLY @8166 DO ~SetGlobal("Amulet","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @8167 DO ~SetGlobal("Amulet","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @8168 DO ~SetGlobal("Amulet","GLOBAL",1)~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @8157
  IF ~~ THEN REPLY @8169 DO ~TakePartyItem("AMUL13")
SetGlobal("Amulet","GLOBAL",2)~ GOTO 8
  IF ~~ THEN REPLY @8170 GOTO 6
  IF ~~ THEN REPLY @8171 GOTO 7
END

IF ~~ THEN BEGIN 4
  SAY @8158
  IF ~~ THEN REPLY @8172 DO ~TakePartyItem("AMUL13")
SetGlobal("Amulet","GLOBAL",2)~ GOTO 8
  IF ~~ THEN REPLY @8173 GOTO 6
  IF ~~ THEN REPLY @8174 GOTO 7
END

IF ~~ THEN BEGIN 5
  SAY @8159
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @8160
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @8161
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @8162
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~Global("Amulet","GLOBAL",1)~ THEN BEGIN 9
  SAY @8163
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~Global("HadAmulet","GLOBAL",2)~ THEN BEGIN 10
  SAY @8164
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 11
  SAY @8175
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12
  SAY @9055
  IF ~~ THEN EXIT
END
