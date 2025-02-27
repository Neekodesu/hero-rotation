--- ============================ HEADER ============================
--- ======= LOCALIZE =======
-- Addon
local addonName, addonTable = ...
-- HeroDBC
local DBC = HeroDBC.DBC
-- HeroLib
local HL         = HeroLib
local Cache      = HeroCache
local Unit       = HL.Unit
local Player     = Unit.Player
local Target     = Unit.Target
local Pet        = Unit.Pet
local Spell      = HL.Spell
local MultiSpell = HL.MultiSpell
local Item       = HL.Item
local MergeTableByKey = HL.Utils.MergeTableByKey
-- HeroRotation
local HR         = HeroRotation

--- ============================ CONTENT ============================

-- Spell
if not Spell.Druid then Spell.Druid = {} end
Spell.Druid.Commons = {
  -- Racials
  Berserking                            = Spell(26297),
  Shadowmeld                            = Spell(58984),
  -- Abilities
  Barkskin                              = Spell(22812),
  BearForm                              = Spell(5487),
  CatForm                               = Spell(768),
  FerociousBite                         = Spell(22568),
  MarkoftheWild                         = Spell(1126),
  Moonfire                              = Spell(8921),
  Prowl                                 = MultiSpell(5215,102547),
  Regrowth                              = Spell(8936),
  Shred                                 = Spell(5221),
  -- Talents
  AstralInfluence                       = Spell(197524),
  ConvoketheSpirits                     = Spell(391528),
  FrenziedRegeneration                  = Spell(22842),
  HeartoftheWild                        = Spell(319454),
  Innervate                             = Spell(29166),
  Ironfur                               = Spell(192081),
  Maim                                  = Spell(22570),
  MightyBash                            = Spell(5211),
  MoonkinForm                           = MultiSpell(24858,197625),
  NaturesVigil                          = Spell(124974),
  ProtectorofthePack                    = Spell(378986),
  Rake                                  = Spell(1822),
  Renewal                               = Spell(108238),
  Rip                                   = Spell(1079),
  SkullBash                             = Spell(106839),
  Starfire                              = Spell(194153),
  Starsurge                             = MultiSpell(78674,197626),
  Sunfire                               = Spell(93402),
  SurvivalInstincts                     = Spell(61336),
  Thrash                                = MultiSpell(77758,106830),
  WildCharge                            = MultiSpell(16979,49376),
  -- Buffs
  FrenziedRegenerationBuff              = Spell(22842),
  HeartoftheWildBuff                    = Spell(319454),
  IronfurBuff                           = Spell(192081),
  MarkoftheWildBuff                     = Spell(1126),
  PoPHealBuff                           = Spell(395336),
  -- Debuffs
  MoonfireDebuff                        = Spell(164812),
  RakeDebuff                            = Spell(155722),
  RipDebuff                             = Spell(1079),
  SunfireDebuff                         = Spell(164815),
  ThrashDebuff                          = MultiSpell(106830,192090),
  -- Other
  Pool                                  = Spell(999910)
}

