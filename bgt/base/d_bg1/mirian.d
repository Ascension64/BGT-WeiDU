BEGIN ~mirian~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @14968
  IF ~~ THEN UNSOLVED_JOURNAL @310046 EXIT
END

IF ~PartyHasItem("BGSCRL3I")~ THEN BEGIN 1
  SAY @14971
  IF ~~ THEN DO ~GiveItem("RING06",LastTalkedToBy)
TakePartyItem("BGSCRL3I")
AddexperienceParty(300)
EraseJournalEntry(@310046)~ SOLVED_JOURNAL @310048 EXIT
END

IF ~False()
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
PartyHasItem("BGSCRL3I")~ THEN BEGIN 2
  SAY @14975
  IF ~~ THEN DO ~GiveItem("RING06",LastTalkedToBy)
TakePartyItem("BGSCRL3I")
AddexperienceParty(300)~ SOLVED_JOURNAL @310048 EXIT
END

IF ~False()~ THEN BEGIN 3
  SAY @14978
  IF ~~ THEN DO ~~ EXIT
END

IF ~True()~ THEN BEGIN 4
  SAY @14980
  IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 5
  SAY @15726
  IF ~~ THEN JOURNAL @15727 EXIT
END