BEGIN ~prism~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @674
  IF ~~ THEN REPLY @4746 GOTO 2
  IF ~~ THEN REPLY @4747 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @675
  IF ~~ THEN REPLY @4748 GOTO 4
  IF ~~ THEN REPLY @4728 GOTO 5
  IF ~~ THEN REPLY @10268 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @676
  IF ~~ THEN REPLY @4750 GOTO 4
  IF ~~ THEN REPLY @4751 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @677
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @678
  IF ~~ THEN DO ~CreateCreature("GREYWO",[1267.2579],0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("Prismcut")~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @679
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @680
  IF ~~ THEN EXTERN ~GREYWO~ 2
END

IF ~Dead("Greywolf")~ THEN BEGIN 7
  SAY @681
  IF ~~ THEN DO ~DialogInterrupt(FALSE)
AddexperienceParty(1000)
ReputationInc(1)
MoveToPoint([781.2710])
DropInventory()
Kill("PRISM")~ UNSOLVED_JOURNAL @311060 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @682
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY @9989
  IF ~~ THEN DO ~GiveItem("MISC43","GREYWOLF")~ EXIT
END
