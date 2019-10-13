BEGIN D2#BAR

IF ~True()~ selectSkill
    SAY @17
    + ~True()~ + @1101 + howl
    + ~!Global("D2#1101","LOCALS",0) LevelGT(Myself,3)~ + @1103 + shout
    + ~!Global("D2#1101","LOCALS",0) LevelGT(Myself,3)~ + @1104 + taunt
    + ~!Global("D2#1104","LOCALS",0) LevelGT(Myself,11)~ + @1105 + battleCry
    + ~!Global("D2#1103","LOCALS",0) LevelGT(Myself,15)~ + @1107 + battleOrder
    + ~Global("D2#1111","LOCALS",0)
        Global("D2#1114","LOCALS",0)
        Global("D2#1115","LOCALS",0)
        LevelGT(Myself,3)~ + @1111 + twsm
    + ~Global("D2#1111","LOCALS",0)
        Global("D2#1114","LOCALS",0)
        Global("D2#1115","LOCALS",0)
        LevelGT(Myself,3)~ + @1114 + thwsm
    + ~Global("D2#1111","LOCALS",0)
        Global("D2#1114","LOCALS",0)
        GlobalLT("D2#1115","LOCALS",5)
        LevelGT(Myself,3)~ + @1115 + throwingMastery
    + ~OR(3)
            !Global("D2#1111","LOCALS",0)
            !Global("D2#1114","LOCALS",0)
            !Global("D2#1115","LOCALS",0)
        GlobalLT("D2#1118","LOCALS",5)
        LevelGT(Myself,11)~ + @1118 + ironSkin
    + ~OR(3)
            !Global("D2#1111","LOCALS",0)
            !Global("D2#1114","LOCALS",0)
            !Global("D2#1115","LOCALS",0)
            GlobalLT("D2#1119","LOCALS",5)
        LevelGT(Myself,15)~ + @1119 + increasedSpeed
    + ~Global("D2#1121","LOCALS",0)~ + @1121 + bash
    + ~Global("D2#1121","LOCALS",1) Global("D2#1122","LOCALS",0) LevelGT(Myself,3)~ + @1122 + doubleSwing
    + ~Global("D2#1122","LOCALS",1) Global("D2#1124","LOCALS",0) LevelGT(Myself,7)~ + @1124 + doubleThrow
    + ~Global("D2#1121","LOCALS",1) Global("D2#1125","LOCALS",0) LevelGT(Myself,7)~ + @1125 + stun
    + ~Global("D2#1125","LOCALS",1) Global("D2#1127","LOCALS",0) LevelGT(Myself,11)~ + @1127 + concentration
    + ~Global("D2#1124","LOCALS",1) Global("D2#1128","LOCALS",0) LevelGT(Myself,15)~ + @1128 + frenzy
    ++ @2 DO ~IncrementGlobal("D2#BARSkillPoint","LOCALS",1)~ EXIT
END

IF ~~ howl
    SAY @1131
    ++ @16 DO ~IncrementGlobal("D2#1101","LOCALS",1) ApplySpellRES("D2#1101L",Myself)~ EXIT
    ++ @2 + selectSkill
END

IF ~~ shout
    SAY @1133
    ++ @16 DO ~IncrementGlobal("D2#1103","LOCALS",1) ApplySpellRES("D2#1103L",Myself)~ EXIT
    ++ @2 + selectSkill
END

IF ~~ taunt
    SAY @1134
    ++ @16 DO ~IncrementGlobal("D2#1104","LOCALS",1) ApplySpellRES("D2#1104L",Myself)~ EXIT
    ++ @2 + selectSkill
END

IF ~~ battleCry
    SAY @1135
    ++ @16 DO ~IncrementGlobal("D2#1105","LOCALS",1) ApplySpellRES("D2#1105L",Myself)~ EXIT
    ++ @2 + selectSkill
END

IF ~~ battleOrder
    SAY @1137
    ++ @16 DO ~IncrementGlobal("D2#1107","LOCALS",1) ApplySpellRES("D2#1107L",Myself)~ EXIT
    ++ @2 + selectSkill
END

IF ~~ twsm
    SAY @1141
    ++ @16 DO ~IncrementGlobal("D2#1111","LOCALS",1) ApplySpellRES("D2#1111L",Myself)~ EXIT
    ++ @2 + selectSkill
END

IF ~~ thwsm
    SAY @1144
    ++ @16 DO ~IncrementGlobal("D2#1114","LOCALS",1) ApplySpellRES("D2#1114L",Myself)~ EXIT
    ++ @2 + selectSkill
END

IF ~~ throwingMastery
    SAY @1145
    ++ @16 DO ~IncrementGlobal("D2#1115","LOCALS",1) ApplySpellRES("D2#1115L",Myself)~ EXIT
    ++ @2 + selectSkill
END

IF ~~ ironSkin
    SAY @1148
    ++ @16 DO ~IncrementGlobal("D2#1118","LOCALS",1) ApplySpellRES("D2#1118L",Myself)~ EXIT
    ++ @2 + selectSkill
END

IF ~~ increasedSpeed
    SAY @1149
    ++ @16 DO ~IncrementGlobal("D2#1119","LOCALS",1) ApplySpellRES("D2#1119L",Myself)~ EXIT
    ++ @2 + selectSkill
END

IF ~~ bash
    SAY @1151
    ++ @16 DO ~IncrementGlobal("D2#1121","LOCALS",1) ApplySpellRES("D2#1121L",Myself)~ EXIT
    ++ @2 + selectSkill
END

IF ~~ doubleSwing
    SAY @1152
    ++ @16 DO ~IncrementGlobal("D2#1122","LOCALS",1) ApplySpellRES("D2#1122L",Myself)~ EXIT
    ++ @2 + selectSkill
END

IF ~~ doubleThrow
    SAY @1154
    ++ @16 DO ~IncrementGlobal("D2#1124","LOCALS",1) ApplySpellRES("D2#1124L",Myself)~ EXIT
    ++ @2 + selectSkill
END

IF ~~ stun
    SAY @1155
    ++ @16 DO ~IncrementGlobal("D2#1125","LOCALS",1) ApplySpellRES("D2#1125L",Myself)~ EXIT
    ++ @2 + selectSkill
END

IF ~~ concentration
    SAY @1157
    ++ @16 DO ~IncrementGlobal("D2#1127","LOCALS",1) ApplySpellRES("D2#1127L",Myself)~ EXIT
    ++ @2 + selectSkill
END

IF ~~ frenzy
    SAY @1158
    ++ @16 DO ~IncrementGlobal("D2#1128","LOCALS",1) ApplySpellRES("D2#1128L",Myself)~ EXIT
    ++ @2 + selectSkill
END