BEGIN ~XGBARD~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 EXIT
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 DO ~EscapeArea()~ EXIT
END
IF ~~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN REPLY @7 DO ~SetNumTimesTalkedTo(1)~
UNSOLVED_JOURNAL @8 EXIT
END

IF ~NumTimesTalkedTo(1)
    !PartyHasItem("XGBHARF")~ THEN BEGIN 3
  SAY @9
  IF ~~ THEN REPLY @10 EXIT
END

IF ~NumTimesTalkedTo(1)
    PartyHasItem("XGBHARF")~ THEN BEGIN 4
  SAY @9
  IF ~~ THEN REPLY @11 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @12
  IF ~~ THEN DO ~AddexperienceParty(20000)
EraseJournalEntry(@8)
EscapeArea()~ SOLVED_JOURNAL @13 EXIT
END
