BEGIN ~gnarl~

IF ~NumTimesTalkedTo(0)
!Dead("Hairtooth")~ THEN BEGIN 0
  SAY @683
  IF ~~ THEN EXTERN ~HAIRTO~ 0
END

IF ~~ THEN BEGIN 1
  SAY @684
  IF ~PartyGoldGT(99)~ THEN REPLY @6982 DO ~TakePartyGold(100)~ GOTO 3
  IF ~~ THEN REPLY @6983 GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @685
  IF ~~ THEN EXTERN ~HAIRTO~ 5
END

IF ~~ THEN BEGIN 3
  SAY @686
  IF ~~ THEN DO ~AddexperienceParty(250)~ EXTERN ~HAIRTO~ 3
END

IF ~~ THEN BEGIN 4
  SAY @687
  IF ~~ THEN EXTERN ~HAIRTO~ 4
END

IF ~True()~ THEN BEGIN 5
  SAY @6987
  IF ~~ THEN DO ~Enemy()~ EXIT
END
