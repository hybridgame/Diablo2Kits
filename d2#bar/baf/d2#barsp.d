BEGIN D2#BARSP

IF ~True()~ THEN BEGIN selectSkill
    SAY @104

    IF ~~ THEN REPLY @2
        DO ~ActionOverride(LastSeenBy(Myself),IncrementGlobal("D2#BARSkillPoint","GLOBAL",1))~ EXIT

    // Howl
    IF ~~ THEN REPLY @1101
        DO ~ActionOverride(LastSeenBy(Myself),IncrementGlobal("D2#1101","GLOBAL",1))
            ApplySpellRES("D2#1101L",LastSeenBy(Myself))~ EXIT

    // Shout
    IF ~!Global("D2#1101","GLOBAL",0)
        LevelGT(LastSeenBy(Myself),3)~ THEN REPLY @1103
        DO ~ActionOverride(LastSeenBy(Myself),IncrementGlobal("D2#1103","GLOBAL",1))
            ApplySpellRES("D2#1103L",LastSeenBy(Myself))~ EXIT

    // Taunt
    IF ~!Global("D2#1101","GLOBAL",0)
        LevelGT(LastSeenBy(Myself),3)~ THEN REPLY @1104
        DO ~ActionOverride(LastSeenBy(Myself),IncrementGlobal("D2#1104","GLOBAL",1))
            ApplySpellRES("D2#1104L",LastSeenBy(Myself))~ EXIT

    // Battle cry
    IF ~!Global("D2#1104","GLOBAL",0)
        LevelGT(LastSeenBy(Myself),11)~ THEN REPLY @1105
        DO ~ActionOverride(LastSeenBy(Myself),IncrementGlobal("D2#1105","GLOBAL",1))
            ApplySpellRES("D2#1105L",LastSeenBy(Myself))~ EXIT

    // Battle Order
    IF ~!Global("D2#1103","GLOBAL",0)
        LevelGT(LastSeenBy(Myself),15)~ THEN REPLY @1107
        DO ~ActionOverride(LastSeenBy(Myself),IncrementGlobal("D2#1107","GLOBAL",1))
            ApplySpellRES("D2#1107L",LastSeenBy(Myself))~ EXIT
    
    // Two Weapon Style Mastery
    IF ~Global("D2#1111","GLOBAL",0)
        Global("D2#1114","GLOBAL",0)
        Global("D2#1115","GLOBAL",0)
        LevelGT(LastSeenBy(Myself),3)~ THEN REPLY @1111
        DO ~ActionOverride(LastSeenBy(Myself),IncrementGlobal("D2#1111","GLOBAL",1))
            ApplySpellRES("D2#1111L",LastSeenBy(Myself))~ EXIT

    // Two Handed Weapon Style Mastery
    IF ~Global("D2#1111","GLOBAL",0)
        Global("D2#1114","GLOBAL",0)
        Global("D2#1115","GLOBAL",0)
        LevelGT(LastSeenBy(Myself),3)~ THEN REPLY @1114
        DO ~ActionOverride(LastSeenBy(Myself),IncrementGlobal("D2#1114","GLOBAL",1))
            ApplySpellRES("D2#1114L",LastSeenBy(Myself))~ EXIT

    // Throwing Mastery
    IF ~Global("D2#1111","GLOBAL",0)
        Global("D2#1114","GLOBAL",0)
        GlobalLT("D2#1115","GLOBAL",5)
        LevelGT(LastSeenBy(Myself),3)~ THEN REPLY @1115
        DO ~ActionOverride(LastSeenBy(Myself),IncrementGlobal("D2#1115","GLOBAL",1))
            ApplySpellRES("D2#1115L",LastSeenBy(Myself))~ EXIT

    // Iron Skin
    IF ~OR(3)
            !Global("D2#1111","GLOBAL",0)
            !Global("D2#1114","GLOBAL",0)
            !Global("D2#1115","GLOBAL",0)
        GlobalLT("D2#1118","GLOBAL",5)
        LevelGT(LastSeenBy(Myself),11)~ THEN REPLY @1118
        DO ~ActionOverride(LastSeenBy(Myself),IncrementGlobal("D2#1118","GLOBAL",1))
            ApplySpellRES("D2#1118L",LastSeenBy(Myself))~ EXIT

    // Increased Speed
    IF ~OR(3)
            !Global("D2#1111","GLOBAL",0)
            !Global("D2#1114","GLOBAL",0)
            !Global("D2#1115","GLOBAL",0)
            GlobalLT("D2#1119","GLOBAL",5)
        LevelGT(LastSeenBy(Myself),15)~ THEN REPLY @1119
        DO ~ActionOverride(LastSeenBy(Myself),IncrementGlobal("D2#1119","GLOBAL",1))
            ApplySpellRES("D2#1119L",LastSeenBy(Myself))~ EXIT

    // Bash
    IF ~Global("D2#1121","GLOBAL",0)~ THEN REPLY @1121
        DO ~ActionOverride(LastSeenBy(Myself),IncrementGlobal("D2#1121","GLOBAL",1))
            ApplySpellRES("D2#1121L",LastSeenBy(Myself))~ EXIT

    // Double Swing
    IF ~Global("D2#1121","GLOBAL",1)
        Global("D2#1122","GLOBAL",0)
        LevelGT(LastSeenBy(Myself),3)~ THEN REPLY @1122
        DO ~ActionOverride(LastSeenBy(Myself),IncrementGlobal("D2#1122","GLOBAL",1))
            ApplySpellRES("D2#1122L",LastSeenBy(Myself))~ EXIT

    // Double Throw
    IF ~Global("D2#1122","GLOBAL",1)
        Global("D2#1124","GLOBAL",0)
        LevelGT(LastSeenBy(Myself),7)~ THEN REPLY @1124
        DO ~ActionOverride(LastSeenBy(Myself),IncrementGlobal("D2#1124","GLOBAL",1))
            ApplySpellRES("D2#1124L",LastSeenBy(Myself))~ EXIT

    // Stun
    IF ~Global("D2#1121","GLOBAL",1)
        Global("D2#1125","GLOBAL",0)
        LevelGT(LastSeenBy(Myself),7)~ THEN REPLY @1125
        DO ~ActionOverride(LastSeenBy(Myself),IncrementGlobal("D2#1125","GLOBAL",1))
            ApplySpellRES("D2#1125L",LastSeenBy(Myself))~ EXIT

    // Concentration
    IF ~Global("D2#1125","GLOBAL",1)
        Global("D2#1127","GLOBAL",0)
        LevelGT(LastSeenBy(Myself),11)~ THEN REPLY @1127
        DO ~ActionOverride(LastSeenBy(Myself),IncrementGlobal("D2#1127","GLOBAL",1))
            ApplySpellRES("D2#1127L",LastSeenBy(Myself))~ EXIT

    // Frenzy
    IF ~Global("D2#1124","GLOBAL",1)
        Global("D2#1128","GLOBAL",0)
        LevelGT(LastSeenBy(Myself),15)~ THEN REPLY @1128
        DO ~ActionOverride(LastSeenBy(Myself),IncrementGlobal("D2#1128","GLOBAL",1))
            ApplySpellRES("D2#1128L",LastSeenBy(Myself))~ EXIT
END