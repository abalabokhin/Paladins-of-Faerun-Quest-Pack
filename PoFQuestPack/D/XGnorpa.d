BEGIN ~XGnorpa~

IF ~NumTimesTalkedTo(0)
Dead("XGhqev")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN REPLY @3 DO ~GiveGoldForce(5000)
GiveItemCreate("XGHAL02",Player1,0,0,0)
CreateCreature("XGkd",[578.810],0)
Wait(3)
ActionOverride("XGkd",StartDialogue("XGkd",Player1)) AddJournalEntry(@50007,QUEST)~ EXIT
END
