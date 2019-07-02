
# Rule

## Naming

### Suffix
* 스펠을 익히기 위한 스펠 : l
* 근접 공격 효과 스펠 : m
* 원거리 공격 효과 스펠 : r
* 오라 스펠 : a
* 초상화 아이콘 : b
* 두 번째 사운드 : w

### Class name
메인 폴더, setup tp2, 키트 명, 키트 파일(2da, baf, d)에 사용된다.
* d2#bar : 바바리안
* d2#pal : 팔라딘
* d2#dru : 드루이드
* d2#ama : 아마존
* d2#nec : 네크로맨서
* d2#ass : 어쌔신
* d2#sor : 소서리스

### Template
모든 효과와 스펠들은 템플릿을 패치하는 방식으로 만든다.

#### Template spell
  * template.spl : 탭이 하나인 템플릿
  * templat4.spl : 탭이 4개인 템플릿
  * template.eff
  * Header
    * Spell type - 4 innate
    * Priest type - General
    * Level - 9
    * School - Schoolless
    * No failure
    * No wildsurge
  * Tab
    * Spell form - Normal
    * Location - innate
    * Target - Creature
    * Range - 100
    * Speed - 0

### Spell name
spl, eff, bam, snd, pro 파일에 사용된다.
* d2#1100 ~ d2#1199: 바바리안
  * d2#1100 : Skill Point, 스킬 포인트
  * Warcries
    * d2#1101 : Howl, 하울
    * d2#1102 : Find Potion, 파인드 포션
    * d2#1103 : Shout, 샤우트
    * d2#1104 : Taunt, 타운트
    * d2#1105 : Battle Cry, 배틀 크라이
    * d2#1106 : Find Item, 파인드 아이템
    * d2#1107 : Battle Orders, 배틀 오더
    * d2#1108 : Grim Ward, 그림 워드
    * d2#1109 : War Cry, 워 크라이
    * d2#1110 : Battle Command, 배틀 코맨드
  * Combat Masteries
    * d2#1111 : Sword Mastery, 소드 마스터리
    * d2#1112 : Axe Mastery, 액스 마스터리
    * d2#1113 : Mace Mastery, 메이스 마스터리
    * d2#1114 : Polearm Mastery, 폴암 마스터리
    * d2#1115 : Throwing Mastery, 쓰로잉 마스터리
    * d2#1116 : Spear Mastery, 스피어 마스터리
    * d2#1117 : Increased Stamina, 인크리즈드 스태미나
    * d2#1118 : Iron Skin, 아이언 스킨
    * d2#1119 : Increased Speed, 인크리즈드 스피드
    * d2#1120 : Natural Resistance, 내추럴 레지스턴스
  * Combat Skills
    * d2#1121 : Bash, 배쉬
    * d2#1122 : Double Swing, 더블 스윙
    * d2#1123 : Leap, 리프
    * d2#1124 : Double Throw, 더블 쓰로우
    * d2#1125 : Stun, 스턴
    * d2#1126 : Leap Attack, 리프 어택
    * d2#1127 : Concentrate, 컨센트레이트
    * d2#1128 : Frenzy, 프렌지
    * d2#1129 : Whirlwind, 훨윈드
    * d2#1130 : Berserk, 버서크
* d2#1200 ~ d2#1299: 팔라딘
  * d2#1200 : Skill Point, 스킬 포인트
  * Defensive Auras
    * d2#1201 : Prayer, 프레이어
    * d2#1202 : Resist Fire, 레지스트 파이어
    * d2#1203 : Resist Cold, 레지스트 콜드
    * d2#1204 : Resist Lightning, 레지스트 라이트닝
    * d2#1205 : Defiance, 디파이언스
    * d2#1206 : Cleansing, 클린징
    * d2#1207 : Vigor, 비거
    * d2#1208 : Meditation, 미디테이션
    * d2#1209 : Redemption, 리뎀션
    * d2#1210 : Salvation, 샐베이션
  * Offensive Auras
    * d2#1211 : Might, 마이트
    * d2#1212 : Holy Fire, 홀리 파이어
    * d2#1213 : Thorns, 쏜즈
    * d2#1214 : Blesssed Aim, 블레스드 에임
    * d2#1215 : Concentration, 컨센트레이션
    * d2#1216 : Holy Freeze, 홀리 프리즈
    * d2#1217 : Holy Shock, 홀리 쇼크
    * d2#1218 : Sanctuary, 생츄어리
    * d2#1219 : Fanaticism, 파나티시즘
    * d2#1220 : Conviction, 컨빅션
  * Combat Skills
    * d2#1221 : Sacrifice, 새크리파이스
    * d2#1222 : Smite, 스마이트
    * d2#1223 : Holy Bolt, 홀리 볼트
    * d2#1224 : Zeal, 질
    * d2#1225 : Charge, 차지
    * d2#1226 : Vengeance, 벤전스
    * d2#1227 : Blessed Hammer, 블레스드 해머
    * d2#1228 : Conversion, 컨버젼
    * d2#1229 : Holy Shield, 홀리 쉴드
    * d2#1230 : Fist of the Heavens, 피스트 오브 더 해븐
* d2#1300 ~ d2#1399: 드루이드
* d2#1400 ~ d2#1499: 아마존
* d2#1500 ~ d2#1599: 네크로맨서
* d2#1600 ~ d2#1699: 어쌔신
* d2#1700 ~ d2#1799: 소서리스