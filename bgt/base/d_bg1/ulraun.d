BEGIN ~ulraun~

IF ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN BEGIN 0
  SAY @263
  IF ~~ THEN EXIT
END

IF ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN BEGIN 1
  SAY @0
  IF ~~ THEN EXIT
END

IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN BEGIN 2
  SAY @1
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~Global("Arrested","GLOBAL",1)~ THEN BEGIN 3
  SAY @2
  IF ~PartyHasItem("RING25")~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~!PartyHasItem("RING25")~ THEN REPLY @8 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @3
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @4
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @5
  IF ~~ THEN DO ~StartCutSceneMode()
MoveToPoint([373.428])
DestroySelf()~ UNSOLVED_JOURNAL @310134 EXIT
END
