BEGIN ~XGCRU~

IF ~Global("s#XGCRU","GLOBAL",0)~ THEN BEGIN 0
	SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1
	SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 2
	SAY @5
  IF ~~ THEN DO ~Enemy()
		CreateCreature("XGBAN3",[2013.927],0)
		CreateCreature("XGBAN3",[2215.1085],0)
		CreateCreature("XGBAN2",[1722.1106],0)
		CreateCreature("XGBAN2",[2029.1386],0)
		CreateCreature("XGBAN3",[1721.1377],0)
		AddJournalEntry(@50804,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 3
	SAY @7
  IF ~~ THEN DO ~SetGlobal("s#XGCRU","GLOBAL",1)
		TakePartyGold(8000)
		DestroyGold(8000)
		Wait(2)
		AddJournalEntry(@50805,QUEST)~ EXIT
END
