BEGIN ~XGATKI1~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN REPLY @4 DO ~RevealAreaOnMap("XG0002")
ActionOverride(Player2,LeaveAreaLUA("XG0002","",[3434.2838],8))
ActionOverride(Player1,LeaveAreaLUA("XG0002","",[3364.2681],8))
ActionOverride(Player3,LeaveAreaLUA("XG0002","",[3264.2958],8))
ActionOverride(Player4,LeaveAreaLUA("XG0002","",[3419.2959],8))
ActionOverride(Player5,LeaveAreaLUA("XG0002","",[3337.3047],8))
ActionOverride(Player6,LeaveAreaLUA("XG0002","",[3476.2976],8))
AddJournalEntry(@51002,QUEST)
EscapeArea()~ EXIT
  IF ~~ THEN REPLY @6 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @7
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
