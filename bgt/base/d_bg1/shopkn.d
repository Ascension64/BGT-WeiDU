BEGIN ~shopkn~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @361
  IF ~~ THEN REPLY @15285 DO ~StartStore("sto4803",LastTalkedToBy())~ UNSOLVED_JOURNAL @310573 EXIT
  IF ~~ THEN REPLY @15286 UNSOLVED_JOURNAL @310573 EXIT
END

IF ~PartyHasItem("MISC01")~ THEN BEGIN 1
  SAY @8790
  IF ~~ THEN DO ~TakePartyItem("MISC01")
GiveGoldForce(500)
DestroyItem("MISC01")~ EXIT
END

IF ~!PartyHasItem("MISC01")~ THEN BEGIN 2
  SAY @361
  IF ~~ THEN REPLY @15285 DO ~StartStore("sto4803",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15286 EXIT
END