Spell.Druid.Balance = MergeTableByKey(Spell.Druid.Commons, {
  -- Abilities
  EclipseLunar                          = Spell(48518),
  EclipseSolar                          = Spell(48517),
  Wrath                                 = Spell(190984),
  -- Talents
  AetherialKindling                     = Spell(327541),
  AstralCommunion                       = Spell(400636),
  AstralSmolder                         = Spell(394058),
  BalanceofAllThings                    = Spell(394048),
  CelestialAlignment                    = MultiSpell(194223,383410), -- 194223 without Orbital Strike, 383410 with Orbital Strike
  ElunesGuidance                        = Spell(393991),
  ForceofNature                         = Spell(205636),
  FungalGrowth                          = Spell(392999),
  FuryofElune                           = Spell(202770),
  Incarnation                           = MultiSpell(102560,390414), -- 102560 without Orbital Strike, 390414 with Orbital Strike
  IncarnationTalent                     = Spell(394013),
  NaturesBalance                        = Spell(202430),
  OrbitBreaker                          = Spell(383197),
  OrbitalStrike                         = Spell(390378),
  PowerofGoldrinn                       = Spell(394046),
  PrimordialArcanicPulsar               = Spell(393960),
  RattletheStars                        = Spell(393954),
  Solstice                              = Spell(343647),
  SouloftheForest                       = Spell(114107),
  Starfall                              = Spell(191034),
  Starlord                              = Spell(202345),
  Starweaver                            = Spell(393940),
  StellarFlare                          = Spell(202347),
  Swipe                                 = Spell(213764),
  TwinMoons                             = Spell(279620),
  UmbralEmbrace                         = Spell(393760),
  UmbralIntensity                       = Spell(383195),
  WaningTwilight                        = Spell(393956),
  WarriorofElune                        = Spell(202425),
  WildMushroom                          = Spell(88747),
  WildSurges                            = Spell(406890),
  -- New Moon Phases
  FullMoon                              = Spell(274283),
  HalfMoon                              = Spell(274282),
  NewMoon                               = Spell(274281),
  -- Buffs
  BOATArcaneBuff                        = Spell(394050),
  BOATNatureBuff                        = Spell(394049),
  CABuff                                = Spell(383410),
  DreamstateBuff                        = Spell(424248), -- T31 2pc
  IncarnationBuff                       = Spell(390414),
  PAPBuff                               = Spell(393961),
  RattledStarsBuff                      = Spell(393955),
  SolsticeBuff                          = Spell(343648),
  StarfallBuff                          = Spell(191034),
  StarlordBuff                          = Spell(279709),
  StarweaversWarp                       = Spell(393942),
  StarweaversWeft                       = Spell(393944),
  UmbralEmbraceBuff                     = Spell(393763),
  WarriorofEluneBuff                    = Spell(202425),
  -- Debuffs
  FungalGrowthDebuff                    = Spell(81281),
  StellarFlareDebuff                    = Spell(202347),
  -- Tier 29 Effects
  GatheringStarstuff                    = Spell(394412),
  TouchtheCosmos                        = Spell(394414),
  -- Legendary Effects
  BOATArcaneLegBuff                     = Spell(339946),
  BOATNatureLegBuff                     = Spell(339943),
  OnethsClearVisionBuff                 = Spell(339797),
  OnethsPerceptionBuff                  = Spell(339800),
  TimewornDreambinderBuff               = Spell(340049)
})

Spell.Druid.Feral = MergeTableByKey(Spell.Druid.Commons, {
  -- Abilties
  -- Talents
  AdaptiveSwarm                         = Spell(391888),
  ApexPredatorsCraving                  = Spell(391881),
  AshamanesGuidance                     = Spell(391548),
  Berserk                               = Spell(106951),
  BerserkHeartoftheLion                 = Spell(391174),
  Bloodtalons                           = Spell(319439),
  BrutalSlash                           = Spell(202028),
  CircleofLifeandDeath                  = Spell(400320),
  DireFixation                          = Spell(417710),
  DoubleClawedRake                      = Spell(391700),
  FeralFrenzy                           = Spell(274837),
  FranticMomentum                       = Spell(391875),
  Incarnation                           = Spell(102543),
  LionsStrength                         = Spell(391972),
  LunarInspiration                      = Spell(155580),
  LIMoonfire                            = Spell(155625), -- Lunar Inspiration Moonfire
  MomentofClarity                       = Spell(236068),
  Predator                              = Spell(202021),
  PrimalWrath                           = Spell(285381),
  RampantFerocity                       = Spell(391709),
  RipandTear                            = Spell(391347),
  Sabertooth                            = Spell(202031),
  SouloftheForest                       = Spell(158476),
  Swipe                                 = Spell(106785),
  TearOpenWounds                        = Spell(391785),
  ThrashingClaws                        = Spell(405300),
  TigersFury                            = Spell(5217),
  UnbridledSwarm                        = Spell(391951),
  WildSlashes                           = Spell(390864),
  -- Buffs
  ApexPredatorsCravingBuff              = Spell(391882),
  BloodtalonsBuff                       = Spell(145152),
  Clearcasting                          = Spell(135700),
  OverflowingPowerBuff                  = Spell(405189),
  PredatorRevealedBuff                  = Spell(408468), -- T30 P4
  PredatorySwiftnessBuff                = Spell(69369),
  SabertoothBuff                        = Spell(391722),
  SmolderingFrenzyBuff                  = Spell(422751), -- T31 P2
  SuddenAmbushBuff                      = Spell(391974),
  -- Debuffs
  AdaptiveSwarmDebuff                   = Spell(391889),
  AdaptiveSwarmHeal                     = Spell(391891),
  DireFixationDebuff                    = Spell(417713),
  LIMoonfireDebuff                      = Spell(155625),
  ThrashDebuff                          = Spell(405233),
})

