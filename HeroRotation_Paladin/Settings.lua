--- ============================ HEADER ============================
--- ======= LOCALIZE =======
-- Addon
local addonName, addonTable = ...
-- HeroRotation
local HR = HeroRotation
-- HeroLib
local HL = HeroLib
-- File Locals
local GUI = HL.GUI
local CreateChildPanel = GUI.CreateChildPanel
local CreatePanelOption = GUI.CreatePanelOption
local CreateARPanelOption = HR.GUI.CreateARPanelOption
local CreateARPanelOptions = HR.GUI.CreateARPanelOptions

--- ============================ CONTENT ============================
HR.GUISettings.APL.Paladin = {
  Commons = {
    Enabled = {
      Trinkets = true,
      Potions = true,
      Items = true,
    },
    DisplayStyle = {
      Trinkets = "Suggested",
      Signature = "Suggested",
      Potions = "Suggested",
      Items = "Suggested",
    },
    GCDasOffGCD = {
      HammerOfWrath = true,
    },
    OffGCDasOffGCD = {
      Racials = true,
      Rebuke = true,
    }
  },
  Protection = {
    -- CDs HP %
    BubbleHP = 15,
    LoHHP = 15,
    GoAKHP = 40,
    SotRHP = 70,
    PrioSelfWordofGloryHP = 40,
    OpportunisticSelfWordofGloryHP = 75,
    FriendlyWordofGloryHP = 60,
    ArdentDefenderHP = 60,
    PotionType = {
      Selected = "Power",
    },
    DisplayStyle = {
      Defensives = "SuggestedRight",
      ShieldOfTheRighteous = "SuggestedRight",
    },
    GCDasOffGCD = {
      EyeOfTyr = false,
      Seraphim = true,
      WordOfGlory = true,
    },
    OffGCDasOffGCD = {
      AvengingWrath = true,
      BastionOfLight = true,
      HolyAvenger = true,
      MomentOfGlory = true,
      Sentinel = true,
    }
  },
  Retribution = {
    DisableFinisherCDCheck = false,
    PotionType = {
      Selected = "Power",
    },
    GCDasOffGCD = {
      ExecutionSentence = false,
      FinalReckoning = false,
      Seraphim = false,
      ShieldOfVengeance = true,
    },
    OffGCDasOffGCD = {
      AvengingWrath = true,
    },
  },
  Holy = {
    LoHHP = 10,
    DPHP = 40,
    WoGHP = 60,
    PotionType = {
      Selected = "Power",
    },
    GCDasOffGCD = {
      HammerOfWrath = false,
      LightOfDawn = true,
      Seraphim = true,
    },
    OffGCDasOffGCD = {
      AvengingWrath = true,
      HolyAvenger = true,
    },
  },
}
-- GUI
HR.GUI.LoadSettingsRecursively(HR.GUISettings)
-- Child Panels
local ARPanel = HR.GUI.Panel
local CP_Paladin = CreateChildPanel(ARPanel, "Paladin")
local CP_Protection = CreateChildPanel(CP_Paladin, "Protection")
local CP_Protection2 = CreateChildPanel(CP_Paladin, "Protection2")
local CP_Retribution = CreateChildPanel(CP_Paladin, "Retribution")
local CP_Holy = CreateChildPanel(CP_Paladin, "Holy")

-- Shared Paladin settings
CreateARPanelOptions(CP_Paladin, "APL.Paladin.Commons")

-- Protection
CreatePanelOption("Slider", CP_Protection, "APL.Paladin.Protection.BubbleHP", {0, 100, 1}, "Bubble HP", "Set the Bubble HP threshold.")
CreatePanelOption("Slider", CP_Protection, "APL.Paladin.Protection.LoHHP", {0, 100, 1}, "Lay on Hands HP", "Set the Lay on Hands HP threshold.")
CreatePanelOption("Slider", CP_Protection, "APL.Paladin.Protection.GoAKHP", {0, 100, 1}, "GoAK HP", "Set the Guardian of Ancient Kings HP threshold.")
CreatePanelOption("Slider", CP_Protection, "APL.Paladin.Protection.SotRHP", {0, 100, 1}, "SotR HP", "Set the Shield of the Righteous HP threshold.")
CreatePanelOption("Slider", CP_Protection, "APL.Paladin.Protection.ArdentDefenderHP", {0, 100, 1}, "Ardent Defender HP", "Set the Ardent Defender HP threshold.")
CreatePanelOption("Slider", CP_Protection, "APL.Paladin.Protection.PrioSelfWordofGloryHP", {0, 100, 1}, "Prio Self Word of Glory HP", "Set the Word of Glory HP threshold for casting on ourself: if we drop below this HP, we'll prio WOG over economy globals.")
CreatePanelOption("Slider", CP_Protection, "APL.Paladin.Protection.OpportunisticSelfWordofGloryHP", {0, 100, 1}, "Opportunistic Self Word of Glory HP", "Set the Word of Glory HP threshold for casting on ourself behind economy globals.")
CreatePanelOption("Slider", CP_Protection, "APL.Paladin.Protection.FriendlyWordofGloryHP", {0, 100, 1}, "Friendly Word of Glory HP", "Set the friendly Word of Glory HP threshold for casting on a friendly.")
CreateARPanelOptions(CP_Protection2, "APL.Paladin.Protection")

-- Retribution
CreatePanelOption("CheckButton", CP_Retribution, "APL.Paladin.Retribution.DisableFinisherCDCheck", "Disable CDs for Finishers", "Enable this option to ignore the status of cooldowns, such as Crusade, Execution Sentence, and Final Reckoning, when deciding whether to suggest finishers.")
CreateARPanelOptions(CP_Retribution, "APL.Paladin.Retribution")

-- Holy
CreateARPanelOptions(CP_Holy, "APL.Paladin.Holy")
CreatePanelOption("Slider", CP_Holy, "APL.Paladin.Holy.LoHHP", {0, 100, 1}, "Lay on Hands HP", "Set the Lay on Hands HP threshold.")
CreatePanelOption("Slider", CP_Holy, "APL.Paladin.Holy.DPHP", {0, 100, 1}, "Divine Protection HP", "Set the Divine Protection HP threshold.")
CreatePanelOption("Slider", CP_Holy, "APL.Paladin.Holy.WoGHP", {0, 100, 1}, "Word of Glory HP", "Set the Word of Glory HP threshold.")
