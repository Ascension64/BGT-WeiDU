BEGIN ~brevli~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @2555
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2556
  IF ~~ THEN REPLY @2595 GOTO 5
  IF ~~ THEN REPLY @2596 GOTO 6
  IF ~~ THEN REPLY @2597 GOTO 2
  IF ~~ THEN REPLY @2598 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @2557
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @2558
  IF ~~ THEN DO ~SetGlobal("RefuseBrevlik","GLOBAL",1)~ EXIT
END

IF ~Global("RefuseBrevlik","GLOBAL",1)
Global("HelpBrevlik","GLOBAL",0)~ THEN BEGIN 4
  SAY @2560
  IF ~~ THEN REPLY @6117 GOTO 13
  IF ~~ THEN REPLY @6118 GOTO 3
  IF ~~ THEN REPLY @6119 GOTO 7
  IF ~~ THEN REPLY @6120 GOTO 12
END

IF ~~ THEN BEGIN 5
  SAY @2564
  IF ~~ THEN REPLY @2599 GOTO 13
  IF ~~ THEN REPLY @2600 GOTO 3
  IF ~~ THEN REPLY @2601 GOTO 7
  IF ~~ THEN REPLY @2602 GOTO 12
END

IF ~~ THEN BEGIN 6
  SAY @2568
  IF ~~ THEN REPLY @2603 GOTO 13
  IF ~~ THEN REPLY @2604 GOTO 3
  IF ~~ THEN REPLY @2605 GOTO 7
  IF ~~ THEN REPLY @2606 GOTO 12
END

IF ~~ THEN BEGIN 7
  SAY @2570
  IF ~~ THEN REPLY @2607 DO ~GivePartyGold(5)~ GOTO 13
  IF ~~ THEN REPLY @2608 DO ~GivePartyGold(5)~ GOTO 3
  IF ~~ THEN REPLY @2609 DO ~GivePartyGold(5)~ GOTO 12
  IF ~~ THEN REPLY @2610 DO ~GivePartyGold(5)~ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @2571
  IF ~~ THEN REPLY @2611 DO ~GivePartyGold(5)~ GOTO 13
  IF ~~ THEN REPLY @2612 DO ~GivePartyGold(5)~ GOTO 3
  IF ~~ THEN REPLY @2613 DO ~GivePartyGold(5)~ GOTO 12
  IF ~~ THEN REPLY @2614 DO ~GivePartyGold(5)~ GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @2572
  IF ~~ THEN REPLY @2615 GOTO 13
  IF ~~ THEN REPLY @2616 GOTO 3
  IF ~~ THEN REPLY @2617 GOTO 12
  IF ~~ THEN REPLY @2618 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @2573
  IF ~~ THEN DO ~EscapeArea()~ GOTO 11
END

IF ~False()~ THEN BEGIN 11
  SAY @2574
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @2575
  IF ~~ THEN REPLY @2625 GOTO 23
  IF ~~ THEN REPLY @2578 GOTO 14
END

IF ~~ THEN BEGIN 13
  SAY @2576
  IF ~~ THEN REPLY @2626 GOTO 23
  IF ~~ THEN REPLY @2579 GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @2577
  IF ~~ THEN REPLY @2580 GOTO 23
  IF ~~ THEN REPLY @2581 GOTO 17
  IF ~~ THEN REPLY @2620 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @2582
  IF ~~ THEN REPLY @2621 GOTO 23
  IF ~~ THEN REPLY @2622 GOTO 17
  IF ~~ THEN REPLY @2623 GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @2583
  IF ~~ THEN REPLY @2624 GOTO 3
  IF ~~ THEN REPLY @2627 GOTO 23
  IF ~~ THEN REPLY @2628 GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @2584
  IF ~~ THEN DO ~SetGlobal("HelpBrevlik","GLOBAL",1)~ UNSOLVED_JOURNAL @310271 EXIT
END

IF ~Global("HelpBrevlik","GLOBAL",1)
PartyHasItem("MISC64")
Global("KilledFlam6","GLOBAL",0)~ THEN BEGIN 18
  SAY @2585
  IF ~~ THEN DO ~GiveGoldForce(500)
TakePartyItem("MISC64")
GiveItem("WAND07",LastTalkedToBy)
SetGlobal("HelpBrevlik","GLOBAL",2)
AddexperienceParty(5500)
EraseJournalEntry(@310271)
EscapeArea()~ SOLVED_JOURNAL @310272 EXIT
END

IF ~Global("HelpBrevlik","GLOBAL",1)
PartyHasItem("MISC64")
Global("KilledFlam6","GLOBAL",1)~ THEN BEGIN 19
  SAY @2586
  IF ~~ THEN REPLY @2629 GOTO 22
  IF ~~ THEN REPLY @2630 GOTO 21
  IF ~~ THEN REPLY @2631 GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @2587
  IF ~~ THEN DO ~Wait(10)
CreateCreature("GUARD",[0.0],0)
CreateCreature("GUARD",[0.0],0)
CreateCreature("GUARD",[0.0],0)
CreateCreature("GUARD",[0.0],0)
CreateCreature("GUARD",[0.0],0)
SetGlobal("HelpBrevlik","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY @2588
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 22
  SAY @2589
  IF ~~ THEN DO ~GiveGoldForce(500)
GiveItem("WAND07",LastTalkedToBy)
SetGlobal("HelpBrevlik","GLOBAL",2)
EraseJournalEntry(@310271)
EscapeArea()~ SOLVED_JOURNAL @310273 EXIT
END

IF ~~ THEN BEGIN 23
  SAY @2590
  IF ~~ THEN DO ~SetGlobal("BrevlikRobbed","GLOBAL",1)~ EXIT
END

IF ~Global("BrevlikRobbed","GLOBAL",1)~ THEN BEGIN 24
  SAY @2591
  IF ~~ THEN REPLY @2632 DO ~SetGlobal("BrevlikRobbed","GLOBAL",2)~ GOTO 25
  IF ~~ THEN REPLY @2633 DO ~SetGlobal("BrevlikRobbed","GLOBAL",2)~ GOTO 27
  IF ~~ THEN REPLY @2634 DO ~SetGlobal("BrevlikRobbed","GLOBAL",2)~ GOTO 28
  IF ~~ THEN REPLY @2635 DO ~SetGlobal("BrevlikRobbed","GLOBAL",2)~ GOTO 26
END

IF ~~ THEN BEGIN 25
  SAY @2592
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 26
  SAY @2593
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 27
  SAY @2594
  IF ~~ THEN DO ~GiveItemCreate("RING23",LastTalkedToBy,0,0,0)
TakePartyGold(500)~ EXIT
END

IF ~~ THEN BEGIN 28
  SAY @2619
  IF ~~ THEN DO ~GiveItemCreate("RING23",LastTalkedToBy,0,0,0)
TakePartyGold(200)~ EXIT
END

IF ~Global("HelpBrevlik","GLOBAL",2)~ THEN BEGIN 29
  SAY @6257
  IF ~~ THEN EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)
Global("A6Charmed","LOCALS",0)~ THEN BEGIN 30
  SAY @6258
  IF ~~ THEN DO ~GivePartyGold(50)
SetGlobal("A6Charmed","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 31
  SAY @9303
  IF ~~ THEN EXIT
END