Spell.Druid.Guardian = MergeTableByKey(Spell.Druid.Commons, {
  -- Abilities
  Mangle                                = Spell(33917),
  -- Talents
  Berserk                               = Spell(50334),
  BristlingFur                          = Spell(155835),
  DreamofCenarius                       = Spell(372119),
  FlashingClaws                         = Spell(393427),
  FuryofNature                          = Spell(370695),
  Incarnation                           = Spell(102558),
  LayeredMane                           = Spell(384721),
  LunarBeam                             = Spell(204066),
  Maul                                  = Spell(6807),
  Pulverize                             = Spell(80313),
  RageoftheSleeper                      = Spell(200851),
  Raze                                  = Spell(400254),
  ReinforcedFur                         = Spell(393618),
  SouloftheForest                       = Spell(158477),
  Swipe                                 = Spell(213771),
  ThornsofIron                          = Spell(400222),
  ToothandClaw                          = Spell(135288),
  ViciousCycle                          = Spell(371999),
  VulnerableFlesh                       = Spell(372618),
  -- Buffs
  BerserkBuff                           = Spell(50334),
  DreamofCenariusBuff                   = Spell(372152),
  GalacticGuardianBuff                  = Spell(213708),
  GoreBuff                              = Spell(93662),
  IncarnationBuff                       = Spell(102558),
  ToothandClawBuff                      = Spell(135286),
  ViciousCycleMaulBuff                  = Spell(372015),
  ViciousCycleMangleBuff                = Spell(372019),
  -- Debuffs
  ToothandClawDebuff                    = Spell(135601),
})

Spell.Druid.Restoration = MergeTableByKey(Spell.Druid.Commons, {
  -- Abilities
  EclipseLunar                          = Spell(48518),
  EclipseSolar                          = Spell(48517),
  Starfire                              = Spell(197628),
  Starsurge                             = Spell(197626),
  Sunfire                               = Spell(93402),
  SunfireDebuff                         = Spell(164815),
  Swipe                                 = Spell(213764),
  Wrath                                 = Spell(5176),
  -- Talents
  BalanceAffinity                       = Spell(197632),
  FeralAffinity                         = Spell(197490),
})

-- Items
if not Item.Druid then Item.Druid = {} end
Item.Druid.Commons = {
  -- Trinkets
  AlgetharPuzzleBox                     = Item(193701, {13, 14}),
  AshesoftheEmbersoul                   = Item(207167, {13, 14}),
  BandolierofTwistedBlades              = Item(207165, {13, 14}),
  BeacontotheBeyond                     = Item(203963, {13, 14}),
  FyrakksTaintedRageheart               = Item(207174, {13, 14}),
  IrideusFragment                       = Item(193743, {13, 14}),
  ManicGrieftorch                       = Item(194308, {13, 14}),
  MirrorofFracturedTomorrows            = Item(207581, {13, 14}),
  MydasTalisman                         = Item(158319, {13, 14}),
  SpoilsofNeltharus                     = Item(193773, {13, 14}),
  WitherbarksBranch                     = Item(109999, {13, 14}),
  -- Other On-Use Items
  Djaruun                               = Item(202569, {16}),
  Jotungeirr                            = Item(186404, {16}),
}

Item.Druid.Balance = MergeTableByKey(Item.Druid.Commons, {
})

Item.Druid.Feral = MergeTableByKey(Item.Druid.Commons, {
})

Item.Druid.Guardian = MergeTableByKey(Item.Druid.Commons, {
})

Item.Druid.Restoration = MergeTableByKey(Item.Druid.Commons, {
})
