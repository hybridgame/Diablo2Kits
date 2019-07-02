BEGIN D2#BAR

IF ~NumTimesTalkedTo(0)~ THEN BEGIN selectSkill
    SAY @2

    // Howl
    IF ~~ THEN REPLY @1101
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1101","GLOBAL",1))
            ApplySpellRES("D2#1101L",Lastsummonerof(Myself))~ EXIT

    // Shout
    IF ~!Global("D2#1101","GLOBAL",0) LevelGT(Lastsummonerof(Myself),3)~ THEN REPLY @1103
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1103","GLOBAL",1))
            ApplySpellRES("D2#1103L",Lastsummonerof(Myself))~ EXIT

    // Taunt
    IF ~!Global("D2#1101","GLOBAL",0) LevelGT(Lastsummonerof(Myself),3)~ THEN REPLY @1104
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1104","GLOBAL",1))
            ApplySpellRES("D2#1104L",Lastsummonerof(Myself))~ EXIT

    // Battle cry
    IF ~!Global("D2#1104","GLOBAL",0) LevelGT(Lastsummonerof(Myself),11)~ THEN REPLY @1105
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1105","GLOBAL",1))
            ApplySpellRES("D2#1105L",Lastsummonerof(Myself))~ EXIT

    // Battle Order
    IF ~!Global("D2#1103","GLOBAL",0) LevelGT(Lastsummonerof(Myself),15)~ THEN REPLY @1107
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1107","GLOBAL",1))
            ApplySpellRES("D2#1107L",Lastsummonerof(Myself))~ EXIT
    
    // Two Weapon Style Mastery
    IF ~Global("D2#1111","GLOBAL",0) Global("D2#1114","GLOBAL",0) Global("D2#1115","GLOBAL",0)
        LevelGT(Lastsummonerof(Myself),3)~ THEN REPLY @1111
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1111","GLOBAL",1))
            ApplySpellRES("D2#1111L",Lastsummonerof(Myself))~ EXIT

    // Two Handed Weapon Style Mastery
    IF ~Global("D2#1111","GLOBAL",0) Global("D2#1114","GLOBAL",0) Global("D2#1115","GLOBAL",0)
        LevelGT(Lastsummonerof(Myself),3)~ THEN REPLY @1114
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1114","GLOBAL",1))
            ApplySpellRES("D2#1114L",Lastsummonerof(Myself))~ EXIT

    // Throwing Mastery
    IF ~Global("D2#1111","GLOBAL",0) Global("D2#1114","GLOBAL",0) GlobalLT("D2#1115","GLOBAL",5)
        LevelGT(Lastsummonerof(Myself),3)~ THEN REPLY @1115
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1115","GLOBAL",1))
            ApplySpellRES("D2#1115L",Lastsummonerof(Myself))~ EXIT

    // Iron Skin
    IF ~OR(3) !Global("D2#1111","GLOBAL",0) !Global("D2#1114","GLOBAL",0) !Global("D2#1115","GLOBAL",0)
        GlobalLT("D2#1118","GLOBAL",5) LevelGT(Lastsummonerof(Myself),11)~ THEN REPLY @1118
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1118","GLOBAL",1))
            ApplySpellRES("D2#1118L",Lastsummonerof(Myself))~ EXIT

    // Increased Speed
    IF ~OR(3) !Global("D2#1111","GLOBAL",0) !Global("D2#1114","GLOBAL",0) !Global("D2#1115","GLOBAL",0)
        GlobalLT("D2#1119","GLOBAL",5) LevelGT(Lastsummonerof(Myself),15)~ THEN REPLY @1119
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1119","GLOBAL",1))
            ApplySpellRES("D2#1119L",Lastsummonerof(Myself))~ EXIT

    // Bash
    IF ~Global("D2#1121","GLOBAL",0)~ THEN REPLY @1121
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1121","GLOBAL",1))
            ApplySpellRES("D2#1121L",Lastsummonerof(Myself))~ EXIT

    // Double Swing
    IF ~Global("D2#1121","GLOBAL",1) Global("D2#1122","GLOBAL",0) LevelGT(Lastsummonerof(Myself),3)~ THEN REPLY @1122
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1122","GLOBAL",1))
            ApplySpellRES("D2#1122L",Lastsummonerof(Myself))~ EXIT

    // Double Throw
    IF ~Global("D2#1122","GLOBAL",1) Global("D2#1124","GLOBAL",0) LevelGT(Lastsummonerof(Myself),7)~ THEN REPLY @1124
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1124","GLOBAL",1))
            ApplySpellRES("D2#1124L",Lastsummonerof(Myself))~ EXIT

    // Stun
    IF ~Global("D2#1121","GLOBAL",1) Global("D2#1125","GLOBAL",0) LevelGT(Lastsummonerof(Myself),7)~ THEN REPLY @1125
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1125","GLOBAL",1))
            ApplySpellRES("D2#1125L",Lastsummonerof(Myself))~ EXIT

    // Concentration
    IF ~Global("D2#1125","GLOBAL",1) Global("D2#1127","GLOBAL",0) LevelGT(Lastsummonerof(Myself),11)~ THEN REPLY @1127
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1127","GLOBAL",1))
            ApplySpellRES("D2#1127L",Lastsummonerof(Myself))~ EXIT

    // Frenzy
    IF ~Global("D2#1124","GLOBAL",1) Global("D2#1128","GLOBAL",0) LevelGT(Lastsummonerof(Myself),15)~ THEN REPLY @1128
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1128","GLOBAL",1))
            ApplySpellRES("D2#1128L",Lastsummonerof(Myself))~ EXIT
END