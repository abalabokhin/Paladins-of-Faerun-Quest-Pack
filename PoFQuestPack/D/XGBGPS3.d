BEGIN ~XGBGPS3~

IF ~PartyHasItem("XGZAT3")~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN REPLY @7 DO ~TakePartyItem("XGZAT3")
GiveItemCreate("XGZAT4",Player1,0,0,0)
~ UNSOLVED_JOURNAL @6 EXIT
END
