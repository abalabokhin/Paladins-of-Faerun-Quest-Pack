BEGIN ~XGdrc~

IF ~See(Player1)
NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN DO ~SetGlobal("TalkToXGdrc","GLOBAL",1)
AddJournalEntry(@50303,QUEST)~ REPLY @5 EXIT
END

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN EXIT
END
