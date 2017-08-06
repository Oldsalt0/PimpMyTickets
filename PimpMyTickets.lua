-- F R A M E S


-- PARENT FRAME
local SFTicketBorder = CreateFrame("Frame", "SFTicketBorder", UIParent)
SFTicketBorder:SetPoint("CENTER")
SFTicketBorder:SetClampedToScreen(true)
SFTicketBorder:SetWidth(160)
SFTicketBorder:SetHeight(135)
SFTicketBorder:SetBackdrop({
	edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
	tile = false,
	edgeSize = 32,
	insets = { left = 10, right = 10, top = 10, bottom = 10 }
})
SFTicketBorder:SetBackdropBorderColor(0, 0, 0)

-- Main Frame
local SFTicketFrame = CreateFrame("Frame", "SFTicketFrame", SFTicketBorder)
SFTicketFrame:SetPoint("CENTER", SFTicketBorder)
SFTicketFrame:SetWidth(160)
SFTicketFrame:SetHeight(135)
local SFGuildTable = {}
local SFTListTable = {}
local SFTNameTable = {}
local SFTAssignTable = {}
local SFTOnlineTable = {}


-- TABS FRAME
local SFTicketTabFrame = CreateFrame("Frame", "SFTicketTabFrame", UIParent)
SFTicketTabFrame:Show()

-- Tickets Tab
local SFTicketTicketsTab = CreateFrame("Button", "SFTicketTicketsTab", SFTicketTabFrame, "UIPanelButtonGrayTemplate")
SFTicketTicketsTab:SetPoint("TOPLEFT", SFTicketFrame, 31, -5)
SFTicketTicketsTab:SetText("Tickets")
SFTicketTicketsTab:SetWidth(60)
SFTicketTicketsTab:SetHeight(25)
SFTicketTicketsTab:SetPushedTextOffset(0, 0)
SFTicketTicketsTab:GetRegions():SetVertexColor(0, 0, 0)
SFTicketTicketsTab:GetPushedTexture():SetVertexColor(0, 0, 0)
SFTicketTicketsTab:SetPushedTexture(x)
SFTicketTicketsTab:GetHighlightTexture():SetVertexColor(0.5, 0.5, 0.5)

-- GM Tab
local SFTicketGMTab = CreateFrame("Button", "SFTicketGMTab", SFTicketTabFrame, "UIPanelButtonGrayTemplate")
SFTicketGMTab:SetPoint("TOPLEFT", SFTicketFrame, 91, -5)
SFTicketGMTab:SetText("GM")
SFTicketGMTab:SetWidth(40)
SFTicketGMTab:SetHeight(25)
SFTicketGMTab:SetPushedTextOffset(0, 0)
SFTicketGMTab:GetRegions():SetVertexColor(0, 0, 0)
SFTicketGMTab:GetPushedTexture():SetVertexColor(0, 0, 0)
SFTicketGMTab:SetPushedTexture(x)
SFTicketGMTab:GetHighlightTexture():SetVertexColor(0.5, 0.5, 0.5)
SFTicketGMTab:SetAlpha(0.75)

-- Settings Tab
local SFTicketSetTab = CreateFrame("Button", "SFTicketSetTab", SFTicketTabFrame)
SFTicketSetTab:SetPoint("TOPLEFT", SFTicketFrame, 130, -5)
SFTicketSetTab:SetWidth(25)
SFTicketSetTab:SetHeight(25)
SFTicketSetTab:SetAlpha(0.75)
local SFTicketSetTabTexture = SFTicketSetTab:CreateTexture(SFTicketSetTabTexture, "ARTWORK")
SFTicketSetTabTexture:SetTexture("Interface\\AddOns\\PimpMyTickets\\icon-config.tga")
SFTicketSetTabTexture:SetPoint("TOPLEFT", SFTicketFrame, 128.5, -6.5)
SFTicketSetTabTexture:SetWidth(25)
SFTicketSetTabTexture:SetHeight(25)


-- MAIN PANEL
-- Hide Button
local SFTicketHideFrame = CreateFrame("Frame", "SFTicketHideFrame", UIParent)
SFTicketHideFrame:Show()
local SFTicketHideButton = CreateFrame("Button", "SFTicketHideButton", SFTicketHideFrame, "UIPanelButtonGrayTemplate")
SFTicketHideButton:SetPoint("TOPLEFT", SFTicketFrame, 6, -5)
SFTicketHideButton:SetClampedToScreen(true)
SFTicketHideButton:SetWidth(25)
SFTicketHideButton:SetHeight(25)
SFTicketHideButton:SetPushedTextOffset(0, 0)
SFTicketHideButton:GetRegions():SetVertexColor(0, 0, 0)
SFTicketHideButton:SetPushedTexture(x)
SFTicketHideButton:SetText("X")
SFTicketHideButton:GetHighlightTexture():SetVertexColor(0.5, 0.5, 0.5)
SFTicketHideButton:SetAlpha(0.75)

-- Input Box
local SFTicketInputBox = CreateFrame("EditBox", "SFTicketInputBox", SFTicketFrame, "InputBoxTemplate")
SFTicketInputBox:SetPoint("TOPLEFT", 15, -30)
SFTicketInputBox:SetWidth(63)
SFTicketInputBox:SetHeight(25)
SFTicketInputBox:SetAutoFocus(false)
SFTicketInputBox:SetNumeric(true)
SFTicketInputBox:SetMaxLetters(4)
SFTicketInputBox:EnableMouseWheel(true)

-- View Button
local SFTicketViewButton = CreateFrame("Button", "SFTicketViewButton", SFTicketFrame, "UIPanelButtonGrayTemplate")
SFTicketViewButton:SetPoint("TOPLEFT", 80, -30)
SFTicketViewButton:SetText("View")

-- Close Button
local SFTicketCloseButton = CreateFrame("Button", "SFTicketCloseButton", SFTicketFrame, "UIPanelButtonGrayTemplate")
SFTicketCloseButton:SetPoint("TOPLEFT", 5, -55)
SFTicketCloseButton:SetText("Close")

-- More info Button
local SFTicketInfoButton = CreateFrame("Button", "SFTicketInfoButton", SFTicketFrame, "UIPanelButtonGrayTemplate")
SFTicketInfoButton:SetPoint("TOPLEFT", 80, -55)
SFTicketInfoButton:SetText("More info")

-- Assign Button
local SFTicketAssignButton = CreateFrame("Button", "SFTicketAssignButton", SFTicketFrame, "UIPanelButtonGrayTemplate")
SFTicketAssignButton:SetPoint("TOPLEFT", 5, -80)
SFTicketAssignButton:SetText("Assign")

-- Online Button
local SFTicketOnlineButton = CreateFrame("Button", "SFTicketOnlineButton", SFTicketFrame, "UIPanelButtonGrayTemplate")
SFTicketOnlineButton:SetPoint("TOPLEFT", 80, -80)
SFTicketOnlineButton:SetText("Online")

-- Unassign Button
local SFTicketUnassignButton = CreateFrame("Button", "SFTicketUnassignButton", SFTicketFrame, "UIPanelButtonGrayTemplate")
SFTicketUnassignButton:SetPoint("TOPLEFT", 5, -105)
SFTicketUnassignButton:SetText("Unassign")

-- List Button
local SFTicketListButton = CreateFrame("Button", "SFTicketListButton", SFTicketFrame, "UIPanelButtonGrayTemplate")
SFTicketListButton:SetPoint("TOPLEFT", 80, -105)
SFTicketListButton:SetText("List")


-- INFO PANEL
local SFTicketInfoFrame = CreateFrame("Frame", "SFTicketInfoFrame", UIParent)
SFTicketInfoFrame:Hide()

-- Info Text
local SFTicketInfoTextButton = CreateFrame("Button", "SFTicketInfoTextButton", SFTicketInfoFrame, "UIPanelButtonGrayTemplate")
SFTicketInfoTextButton:SetPoint("TOPLEFT", SFTicketFrame, 4, -5)
SFTicketInfoTextButton:SetWidth(152)
SFTicketInfoTextButton:SetHeight(25)
SFTicketInfoTextButton:SetPushedTextOffset(0, 0)
SFTicketInfoTextButton:GetRegions():SetVertexColor(0, 0, 0)
SFTicketInfoTextButton:GetPushedTexture():SetVertexColor(0, 0, 0)
SFTicketInfoTextButton:GetHighlightTexture():SetVertexColor(0, 0, 0)

-- Player info
local SFTicketInfoPlayerButton = CreateFrame("Button", "SFTicketInfoPlayerButton", SFTicketInfoFrame, "UIPanelButtonGrayTemplate")
SFTicketInfoPlayerButton:SetPoint("TOPLEFT", SFTicketFrame, 5, -30)
SFTicketInfoPlayerButton:SetText("Player")

-- IP info
local SFTicketInfoIPButton = CreateFrame("Button", "SFTicketInfoIPButton", SFTicketInfoFrame, "UIPanelButtonGrayTemplate")
SFTicketInfoIPButton:SetPoint("TOPLEFT", SFTicketFrame, 80, -30)
SFTicketInfoIPButton:SetText("IP")

-- Appear button
local SFTicketInfoAppearButton = CreateFrame("Button", "SFTicketInfoAppearButton", SFTicketInfoFrame, "UIPanelButtonGrayTemplate")
SFTicketInfoAppearButton:SetPoint("TOPLEFT", SFTicketFrame, 5, -55)
SFTicketInfoAppearButton:SetText("Appear")

-- Back button
local SFTicketInfoBackButton = CreateFrame("Button", "SFTicketInfoBackButton", SFTicketInfoFrame, "UIPanelButtonGrayTemplate")
SFTicketInfoBackButton:SetPoint("TOPLEFT", SFTicketFrame, 80, -55)
SFTicketInfoBackButton:SetText("Back")


-- ASSIGN PANEL
local SFTicketAssignFrame = CreateFrame("Frame", "SFTicketAssignFrame", UIParent)
SFTicketAssignFrame:Hide()

-- Assign Panel Text
local SFTicketAssignTextButton = CreateFrame("Button", "SFTicketAssignTextButton", SFTicketAssignFrame, "UIPanelButtonGrayTemplate")
SFTicketAssignTextButton:SetPoint("TOPLEFT", SFTicketFrame, 4, -5)
SFTicketAssignTextButton:SetWidth(152)
SFTicketAssignTextButton:SetHeight(25)
SFTicketAssignTextButton:SetPushedTextOffset(0, 0)
SFTicketAssignTextButton:GetRegions():SetVertexColor(0, 0, 0)
SFTicketAssignTextButton:GetPushedTexture():SetVertexColor(0, 0, 0)
SFTicketAssignTextButton:GetHighlightTexture():SetVertexColor(0, 0, 0)

-- Assign Menu
local SFAssignMenu = CreateFrame("Button", "SFAssignMenu", SFTicketAssignFrame, "UIDropDownMenuTemplate")
SFAssignMenu:ClearAllPoints()
SFAssignMenu:SetPoint("TOPLEFT", SFTicketFrame, -11, -28)
select(1, SFAssignMenu:GetRegions()):SetVertexColor(0, 0, 0)
select(2, SFAssignMenu:GetRegions()):SetVertexColor(0, 0, 0)
select(3, SFAssignMenu:GetRegions()):SetVertexColor(0, 0, 0)

-- Assign Yes Button
local SFTicketAssignYesButton = CreateFrame("Button", "SFTicketAssignYesButton", SFTicketAssignFrame, "UIPanelButtonGrayTemplate")
SFTicketAssignYesButton:SetPoint("TOPLEFT", SFTicketFrame, 5, -55)
SFTicketAssignYesButton:SetText("DO IT!")

-- Assign No Button
local SFTicketAssignNoButton = CreateFrame("Button", "SFTicketAssignNoButton", SFTicketAssignFrame, "UIPanelButtonGrayTemplate")
SFTicketAssignNoButton:SetPoint("TOPLEFT", SFTicketFrame, 80, -55)
SFTicketAssignNoButton:SetText("Cancel")


-- TICKET LIST FRAME
local SFTicketTListFrame = CreateFrame("Frame", "SFTicketTListFrame", UIParent)
SFTicketTListFrame:SetWidth(47)
SFTicketTListFrame:SetHeight(120)
SFTicketTListFrame:SetPoint("TOPLEFT", SFTicketFrame, -47, -10)
SFTicketTListFrame:Hide()

-- Ticket List scroll frame
SFTicketTListScrollFrame = CreateFrame("ScrollFrame", "SFTicketTListScrollFrame", SFTicketTListFrame)
SFTicketTListScrollFrame:SetPoint("TOPLEFT", 0, 0)
SFTicketTListScrollFrame:SetPoint("BOTTOMRIGHT", 0, 0)

-- Ticket List scroll bar
SFTicketTListScrollBar = CreateFrame("Slider", nil, SFTicketTListScrollFrame, "UIPanelScrollBarTemplate")
SFTicketTListScrollBar:SetPoint("TOPLEFT", SFTicketTListFrame, "TOPRIGHT", -63, 2)
SFTicketTListScrollBar:SetPoint("BOTTOMLEFT", SFTicketTListFrame, "BOTTOMRIGHT", -63, 2)
select(1, SFTicketTListScrollBar:GetRegions()):SetVertexColor(0, 0, 0)
SFTicketTListScrollBar:SetMinMaxValues(0, 100)
SFTicketTListScrollBar:SetValueStep(1)
SFTicketTListScrollBar.scrollStep = 1
SFTicketTListScrollBar:SetValue(0)
SFTicketTListScrollBar:SetWidth(16)
SFTicketTListScrollBar:SetScript("OnValueChanged",
function (self, value)
self:GetParent():SetVerticalScroll(value)
end)
SFTicketTListFrame.SFTicketTListScrollBar = SFTicketTListScrollBar
SFTicketTListScrollFrameScrollUpButton
:Hide()
SFTicketTListScrollFrameScrollDownButton:Hide()

-- Ticket List content frame
local SFTicketTListContentFrame = CreateFrame("Frame", "SFTicketTListContentFrame", SFTicketTListScrollFrame)
SFTicketTListContentFrame:SetWidth(120)
SFTicketTListContentFrame:SetHeight(250)
SFTicketTListScrollFrame.SFTicketTListContentFrame = SFTicketTListContentFrame
SFTicketTListScrollFrame:SetScrollChild(SFTicketTListContentFrame)


-- GM PANEL
local SFTicketGMTabFrame = CreateFrame("Frame", "SFTicketGMTabFrame", UIParent)
SFTicketGMTabFrame:Hide()

-- GM Mode Button & CheckButton
local SFTicketGMModeButton = CreateFrame("Button", "SFTicketGMModeButton", SFTicketGMTabFrame, "UIPanelButtonGrayTemplate")
SFTicketGMModeButton:SetPoint("TOPLEFT", SFTicketFrame, 5, -30)
SFTicketGMModeButton:SetWidth(100)
SFTicketGMModeButton:SetHeight(25)
SFTicketGMModeButton:SetPushedTextOffset(0, 0)
SFTicketGMModeButton:GetRegions():SetVertexColor(0, 0, 0)
SFTicketGMModeButton:SetPushedTexture(x)
SFTicketGMModeButton:SetHighlightTexture(x)
SFTicketGMModeButton:SetText("GM Mode")
local SFTicketGMModeCheck = CreateFrame("CheckButton", "SFTicketGMModeCheck", SFTicketGMTabFrame, "InterfaceOptionsCheckButtonTemplate")
SFTicketGMModeCheck:SetPoint("TOPLEFT", SFTicketFrame, 105, -30)
SFTicketGMModeCheck:GetRegions():SetVertexColor(0, 0, 0)
SFTicketGMModeCheck:SetHitRectInsets(0, 0, 0, 0)
SFTicketGMModeCheck:SetChecked(true)

-- Invisible Button & CheckButton
local SFTicketGMInvisibleButton = CreateFrame("Button", "SFTicketGMInvisibleButton", SFTicketGMTabFrame, "UIPanelButtonGrayTemplate")
SFTicketGMInvisibleButton:SetPoint("TOPLEFT", SFTicketFrame, 5, -55)
SFTicketGMInvisibleButton:SetWidth(100)
SFTicketGMInvisibleButton:SetHeight(25)
SFTicketGMInvisibleButton:SetPushedTextOffset(0, 0)
SFTicketGMInvisibleButton:GetRegions():SetVertexColor(0, 0, 0)
SFTicketGMInvisibleButton:SetPushedTexture(x)
SFTicketGMInvisibleButton:SetHighlightTexture(x)
SFTicketGMInvisibleButton:SetText("Invisible")
local SFTicketGMInvisibleCheck = CreateFrame("CheckButton", "SFTicketGMInvisibleCheck", SFTicketGMTabFrame, "InterfaceOptionsCheckButtonTemplate")
SFTicketGMInvisibleCheck:SetPoint("TOPLEFT", SFTicketFrame, 105, -55)
SFTicketGMInvisibleCheck:GetRegions():SetVertexColor(0, 0, 0)
SFTicketGMInvisibleCheck:SetHitRectInsets(0, 0, 0, 0)
SFTicketGMInvisibleCheck:SetChecked(true)

-- Chat Badge Button & CheckButton
local SFTicketGMBadgeButton = CreateFrame("Button", "SFTicketGMBadgeButton", SFTicketGMTabFrame, "UIPanelButtonGrayTemplate")
SFTicketGMBadgeButton:SetPoint("TOPLEFT", SFTicketFrame, 5, -80)
SFTicketGMBadgeButton:SetWidth(100)
SFTicketGMBadgeButton:SetHeight(25)
SFTicketGMBadgeButton:SetPushedTextOffset(0, 0)
SFTicketGMBadgeButton:GetRegions():SetVertexColor(0, 0, 0)
SFTicketGMBadgeButton:SetPushedTexture(x)
SFTicketGMBadgeButton:SetHighlightTexture(x)
SFTicketGMBadgeButton:SetText("Chat Badge")
local SFTicketGMBadgeCheck = CreateFrame("CheckButton", "SFTicketGMBadgeCheck", SFTicketGMTabFrame, "InterfaceOptionsCheckButtonTemplate")
SFTicketGMBadgeCheck:SetPoint("TOPLEFT", SFTicketFrame, 105, -80)
SFTicketGMBadgeCheck:GetRegions():SetVertexColor(0, 0, 0)
SFTicketGMBadgeCheck:SetHitRectInsets(0, 0, 0, 0)
SFTicketGMBadgeCheck:SetChecked(true)

-- Whisp. OFF Button & CheckButton
local SFTicketGMWhispButton = CreateFrame("Button", "SFTicketGMWhispButton", SFTicketGMTabFrame, "UIPanelButtonGrayTemplate")
SFTicketGMWhispButton:SetPoint("TOPLEFT", SFTicketFrame, 5, -105)
SFTicketGMWhispButton:SetWidth(100)
SFTicketGMWhispButton:SetHeight(25)
SFTicketGMWhispButton:SetPushedTextOffset(0, 0)
SFTicketGMWhispButton:GetRegions():SetVertexColor(0, 0, 0)
SFTicketGMWhispButton:SetPushedTexture(x)
SFTicketGMWhispButton:SetHighlightTexture(x)
SFTicketGMWhispButton:SetText("Whisp. OFF")
local SFTicketGMWhispCheck = CreateFrame("CheckButton", "SFTicketGMWhispCheck", SFTicketGMTabFrame, "InterfaceOptionsCheckButtonTemplate")
SFTicketGMWhispCheck:SetPoint("TOPLEFT", SFTicketFrame, 105, -105)
SFTicketGMWhispCheck:GetRegions():SetVertexColor(0, 0, 0)
SFTicketGMWhispCheck:SetHitRectInsets(0, 0, 0, 0)
SFTicketGMWhispCheck:SetChecked(true)


-- BANHAMMER PANEL
local SFTicketBanFrame = CreateFrame("Frame", "SFTicketBanFrame", UIParent)
SFTicketBanFrame:Hide()

-- Ban Name
local SFTicketBanTextButton = CreateFrame("Button", "SFTicketBanTextButton", SFTicketBanFrame, "UIPanelButtonGrayTemplate")
SFTicketBanTextButton:SetPoint("TOPLEFT", SFTicketFrame, 4, -5)
SFTicketBanTextButton:SetWidth(152)
SFTicketBanTextButton:SetHeight(25)
SFTicketBanTextButton:SetPushedTextOffset(0, 0)
SFTicketBanTextButton:GetRegions():SetVertexColor(0, 0, 0)
SFTicketBanTextButton:GetPushedTexture():SetVertexColor(0, 0, 0)
SFTicketBanTextButton:GetHighlightTexture():SetVertexColor(0, 0, 0)

-- Duration Button
local SFTicketBanDButton = CreateFrame("Button", "SFTicketBanDButton", SFTicketBanFrame, "UIPanelButtonGrayTemplate")
SFTicketBanDButton:SetPoint("TOPLEFT", SFTicketFrame, 5, -30)
SFTicketBanDButton:SetWidth(70)
SFTicketBanDButton:SetHeight(25)
SFTicketBanDButton:SetPushedTextOffset(0, 0)
SFTicketBanDButton:GetRegions():SetVertexColor(0, 0, 0)
SFTicketBanDButton:SetPushedTexture(x)
SFTicketBanDButton:SetHighlightTexture(x)
SFTicketBanDButton:SetText("Duration:")

-- Duration Input Box
local SFTicketBanDInputBox = CreateFrame("EditBox", "SFTicketBanDInputBox", SFTicketBanFrame, "InputBoxTemplate")
SFTicketBanDInputBox:SetPoint("TOPLEFT", SFTicketFrame, 82, -30)
SFTicketBanDInputBox:SetWidth(67)
SFTicketBanDInputBox:SetHeight(25)
SFTicketBanDInputBox:SetAutoFocus(false)
SFTicketBanDInputBox:SetJustifyH("CENTER")
SFTicketBanDInputBox:SetText("-1d")

-- Reason Button
local SFTicketBanReasonButton = CreateFrame("Button", "SFTicketBanReasonButton", SFTicketBanFrame, "UIPanelButtonGrayTemplate")
SFTicketBanReasonButton:SetPoint("TOPLEFT", SFTicketFrame, 5, -55)
SFTicketBanReasonButton:SetWidth(60)
SFTicketBanReasonButton:SetHeight(25)
SFTicketBanReasonButton:SetPushedTextOffset(0, 0)
SFTicketBanReasonButton:GetRegions():SetVertexColor(0, 0, 0)
SFTicketBanReasonButton:SetPushedTexture(x)
SFTicketBanReasonButton:SetHighlightTexture(x)
SFTicketBanReasonButton:SetText("Reason:")

-- Reason Input Box
local SFTicketBanInputBox = CreateFrame("EditBox", "SFTicketBanInputBox", SFTicketBanFrame, "InputBoxTemplate")
SFTicketBanInputBox:SetPoint("TOPLEFT", SFTicketFrame, 72, -55)
SFTicketBanInputBox:SetWidth(77)
SFTicketBanInputBox:SetHeight(25)
SFTicketBanInputBox:SetAutoFocus(true)

-- Banhammer button
local SFTicketBanhammerButton = CreateFrame("Button", "SFTicketBanhammerButton", SFTicketBanFrame, "UIPanelButtonGrayTemplate")
SFTicketBanhammerButton:SetPoint("TOPLEFT", SFTicketFrame, 5, -80)
SFTicketBanhammerButton:SetText("BAN")

-- Back button
local SFTicketBanBackButton = CreateFrame("Button", "SFTicketBanBackButton", SFTicketBanFrame, "UIPanelButtonGrayTemplate")
SFTicketBanBackButton:SetPoint("TOPLEFT", SFTicketFrame, 80, -80)
SFTicketBanBackButton:SetText("Cancel")


-- SETTINGS PANEL
local SFSettingsFrame = CreateFrame("Frame", "SFSettingsFrame", UIParent)
SFSettingsFrame:SetPoint("CENTER")
SFSettingsFrame:SetClampedToScreen(true)
SFSettingsFrame:SetWidth(180)
SFSettingsFrame:SetHeight(270)
SFSettingsFrame:SetBackdrop({bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border", tile = false, edgeSize = 16 })
SFSettingsFrame:SetBackdropBorderColor(0, 0, 0)
SFSettingsFrame:Hide()

-- Settings Text
SFSettingsFrame:CreateFontString("SFSettingsFont", "ARTWORK", "GameFontNormal")
SFSettingsFont:SetPoint("TOPLEFT", SFSettingsFrame, 50, -5)
SFSettingsFont:SetTextHeight("20")
SFSettingsFont:SetJustifyH("LEFT")
SFSettingsFont:SetText("Settings")

-- Scaling Text
SFSettingsFrame:CreateFontString("SFSettingsScalingFont", "ARTWORK", "GameFontNormal")
SFSettingsScalingFont:SetPoint("TOPLEFT", SFSettingsFrame, 10, -40)
SFSettingsScalingFont:SetTextHeight("18")
SFSettingsScalingFont:SetJustifyH("LEFT")
SFSettingsScalingFont:SetText("Scaling:")

-- Scaling Slider
local SFSettingsScalingSlider = CreateFrame("Slider", "SFSettingsScalingSlider", SFSettingsFrame, "OptionsSliderTemplate")
SFSettingsScalingSlider:ClearAllPoints()
SFSettingsScalingSlider:SetPoint("TOPLEFT", 85, -43)
SFSettingsScalingSlider:SetMinMaxValues(0, 5)
SFSettingsScalingSlider:SetWidth(80)
getglobal(SFSettingsScalingSlider:GetName().."Low"):SetText(" |cffffffff1.0")
getglobal(SFSettingsScalingSlider:GetName().."High"):SetText("|cffffffff1.5 ")
SFSettingsScalingSlider:SetValueStep(1)
SFSettingsScalingSlider:SetBackdropBorderColor(0, 0, 0)
SFSettingsScalingSlider:SetHitRectInsets(0, 0, -5, -5)

-- Color Text
SFSettingsFrame:CreateFontString("SFSettingsColorFont", "ARTWORK", "GameFontNormal")
SFSettingsColorFont:SetPoint("TOPLEFT", SFSettingsFrame, 10, -70)
SFSettingsColorFont:SetTextHeight("18")
SFSettingsColorFont:SetJustifyH("LEFT")
SFSettingsColorFont:SetText("Color:")

-- Black Color Text
SFSettingsFrame:CreateFontString("SFSettingsBlackFont", "ARTWORK", "GameFontNormal")
SFSettingsBlackFont:SetPoint("TOPLEFT", SFSettingsFrame, 35, -95)
SFSettingsBlackFont:SetTextHeight("16")
SFSettingsBlackFont:SetJustifyH("LEFT")
SFSettingsBlackFont:SetText("|cffffffffBlack")

-- Black Color CheckButton
local SFSettingsBlackButton = CreateFrame("CheckButton", "SFSettingsBlackButton", SFSettingsFrame, "InterfaceOptionsCheckButtonTemplate")
SFSettingsBlackButton:SetPoint("TOPLEFT", SFSettingsFrame, 137, -93)
SFSettingsBlackButton:GetRegions():SetVertexColor(0, 0, 0)
SFSettingsBlackButton:SetHitRectInsets(-100, 0, 0, 0)

-- Red Color Text
SFSettingsFrame:CreateFontString("SFSettingsRedFont", "ARTWORK", "GameFontNormal")
SFSettingsRedFont:SetPoint("TOPLEFT", SFSettingsFrame, 35, -117)
SFSettingsRedFont:SetTextHeight("16")
SFSettingsRedFont:SetJustifyH("LEFT")
SFSettingsRedFont:SetText("|cffffffffRed")

-- Red Color CheckButton
local SFSettingsRedButton = CreateFrame("CheckButton", "SFSettingsRedButton", SFSettingsFrame, "InterfaceOptionsCheckButtonTemplate")
SFSettingsRedButton:SetPoint("TOPLEFT", SFSettingsFrame, 137, -115)
SFSettingsRedButton:GetRegions():SetVertexColor(0, 0, 0)
SFSettingsRedButton:SetHitRectInsets(-100, 0, 0, 0)

-- Green Color Text
SFSettingsFrame:CreateFontString("SFSettingsGreenFont", "ARTWORK", "GameFontNormal")
SFSettingsGreenFont:SetPoint("TOPLEFT", SFSettingsFrame, 35, -139)
SFSettingsGreenFont:SetTextHeight("16")
SFSettingsGreenFont:SetJustifyH("LEFT")
SFSettingsGreenFont:SetText("|cffffffffGreen")

-- Green Color CheckButton
local SFSettingsGreenButton = CreateFrame("CheckButton", "SFSettingsGreenButton", SFSettingsFrame, "InterfaceOptionsCheckButtonTemplate")
SFSettingsGreenButton:SetPoint("TOPLEFT", SFSettingsFrame, 137, -137)
SFSettingsGreenButton:GetRegions():SetVertexColor(0, 0, 0)
SFSettingsGreenButton:SetHitRectInsets(-100, 0, 0, 0)

-- Blue Color Text
SFSettingsFrame:CreateFontString("SFSettingsBlueFont", "ARTWORK", "GameFontNormal")
SFSettingsBlueFont:SetPoint("TOPLEFT", SFSettingsFrame, 35, -161)
SFSettingsBlueFont:SetTextHeight("16")
SFSettingsBlueFont:SetJustifyH("LEFT")
SFSettingsBlueFont:SetText("|cffffffffBlue")

-- Blue Color CheckButton
local SFSettingsBlueButton = CreateFrame("CheckButton", "SFSettingsBlueButton", SFSettingsFrame, "InterfaceOptionsCheckButtonTemplate")
SFSettingsBlueButton:SetPoint("TOPLEFT", SFSettingsFrame, 137, -159)
SFSettingsBlueButton:GetRegions():SetVertexColor(0, 0, 0)
SFSettingsBlueButton:SetHitRectInsets(-100, 0, 0, 0)

-- Purple Color Text
SFSettingsFrame:CreateFontString("SFSettingsPurpleFont", "ARTWORK", "GameFontNormal")
SFSettingsPurpleFont:SetPoint("TOPLEFT", SFSettingsFrame, 35, -183)
SFSettingsPurpleFont:SetTextHeight("16")
SFSettingsPurpleFont:SetJustifyH("LEFT")
SFSettingsPurpleFont:SetText("|cffffffffPurple")

-- Purple Color CheckButton
local SFSettingsPurpleButton = CreateFrame("CheckButton", "SFSettingsPurpleButton", SFSettingsFrame, "InterfaceOptionsCheckButtonTemplate")
SFSettingsPurpleButton:SetPoint("TOPLEFT", SFSettingsFrame, 137, -181)
SFSettingsPurpleButton:GetRegions():SetVertexColor(0, 0, 0)
SFSettingsPurpleButton:SetHitRectInsets(-100, 0, 0, 0)

-- Rainbow Color Text
SFSettingsFrame:CreateFontString("SFSettingsRainbowFont", "ARTWORK", "GameFontNormal")
SFSettingsRainbowFont:SetPoint("TOPLEFT", SFSettingsFrame, 35, -205)
SFSettingsRainbowFont:SetTextHeight("16")
SFSettingsRainbowFont:SetJustifyH("LEFT")
SFSettingsRainbowFont:SetText("|cffffffffRainbow")

-- Rainbow Color CheckButton
local SFSettingsRainbowButton = CreateFrame("CheckButton", "SFSettingsRainbowButton", SFSettingsFrame, "InterfaceOptionsCheckButtonTemplate")
SFSettingsRainbowButton:SetPoint("TOPLEFT", SFSettingsFrame, 137, -203)
SFSettingsRainbowButton:GetRegions():SetVertexColor(0, 0, 0)
SFSettingsRainbowButton:SetHitRectInsets(-100, 0, 0, 0)

-- Close Text
SFSettingsFrame:CreateFontString("SFSettingsCloseFont", "ARTWORK", "GameFontNormal")
SFSettingsCloseFont:SetPoint("TOPLEFT", SFSettingsFrame, 68, -243)
SFSettingsCloseFont:SetTextHeight("15")
SFSettingsCloseFont:SetJustifyH("LEFT")
SFSettingsCloseFont:SetText("|cffff0000Close")

-- Close Button
local SFSettingsCloseButton = CreateFrame("Button", "SFSettingsCloseButton", SFSettingsFrame)
SFSettingsCloseButton:SetPoint("TOPLEFT", SFSettingsFrame, 65, -240)
SFSettingsCloseButton:SetWidth(52)
SFSettingsCloseButton:SetHeight(20)


-- INVISIBLE FRAMES
-- ID
local SFTicketIDFrame = CreateFrame("Button")
SFTicketIDFrame:SetText("")
SFTicketIDFrame:Hide()

-- PI
local SFTicketPIFrame = CreateFrame("Button")
SFTicketPIFrame:SetText("")
SFTicketPIFrame:Hide()

-- IP
local SFTicketIPFrame = CreateFrame("Button")
SFTicketIPFrame:SetText("")
SFTicketIPFrame:Hide()

-- SavedSettings
local SFSavedSettings = CreateFrame("Frame")
SFSavedSettings:Hide()

-- InfoSystem
local SFTicketInfoSystem = CreateFrame("Button")
SFTicketInfoSystem:SetText("")
SFTicketInfoSystem:Hide()

-- AssignName
local SFAssignSelName = CreateFrame("Button")
SFAssignSelName:SetText("")
SFAssignSelName:Hide()

-- BanPinfoAcc
local SFBanInfoAcc = CreateFrame("Button")
SFBanInfoAcc:SetText("")
SFBanInfoAcc:Hide()

-- BanPinfoIP
local SFBanInfoIP = CreateFrame("Button")
SFBanInfoIP:SetText("")
SFBanInfoIP:Hide()

-- TicketListingUpdate
local TicketListingUpdate = CreateFrame("Frame")




-- S C R I P T S


-- Generic size and color on main buttons
for i,value in pairs({ SFTicketViewButton, SFTicketCloseButton, SFTicketInfoButton, SFTicketAssignButton, SFTicketOnlineButton, SFTicketUnassignButton, SFTicketListButton, SFTicketAssignYesButton, SFTicketAssignNoButton, SFTicketInfoPlayerButton,  SFTicketInfoIPButton, SFTicketInfoAppearButton, SFTicketInfoBackButton, SFTicketBanhammerButton, SFTicketBanBackButton }) do
	value:SetWidth(75)
	value:SetHeight(25)
	value:GetRegions():SetVertexColor(0, 0, 0)
	value:SetPushedTexture(x)
	value:GetHighlightTexture():SetVertexColor(0.5, 0.5, 0.5)
end


-- color function
local function Color_PMT(cr, cg, cb)
	SFTicketBorder:SetBackdropBorderColor(cr*0.3, cg*0.3, cb*0.3)
	SFTicketViewButton:GetRegions():SetVertexColor(cr, cg, cb)
	SFTicketInfoButton:GetRegions():SetVertexColor(cr, cg, cb)
	SFTicketOnlineButton:GetRegions():SetVertexColor(cr, cg, cb)
	SFTicketListButton:GetRegions():SetVertexColor(cr, cg, cb)
	SFTicketUnassignButton:GetRegions():SetVertexColor(cr, cg, cb)
	SFTicketAssignButton:GetRegions():SetVertexColor(cr, cg, cb)
	SFTicketCloseButton:GetRegions():SetVertexColor(cr, cg, cb)
	SFTicketHideButton:GetRegions():SetVertexColor(cr, cg, cb)
	select(1, SFAssignMenu:GetRegions()):SetVertexColor(cr, cg, cb)
	select(2, SFAssignMenu:GetRegions()):SetVertexColor(cr, cg, cb)
	select(3, SFAssignMenu:GetRegions()):SetVertexColor(cr, cg, cb)
	SFTicketAssignYesButton:GetRegions():SetVertexColor(cr, cg, cb)
	SFTicketAssignNoButton:GetRegions():SetVertexColor(cr, cg, cb)
	SFTicketInfoBackButton:GetRegions():SetVertexColor(cr, cg, cb)
	SFTicketInfoIPButton:GetRegions():SetVertexColor(cr, cg, cb)
	SFTicketInfoPlayerButton:GetRegions():SetVertexColor(cr, cg, cb)
	SFTicketInfoAppearButton:GetRegions():SetVertexColor(cr, cg, cb)
	SFTicketTicketsTab:GetRegions():SetVertexColor(cr, cg, cb)
	SFTicketGMTab:GetRegions():SetVertexColor(cr, cg, cb)
	SFTicketSetTab:GetRegions():SetVertexColor(cr, cg, cb)
	select(1, SFTicketTListScrollBar:GetRegions()):SetVertexColor(cr, cg, cb)
	SFTicketGMModeButton:GetRegions():SetVertexColor(cr, cg, cb)
	SFTicketGMInvisibleButton:GetRegions():SetVertexColor(cr, cg, cb)
	SFTicketGMBadgeButton:GetRegions():SetVertexColor(cr, cg, cb)
	SFTicketGMWhispButton:GetRegions():SetVertexColor(cr, cg, cb)
	SFTicketBanhammerButton:GetRegions():SetVertexColor(cr, cg, cb)
	SFTicketBanBackButton:GetRegions():SetVertexColor(cr, cg, cb)
end


-- reset command
SLASH_TICKETPIMP1, SLASH_TICKETPIMP2 = "/pimpmytickets", "/pmt"
SlashCmdList["TICKETPIMP"] = function(msg)
	if msg == "reset" then
		SFScale = 1
		SFTicketBorder:SetScale(1)
		SFTicketHideButton:SetScale(1)
		SFTicketInfoFrame:SetScale(1)
		SFTicketAssignFrame:SetScale(1)
		SFTicketTabFrame:SetScale(1)
		SFTicketGMTabFrame:SetScale(1)
		SFTicketTListFrame:SetScale(1)
		SFTicketBanFrame:SetScale(1)
		SFTicketScaleSlider:SetValue(0)
		SFTicketTicketsTab:SetAlpha(1)
		SFTicketGMTab:SetAlpha(0.75)
		SFTicketSetTab:SetAlpha(0.75)
		SFColor = "black"
		SFSettingsBlackButton:SetChecked(true)
		SFSettingsRedButton:SetChecked(false)
		SFSettingsGreenButton:SetChecked(false)
		SFSettingsBlueButton:SetChecked(false)
		SFSettingsPurpleButton:SetChecked(false)
		SFSettingsRainbowButton:SetChecked(false)
		Color_PMT(0, 0, 0)
		SFTicketBorder:Show()
		SFTicketFrame:Show()
		SFTicketInfoFrame:Hide()
		SFTicketAssignFrame:Hide()
		SFTicketGMTabFrame:Hide()
		SFSettingsFrame:Hide()
		SFTicketBorder:ClearAllPoints()
		SFTicketBorder:SetHeight(135)
		SFTicketBorder:SetPoint("CENTER")
		SFTicketFrame:ClearAllPoints()
		SFTicketFrame:SetHeight(135)
		SFTicketFrame:SetPoint("CENTER", SFTicketBorder)
		SFTicketHideButton:SetWidth(25)
		SFTicketHideButton:SetText("X")
		SFTicketBorder:SetClampedToScreen(true)
	else
		DEFAULT_CHAT_FRAME:AddMessage("Available arguments: reset")
	end
end


-- Saved Settings
SFSavedSettings:RegisterEvent("ADDON_LOADED")
SFSavedSettings:RegisterEvent("PLAYER_LOGIN")
SFSavedSettings:SetScript("OnEvent", function(self, event, arg1, ...)
	if (event == "ADDON_LOADED" and arg1 == "PimpMyTickets") or event == "PLAYER_LOGIN" then
		SFSavedSettings:UnregisterEvent("ADDON_LOADED")
		SFSavedSettings:UnregisterEvent("PLAYER_LOGIN")
		if SFColor == nil or SFColor == "black" then
			SFColor = "black"
			Color_PMT(0, 0, 0)
			SFSettingsBlackButton:SetChecked(true)
		elseif SFColor == "red" then
			Color_PMT(1, 0, 0)
			SFSettingsRedButton:SetChecked(true)
		elseif SFColor == "green" then
			Color_PMT(0, 1, 0)
			SFSettingsGreenButton:SetChecked(true)
		elseif SFColor == "blue" then
			Color_PMT(0, 0, 1)
			SFSettingsBlueButton:SetChecked(true)
		elseif SFColor == "purple" then
			Color_PMT(75/255, 0, 0.51)
			SFSettingsPurpleButton:SetChecked(true)
		elseif SFColor == "rainbow" then
			SFTicketBorder:SetBackdropBorderColor(0, 0, 0)
			SFTicketViewButton:GetRegions():SetVertexColor(1, 0, 0)
			SFTicketInfoButton:GetRegions():SetVertexColor(1, 150/255, 0)
			SFTicketOnlineButton:GetRegions():SetVertexColor(1, 1, 0)
			SFTicketListButton:GetRegions():SetVertexColor(50/255, 1, 0)
			SFTicketUnassignButton:GetRegions():SetVertexColor(0, 0, 1)
			SFTicketAssignButton:GetRegions():SetVertexColor(168/255, 0.4, 1)
			SFTicketCloseButton:GetRegions():SetVertexColor(75/255, 0, 0.51)
			SFTicketHideButton:GetRegions():SetVertexColor(30/255, 0, 50/255)
			select(1, SFAssignMenu:GetRegions()):SetVertexColor(168/255, 0.4, 1)
			select(2, SFAssignMenu:GetRegions()):SetVertexColor(168/255, 0.4, 1)
			select(3, SFAssignMenu:GetRegions()):SetVertexColor(168/255, 0.4, 1)
			SFTicketAssignYesButton:GetRegions():SetVertexColor(0, 1, 0)
			SFTicketAssignNoButton:GetRegions():SetVertexColor(1, 0, 0)
			SFTicketInfoBackButton:GetRegions():SetVertexColor(1, 0, 0)
			SFTicketInfoIPButton:GetRegions():SetVertexColor(1, 0.5, 0)
			SFTicketInfoPlayerButton:GetRegions():SetVertexColor(1, 1, 0)
			SFTicketInfoAppearButton:GetRegions():SetVertexColor(0.5, 1, 0)
			SFTicketTicketsTab:GetRegions():SetVertexColor(0, 0, 0)
			SFTicketGMTab:GetRegions():SetVertexColor(0, 0, 0)
			SFTicketSetTab:GetRegions():SetVertexColor(218, 165, 32)
			select(1, SFTicketTListScrollBar:GetRegions()):SetVertexColor(0, 0, 0)
			SFTicketGMModeButton:GetRegions():SetVertexColor(0, 0, 0)
			SFTicketGMInvisibleButton:GetRegions():SetVertexColor(0, 0, 0)
			SFTicketGMBadgeButton:GetRegions():SetVertexColor(0, 0, 0)
			SFTicketGMWhispButton:GetRegions():SetVertexColor(0, 0, 0)
			SFTicketBanhammerButton:GetRegions():SetVertexColor(0, 1, 0)
			SFTicketBanBackButton:GetRegions():SetVertexColor(1, 0, 0)
			SFSettingsRainbowButton:SetChecked(true)
		end
		if SFScale == nil then
			SFScale = 1
			SFSettingsScalingSlider:SetValue(0)
		else
			SFTicketBorder:SetScale(SFScale)
			SFTicketHideButton:SetScale(SFScale)
			SFTicketInfoFrame:SetScale(SFScale)
			SFTicketAssignFrame:SetScale(SFScale)
			SFTicketTabFrame:SetScale(SFScale)
			SFTicketGMTabFrame:SetScale(SFScale)
			SFTicketTListFrame:SetScale(SFScale)
			SFTicketBanFrame:SetScale(SFScale)
			SFSettingsScalingSlider:SetValue(SFScale * 10 - 10)
		end
	end
end)


-- Movable Frame over border, cross and tabs
SFTicketBorder:SetMovable(true)
SFTicketBorder:EnableMouse(true)
SFTicketBorder:CreateTitleRegion():SetAllPoints()
SFTicketBorder:SetUserPlaced(true)
SFSettingsFrame:SetMovable(true)
SFSettingsFrame:EnableMouse(true)
SFSettingsFrame:CreateTitleRegion():SetAllPoints()
SFSettingsFrame:SetUserPlaced(true)
SFTicketHideButton:RegisterForDrag("LeftButton")
SFTicketHideButton:SetScript("OnDragStart", function() SFTicketBorder:StartMoving() end)
SFTicketHideButton:SetScript("OnDragStop", function() SFTicketBorder:StopMovingOrSizing() end)
SFTicketTicketsTab:RegisterForDrag("LeftButton")
SFTicketTicketsTab:SetScript("OnDragStart", function() SFTicketBorder:StartMoving() end)
SFTicketTicketsTab:SetScript("OnDragStop", function() SFTicketBorder:StopMovingOrSizing() end)
SFTicketGMTab:RegisterForDrag("LeftButton")
SFTicketGMTab:SetScript("OnDragStart", function() SFTicketBorder:StartMoving() end)
SFTicketGMTab:SetScript("OnDragStop", function() SFTicketBorder:StopMovingOrSizing() end)
SFTicketSetTab:RegisterForDrag("LeftButton")
SFTicketSetTab:SetScript("OnDragStart", function() SFTicketBorder:StartMoving() end)
SFTicketSetTab:SetScript("OnDragStop", function() SFTicketBorder:StopMovingOrSizing() end)


-- Tooltips
local function SFTicketTooltip()
	if not SFTicketBorder:IsShown() then
		GameTooltip:SetOwner(SFTicketHideButton, "ANCHOR_LEFT")
		GameTooltip:SetText("|cffffffffPimpMyTickets|r")
		GameTooltip:AddLine("Left click to open.\nLeft click and drag to move.")
		GameTooltip:Show()
	end
end
SFTicketHideButton:SetScript("OnEnter", SFTicketTooltip)
SFTicketHideButton:SetScript("OnLeave", function()
	if not SFTicketBorder:IsShown() then
		GameTooltip:Hide()
	end
end)


-- Show/Hide Frame
SFTicketHideButton:SetScript("OnClick", function()
	if SFTicketBorder:IsShown() then
		SFTicketBorder:Hide()
		SFTicketTabFrame:Hide()
		SFTicketGMTabFrame:Hide()
		SFSettingsFrame:Hide()
		SFTicketTListFrame:Hide()
		PlaySound("INTERFACESOUND_BACKPACKCLOSE")
		SFTicketHideButton:SetAlpha(1)
		SFTicketHideButton:SetWidth(120)
		if SFColor ~= nil and SFColor == "rainbow" then
			SFTicketHideButton:SetText("|cffff0000P|cffff8040i|cffffa500m|cffffff00p|cfffff569M|cfffffab8y|cff85ff85T|cff32c132i|cff00d1ffc|cff4d85e6k|cff1a1afae|cff6600cct|cff80528cs|r")
		else
			SFTicketHideButton:SetText("PimpMyTickets")
		end
		SFTicketBorder:SetClampedToScreen(false)
		SFTicketTooltip()
	else
		GameTooltip:Hide()
		PlaySound("INTERFACESOUND_BACKPACKOPEN")
		SFTicketHideButton:SetWidth(25)
		SFTicketHideButton:SetText("X")
		SFTicketTicketsTab:SetAlpha(1)
		SFTicketHideButton:SetAlpha(0.75)
		SFTicketGMTab:SetAlpha(0.75)
		SFTicketSetTab:SetAlpha(0.75)
		SFTicketBorder:SetClampedToScreen(true)
		SFTicketBorder:Show()
		SFTicketFrame:Show()
		SFTicketTabFrame:Show()
		SFTicketGMTabFrame:Hide()
		if #SFTListTable ~= nil and #SFTListTable ~= 0 then
			SFTicketTListFrame:Show()
			if #SFTListTable < 7 then
				SFTicketTListScrollBar:Hide()
			end
		end
	end
end)


-- Player name and IP filtering
local function SFInfoFiltering(msg)
	if strfind(msg, "Hplayer:(%A*%a+)") and not strfind(msg, "Hplayer:Spam Report") then
		local SFPlayerName = ""
		_, _, SFPlayerName = strfind(msg, "%[(.+)%]")
		SFTicketPIFrame:SetText(SFPlayerName)
		ChatFrame_RemoveMessageEventFilter("CHAT_MSG_SYSTEM", SFInfoFiltering)
	end
	if strfind(msg, "guid:") then
		local SFPlayerIP = ""
		_, _, SFPlayerIP = strfind(msg, "Last IP: (%d+.%d+.%d+.%d+)")
		SFTicketIPFrame:SetText(SFPlayerIP)
		ChatFrame_RemoveMessageEventFilter("CHAT_MSG_SYSTEM", SFInfoFiltering)
	end
	if strfind(msg, "Hplayer:Spam Report") then
		SFTicketPIFrame:SetText("Spam Report")
		ChatFrame_RemoveMessageEventFilter("CHAT_MSG_SYSTEM", SFInfoFiltering)
	end
	if strfind(msg, "Ticket not found.") then
		SFTicketPIFrame:SetText("Not Found")
		ChatFrame_RemoveMessageEventFilter("CHAT_MSG_SYSTEM", SFInfoFiltering)
	end
end


-- Tickets Tab
SFTicketTicketsTab:SetScript("OnClick", function()
	if not SFTicketFrame:IsShown() then
		PlaySound("UChatScrollButton")
		SFTicketTicketsTab:SetAlpha(1)
		SFTicketGMTab:SetAlpha(0.75)
		SFTicketGMTabFrame:Hide()
		SFTicketFrame:Show()
		SFTicketFrame:SetPoint("CENTER", SFTicketBorder, 0, 0)
	end
end)


-- Input Box OnMouseWheel
SFTicketInputBox:SetScript("OnMouseWheel", function(self, delta)
	if SFTicketInputBox:GetText() ~= nil then
		SFTicketInputBox:ClearFocus()
		if delta > 0 then
			SFTicketInputBox:SetText(SFTicketInputBox:GetNumber() + 1)
		else
			if (SFTicketInputBox:GetNumber() - 1) == 0 then
				SFTicketInputBox:SetText("")
			else
				SFTicketInputBox:SetText(SFTicketInputBox:GetNumber() - 1)
			end
		end
	end
end)


-- Input Box OnEnterPressed
SFTicketInputBox:SetScript("OnEnterPressed", function()
	ChatFrame_AddMessageEventFilter("CHAT_MSG_SYSTEM", SFInfoFiltering)
	SFTicketInputBox:ClearFocus()
	if SFTicketInputBox:GetText() ~= "" then
		if SFTicketInputBox:GetText() ~= SFTicketIDFrame:GetText() then
			SFTicketInfoSystem:SetText("no")
		end
		SFTicketIDFrame:SetText(SFTicketInputBox:GetText())
		PlaySound("UChatScrollButton")
		SendChatMessage(".ticket viewid "..SFTicketInputBox:GetText(), "GUILD", nil)
	else
		GameTooltip:SetOwner(SFTicketHideButton, "ANCHOR_RIGHT", -33, 3)
		GameTooltip:SetText("Please enter a ticket number")
		GameTooltip:Show()
		GameTooltip:FadeOut()
	end
end)


-- View Button
SFTicketViewButton:SetScript("OnClick", function()
	ChatFrame_AddMessageEventFilter("CHAT_MSG_SYSTEM", SFInfoFiltering)
	SFTicketInputBox:ClearFocus()
	if SFTicketInputBox:GetText() ~= "" then
		if SFTicketInputBox:GetText() ~= SFTicketIDFrame:GetText() then
			SFTicketInfoSystem:SetText("no")
		end
		SFTicketIDFrame:SetText(SFTicketInputBox:GetText())
		PlaySound("UChatScrollButton")
		SendChatMessage(".ticket viewid "..SFTicketInputBox:GetText(), "GUILD", nil)
	else
		GameTooltip:SetOwner(SFTicketHideButton, "ANCHOR_RIGHT", -33, 3)
		GameTooltip:SetText("Please enter a ticket number")
		GameTooltip:Show()
		GameTooltip:FadeOut()
	end
end)


-- Close Button
SFTicketCloseButton:SetScript("OnClick", function()
	SFTicketInputBox:ClearFocus()
	if SFTicketInputBox:GetText() ~= "" and ( SFTAssignTable[SFTicketInputBox:GetText()] == UnitName("player") or SFTAssignTable[SFTicketInputBox:GetText()] == "" or SFTAssignTable[SFTicketInputBox:GetText()] == nil ) then
		PlaySound("UChatScrollButton")
		SendChatMessage(".ticket close "..SFTicketInputBox:GetText(), "GUILD", nil)
		if #SFTListTable == 1 then
			if SFTListTable[1] == SFTicketInputBox:GetText() then
				SFTListTable = {}
				SFTicketTListFrame:Hide()
			end
		else
			for i, value in pairs(SFTListTable) do
				if value == SFTicketInputBox:GetText() then
					tremove(SFTListTable, i)
					sort(SFTListTable)
					TicketListing()
				end
			end
		end
	elseif SFTAssignTable[SFTicketInputBox:GetText()] ~= UnitName("player") then
		GameTooltip:SetOwner(SFTicketHideButton, "ANCHOR_RIGHT", -33, 3)
		GameTooltip:SetText("Ticket assigned to another GM")
		GameTooltip:Show()
		GameTooltip:FadeOut()
	else
		GameTooltip:SetOwner(SFTicketHideButton, "ANCHOR_RIGHT", -33, 3)
		GameTooltip:SetText("Please enter a ticket number")
		GameTooltip:Show()
		GameTooltip:FadeOut()
	end
end)


-- More info Button
SFTicketInfoButton:SetScript("OnClick", function()
	SFTicketInputBox:ClearFocus()
	if SFTicketPIFrame:GetText() ~= "Not Found" and SFTicketPIFrame:GetText() ~= "Spam Report" and SFTicketInputBox:GetText() == SFTicketIDFrame:GetText() and SFTicketInputBox:GetText() ~= "" then
		PlaySound("UChatScrollButton")
		SFTicketBorder:SetHeight(86)
		SFTicketFrame:SetHeight(86)
		SFTicketFrame:SetPoint("CENTER", SFTicketBorder, 0, 0)
		SFTicketHideFrame:Hide()
		SFTicketFrame:Hide()
		SFTicketTListFrame:Hide()
		SFTicketTabFrame:Hide()
		SFTicketInfoFrame:Show()
		SFTicketInfoTextButton:SetText(SFTicketPIFrame:GetText())
	elseif SFTicketInputBox:GetText() == "" then
		GameTooltip:SetOwner(SFTicketHideButton, "ANCHOR_RIGHT", -33, 3)
		GameTooltip:SetText("Please enter a ticket number")
		GameTooltip:Show()
		GameTooltip:FadeOut()
	elseif SFTicketInputBox:GetText() ~= SFTicketIDFrame:GetText() then
		GameTooltip:SetOwner(SFTicketHideButton, "ANCHOR_RIGHT", -33, 3)
		GameTooltip:SetText("Please view this ticket")
		GameTooltip:Show()
		GameTooltip:FadeOut()
	elseif SFTicketPIFrame:GetText() == "Spam Report" then
		GameTooltip:SetOwner(SFTicketHideButton, "ANCHOR_RIGHT", -33, 3)
		GameTooltip:SetText("Unavailable on a Spam Report")
		GameTooltip:Show()
		GameTooltip:FadeOut()
	else
		GameTooltip:SetOwner(SFTicketHideButton, "ANCHOR_RIGHT", -33, 3)
		GameTooltip:SetText("Ticket not found")
		GameTooltip:Show()
		GameTooltip:FadeOut()
	end
end)


-- Player Info Button
SFTicketInfoPlayerButton:SetScript("OnClick", function()
	SFTicketInfoSystem:SetText("yes")
	ChatFrame_AddMessageEventFilter("CHAT_MSG_SYSTEM", SFInfoFiltering)
	PlaySound("UChatScrollButton")
	SendChatMessage(".pinfo "..SFTicketPIFrame:GetText(), "GUILD", nil)
end)


-- Player IP Button
SFTicketInfoIPButton:SetScript("OnClick", function()
	if SFTicketInfoSystem:GetText() == "yes" then
		PlaySound("UChatScrollButton")
		SendChatMessage(".lookup player ip "..SFTicketIPFrame:GetText(), "GUILD", nil)
	else
		GameTooltip:SetOwner(SFTicketHideButton, "ANCHOR_RIGHT", -33, 3)
		GameTooltip:SetText("Please click on Player first")
		GameTooltip:Show()
		GameTooltip:FadeOut()
	end
end)


-- Appear Button
SFTicketInfoAppearButton:SetScript("OnClick", function()
	PlaySound("UChatScrollButton")
	SendChatMessage(".appear "..SFTicketPIFrame:GetText(), "GUILD", nil)
end)


-- Back Button
SFTicketInfoBackButton:SetScript("OnClick", function()
	PlaySound("UChatScrollButton")
	SFTicketBorder:SetHeight(135)
	SFTicketFrame:SetHeight(135)
	SFTicketFrame:SetPoint("CENTER", SFTicketBorder, 0, 0)
	SFTicketInfoFrame:Hide()
	SFTicketHideFrame:Show()
	SFTicketTabFrame:Show()
	SFTicketFrame:Show()
	if #SFTListTable ~= nil and #SFTListTable ~= 0 then
		SFTicketTListFrame:Show()
		if #SFTListTable < 7 then
			SFTicketTListScrollBar:Hide()
		end
	end
end)


-- Online Button
SFTicketOnlineButton:SetScript("OnClick", function()
	SFTicketInputBox:ClearFocus()
	PlaySound("UChatScrollButton")
	SendChatMessage(".ticket online", "GUILD", nil)
end)


-- Ticket Number List table filtering
local function TicketNum(tnum)
	if strfind(tnum, "Ticket|r:|cff00ccff ") then
		local SFTicketID = ""
		local SFTicketName = ""
		local SFTicketAssignedName = ""
		_, _, SFTicketID = strfind(tnum, "Ticket|r:|cff00ccff (%d+)")
		_, _, SFTicketName = strfind(tnum, "Created by|r:|cff00ccff |Hplayer:(.+)%[")
		_, _, SFTicketAssignedName = strfind(tnum, "Assigned to|r:|cff00ccff (%P+)")
		tinsert(SFTListTable, SFTicketID)
		if SFTicketName ~= nil then
			SFTNameTable[SFTicketID] = SFTicketName
		end
		if SFTicketAssignedName ~= nil then
			SFTAssignTable[SFTicketID] = SFTicketAssignedName
		end
	end
end


-- OnUpdate script to delay TicketListing()
local total = 0
local function ListUpdate(self, elapsed)
	total = total + elapsed
	if total >= 1 then
		if #SFTListTable ~= nil and #SFTListTable ~= 0 then
			TicketListing()
		else
			SFTicketOnlineButton:SetAlpha(1)
		end
		total = 0
		TicketListingUpdate:SetScript("OnUpdate", nil)
	end
end


-- Closed/New Tickets filtering
local function ClosedNewNum(cnnum)
	if strfind(cnnum, "New ticket from") then
		local SFTicketIDNew = ""
		local SFTicketNameNew = ""
		_, _, SFTicketIDNew = strfind(cnnum, "Ticket entry:|r|cffff00ff (%d+)")
		_, _, SFTicketNameNew = strfind(cnnum, "Hplayer:(.+)%[")
		tinsert(SFTListTable, SFTicketIDNew)
		if SFTicketNameNew ~= nil then
			SFTNameTable[SFTicketIDNew] = SFTicketNameNew
		end
		TicketListing()
	end
	if strfind(cnnum, "Closed by") then
		local SFTicketIDClosed = ""
		_, _, SFTicketIDClosed = strfind(cnnum, "Ticket|r:|cff00ccff (%d+)")
		_, _, SFTicketNameClosed = strfind(cnnum, "Closed by|r:|cff00ccff (%P+)")
		if SFTListTable ~= nil and SFTicketNameClosed ~= UnitName("player") then
			if #SFTListTable == 1 then
				SFTListTable = {}
				SFTicketTListFrame:Hide()
			else
				for i, value in pairs(SFTListTable) do
					if value == SFTicketIDClosed then
						tremove(SFTListTable, i)
						sort(SFTListTable)
						TicketListing()
					end
				end
			end
		end
	end
	if strfind(cnnum, "abandoned ticket entry") then
		local SFTicketAbandoned = ""
		_, _, SFTicketAbandoned = strfind(cnnum, "abandoned ticket entry:|r|cffff00ff (%d+)")
		if SFTListTable ~= nil then
			if #SFTListTable == 1 then
				SFTListTable = {}
				SFTicketTListFrame:Hide()
			else
				for i, value in pairs(SFTListTable) do
					if value == SFTicketAbandoned then
						tremove(SFTListTable, i)
						sort(SFTListTable)
						TicketListing()
					end
				end
			end
		end
	end
	if strfind(cnnum, "Assigned to") and not strfind(cnnum, "Unassigned by") then
		local SFTickedAssignedIDNew = ""
		local SFTicketAssignedNameNew = ""
		_, _, SFTickedAssignedIDNew = strfind(cnnum, "Ticket|r:|cff00ccff (%d+)")
		_, _, SFTicketAssignedNameNew = strfind(cnnum, "Assigned to|r:|cff00ccff (%P+)")
		if SFTicketAssignedNameNew ~= nil then
			SFTAssignTable[SFTickedAssignedIDNew] = SFTicketAssignedNameNew
		end
	end
	if strfind(cnnum, "Unassigned by") then
		local SFTickedAssignedIDClosed = ""
		_, _, SFTickedAssignedIDClosed = strfind(cnnum, "Ticket|r:|cff00ccff (%d+)")
		if SFTAssignTable[SFTickedAssignedIDClosed] ~= "" then
			SFTAssignTable[SFTickedAssignedIDClosed] = ""
		end
	end
end

ChatFrame_AddMessageEventFilter("CHAT_MSG_SYSTEM", ClosedNewNum)


-- Ticket listing function
function TicketListing()
	if #SFTListTable ~= nil and #SFTListTable ~= 0 then
		for i, value in pairs(SFTListTable) do
			if _G["SFTicketTListFontFrame"..i] == nil or _G["SFTicketTListFontFrame"..i] == "" then
				_G["SFTicketTListFontFrame"..i] = SFTicketTListContentFrame:CreateFontString("SFTicketTListFontFrame"..i, "ARTWORK", "GameFontNormal")
			end
			if not SFTicketTListFontHeight then
				SFTicketTListFontHeight = 0
			else
				SFTicketTListFontHeight = SFTicketTListFontHeight - 20
			end
			local SFTicketTListFontCurFrame = _G["SFTicketTListFontFrame"..i]
			SFTicketTListFontCurFrame:SetPoint("TOPLEFT", SFTicketTListContentFrame, 0, SFTicketTListFontHeight)
			SFTicketTListFontCurFrame:SetTextColor(0, 0, 0)
			SFTicketTListFontCurFrame:SetFont("Fonts\\FRIZQT__.TTF", 16)
			SFTicketTListFontCurFrame:SetJustifyH("LEFT")
			SFTicketTListFontCurFrame:SetText(value)
			if _G["SFTicketTListFontButton"..i] == nil or _G["SFTicketTListFontButton"..i] == "" then
				_G["SFTicketTListFontButton"..i] = CreateFrame("Button", "SFTicketTListFontButton"..i, SFTicketTListContentFrame)
			end
			local SFTicketTListFontCurButton = _G["SFTicketTListFontButton"..i]
			SFTicketTListFontCurButton:SetPoint("TOPLEFT", SFTicketTListContentFrame, 0, SFTicketTListFontHeight)
			SFTicketTListFontCurButton:Show()
			SFTicketTListFontCurButton:SetWidth(60)
			SFTicketTListFontCurButton:SetHeight(20)
			SFTicketTListFontCurButton:SetScript("OnClick", function()
				if value ~= nil then
					ChatFrame_AddMessageEventFilter("CHAT_MSG_SYSTEM", SFInfoFiltering)
					SFTicketInputBox:SetText(value)
					SFTicketInputBox:ClearFocus()
					if SFTicketInputBox:GetText() ~= SFTicketIDFrame:GetText() then
						SFTicketInfoSystem:SetText("no")
					end
					SFTicketIDFrame:SetText(SFTicketInputBox:GetText())
					SFTicketInfoTextButton:SetText(SFTicketPIFrame:GetText())
					PlaySound("UChatScrollButton")
					SendChatMessage(".ticket viewid "..value, "GUILD", nil)
				end
			end)
			SFTicketTListFontCurButton:SetScript("OnEnter", function()
				if value ~= nil and SFTNameTable[value] ~= nil then
					GameTooltip:SetOwner(SFTicketHideButton, "ANCHOR_RIGHT", -33, 3)
					if SFTAssignTable[value] ~= nil and SFTAssignTable[value] ~= "" then
						GameTooltip:SetText("Ticket #"..value.." | Created by: "..SFTNameTable[value].."\nAssigned to: "..SFTAssignTable[value])
					else
						GameTooltip:SetText("Ticket #"..value.." | Created by: "..SFTNameTable[value])
					end
					GameTooltip:Show()
					GameTooltip:FadeOut()
				end
			end)
			if #SFTListTable == i then
				if #SFTListTable < 7 then
					SFTicketTListScrollBar:Hide()
				else
					SFTicketTListScrollBar:Show()
				end
				SFTicketTListScrollMaxValue = i * 20 - 120
				if SFTicketTListScrollMaxValue < 0 then
					SFTicketTListScrollBar:SetMinMaxValues(0, 0)
					SFTicketTListFontHeight = nil
					ChatFrame_RemoveMessageEventFilter("CHAT_MSG_SYSTEM", TicketNum)
					if _G["SFTicketTListFontFrame"..i+1] ~= nil then
						_G["SFTicketTListFontFrame"..i+1]:SetText("")
						_G["SFTicketTListFontButton"..i+1]:Hide()
					end
				else
					SFTicketTListScrollBar:SetMinMaxValues(0, SFTicketTListScrollMaxValue)
					SFTicketTListFontHeight = nil
					ChatFrame_RemoveMessageEventFilter("CHAT_MSG_SYSTEM", TicketNum)
					if _G["SFTicketTListFontFrame"..i+1] ~= nil then
						_G["SFTicketTListFontFrame"..i+1]:SetText("")
						_G["SFTicketTListFontButton"..i+1]:Hide()
					end
				end
				SFTicketOnlineButton:SetAlpha(1)
			end
		end
		if SFTicketBorder:IsShown() and (not SFTicketAssignFrame:IsShown() and not SFTicketInfoFrame:IsShown()) then
			SFTicketTListFrame:Show()
		end
	else
		SFTicketOnlineButton:SetAlpha(1)
	end
end


-- List Button
SFTicketListButton:SetScript("OnClick", function()
	SFTListTable = {}
	SFTicketOnlineButton:SetAlpha(0.75)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_SYSTEM", TicketNum)
	SendChatMessage(".ticket list", "GUILD", nil)
	SFTicketInputBox:ClearFocus()
	PlaySound("UChatScrollButton")
	TicketListingUpdate:SetScript("OnUpdate", ListUpdate)
end)


-- Enable mousewheel on Ticket List frame
SFTicketTListFrame:EnableMouseWheel(true)
SFTicketTListFrame:SetScript("OnMouseWheel", function(self, delta)
	local SFTicketTListScrollBarCurrent = SFTicketTListScrollBar:GetValue(0)
	local scrollbarmin, scrollbarmax = SFTicketTListScrollBar:GetMinMaxValues()
	if delta < 0 and SFTicketTListScrollBarCurrent < scrollbarmax then
		SFTicketTListScrollBar:SetValue(SFTicketTListScrollBarCurrent + 20)
	elseif delta > 0 and SFTicketTListScrollBarCurrent > scrollbarmin then
		SFTicketTListScrollBar:SetValue(SFTicketTListScrollBarCurrent - 20)
	end
end)


-- Assign Button
SFTicketAssignButton:SetScript("OnClick", function()
	SFTicketInputBox:ClearFocus()
	if SFTicketInputBox:GetText() ~= "" then
		if SFGuildTable[8] == nil then
			for i=1,GetNumGuildMembers() do
				SFGuildMem =  GetGuildRosterInfo(i)
				SFGuildTable[i] = SFGuildMem
			end
			if SFGuildTable[8] == nil then
				GameTooltip:SetOwner(SFTicketHideButton, "ANCHOR_RIGHT", -33, 3)
				GameTooltip:SetText("Please open your Guild Panel\nand Show Offline Members")
				GameTooltip:Show()
				GameTooltip:FadeOut()
			else
				PlaySound("UChatScrollButton")
				SFTicketBorder:SetHeight(86)
				SFTicketFrame:SetHeight(86)
				SFTicketFrame:SetPoint("CENTER", SFTicketBorder, 0, 0)
				SFTicketHideFrame:Hide()
				SFTicketTabFrame:Hide()
				SFTicketFrame:Hide()
				SFTicketTListFrame:Hide()
				SFTicketAssignFrame:Show()
				SFTicketAssignTextButton:SetText("Assign n."..SFTicketInputBox:GetNumber().." to:")
			end
			UIDropDownMenu_Initialize(SFAssignMenu, function(level)
				for k,v in pairs(SFGuildTable) do
					info = UIDropDownMenu_CreateInfo()
					info.text = v
					info.value = v
					info.tooltipTitle = "GM name"
					info.func = function()
						UIDropDownMenu_SetSelectedID(SFAssignMenu, k)
						SFAssignSelName:SetText(v)
					end
					UIDropDownMenu_AddButton(info, level)
				end
			end)
			UIDropDownMenu_SetWidth(131, SFAssignMenu)
			UIDropDownMenu_JustifyText("CENTER", SFAssignMenu)
		else
			PlaySound("UChatScrollButton")
			SFTicketBorder:SetHeight(86)
			SFTicketFrame:SetHeight(86)
			SFTicketFrame:SetPoint("CENTER", SFTicketBorder, 0, 0)
			SFTicketHideFrame:Hide()
			SFTicketTabFrame:Hide()
			SFTicketFrame:Hide()
			SFTicketTListFrame:Hide()
			SFTicketAssignFrame:Show()
			SFTicketAssignTextButton:SetText("Assign n."..SFTicketInputBox:GetNumber().." to:")
		end
	else
		GameTooltip:SetOwner(SFTicketHideButton, "ANCHOR_RIGHT", -33, 3)
		GameTooltip:SetText("Please enter a ticket number")
		GameTooltip:Show()
		GameTooltip:FadeOut()
	end
end)


-- Accept Assign Button
SFTicketAssignYesButton:SetScript("OnClick", function()
	if SFAssignSelName:GetText() ~= nil then
		PlaySound("UChatScrollButton")
		SendChatMessage(".ticket assign "..SFTicketInputBox:GetText().." "..SFAssignSelName:GetText(), "GUILD", nil)
		SFTicketBorder:SetHeight(135)
		SFTicketFrame:SetHeight(135)
		SFTicketFrame:SetPoint("CENTER", SFTicketBorder, 0, 0)
		SFTicketHideFrame:Show()
		SFTicketTabFrame:Show()
		SFTicketFrame:Show()
		if #SFTListTable ~= nil and #SFTListTable ~= 0 then
			SFTicketTListFrame:Show()
			if #SFTListTable < 7 then
				SFTicketTListScrollBar:Hide()
			end
		end
		SFTicketAssignFrame:Hide()
		TicketListingUpdate:SetScript("OnUpdate", ListUpdate)
	else
		GameTooltip:SetOwner(SFTicketHideButton, "ANCHOR_RIGHT", -33, 3)
		GameTooltip:SetText("Please select a Game Master")
		GameTooltip:Show()
		GameTooltip:FadeOut()
	end
end)


-- Cancel Assign Button
SFTicketAssignNoButton:SetScript("OnClick", function()
	PlaySound("UChatScrollButton")
	SFTicketBorder:SetHeight(135)
	SFTicketFrame:SetHeight(135)
	SFTicketFrame:SetPoint("CENTER", SFTicketBorder, 0, 0)
	SFTicketHideFrame:Show()
	SFTicketTabFrame:Show()
	SFTicketFrame:Show()
	if #SFTListTable ~= nil and #SFTListTable ~= 0 then
		SFTicketTListFrame:Show()
		if #SFTListTable < 7 then
			SFTicketTListScrollBar:Hide()
		end
	end
	SFTicketAssignFrame:Hide()
end)


-- Unassign Button
SFTicketUnassignButton:SetScript("OnClick", function()
	if SFTicketInputBox:GetText() ~= "" then
		SFTicketInputBox:ClearFocus()
		PlaySound("UChatScrollButton")
		SendChatMessage(".ticket unassign "..SFTicketInputBox:GetText(), "GUILD", nil)
		TicketListingUpdate:SetScript("OnUpdate", ListUpdate)
	else
		GameTooltip:SetOwner(SFTicketHideButton, "ANCHOR_RIGHT", -33, 3)
		GameTooltip:SetText("Please enter a ticket number")
		GameTooltip:Show()
		GameTooltip:FadeOut()
	end
end)


-- GM Tab
SFTicketGMTab:SetScript("OnClick", function()
	if not SFTicketGMTabFrame:IsShown() then
		PlaySound("UChatScrollButton")
		SFTicketTicketsTab:SetAlpha(0.75)
		SFTicketGMTab:SetAlpha(1)
		SFTicketFrame:Hide()
		SFTicketFrame:SetPoint("CENTER", SFTicketBorder, 0, 0)
		SFTicketGMTabFrame:Show()
	end
end)


-- GM Mode CheckButton
SFTicketGMModeCheck:SetScript("OnClick", function()
	if SFTicketGMModeCheck:GetChecked() then
		SendChatMessage(".gm on", "GUILD", nil)
	else
		SendChatMessage(".gm off", "GUILD", nil)
	end
end)


-- Invisible CheckButton
SFTicketGMInvisibleCheck:SetScript("OnClick", function()
	if SFTicketGMInvisibleCheck:GetChecked() then
		SendChatMessage(".gm vis off", "GUILD", nil)
		SFTicketGMModeCheck:SetChecked(true)
		SFTicketGMWhispCheck:SetChecked(true)
	else
		SendChatMessage(".gm vis on","GUILD",nil)
	end
end)


-- Chat Badge CheckButton
SFTicketGMBadgeCheck:SetScript("OnClick", function()
	if SFTicketGMBadgeCheck:GetChecked() then
		SendChatMessage(".gm chat on", "GUILD", nil)
	else
		SendChatMessage(".gm chat off", "GUILD", nil)
	end
end)


-- Whispers OFF CheckButton
ChatFrame_AddMessageEventFilter("CHAT_MSG_SYSTEM", function(msg) if strfind(msg, "Accepting Whisper: ON") then SFTicketGMWhispCheck:SetChecked(false) end end)
SFTicketGMWhispCheck:SetScript("OnClick", function()
	if SFTicketGMWhispCheck:GetChecked() then
		SendChatMessage(".whisper off", "GUILD", nil)
	else
		SendChatMessage(".whisper on", "GUILD", nil)
	end
end)


-- Settings Tab
SFTicketSetTab:SetScript("OnClick", function()
	if not SFSettingsFrame:IsShown() then
		PlaySound("UChatScrollButton")
		SFTicketSetTab:SetAlpha(1)
		SFSettingsFrame:Show()
	else
		PlaySound("UChatScrollButton")
		SFSettingsFrame:Hide()
		SFTicketSetTab:SetAlpha(0.75)
	end
end)


-- Close Settings Frame
SFSettingsCloseButton:SetScript("OnClick", function()
	PlaySound("UChatScrollButton")
	SFSettingsFrame:Hide()
	SFTicketSetTab:SetAlpha(0.75)
end)


-- Settings scaling slider
SFSettingsScalingSlider:SetScript("OnMouseUp", function(self, button)
	if SFSettingsScalingSlider:GetValue() > 0 then
		SFScale = 1 + SFSettingsScalingSlider:GetValue() / 10
	else
		SFScale = 1
	end
	SFTicketBorder:SetScale(SFScale)
	SFTicketHideButton:SetScale(SFScale)
	SFTicketInfoFrame:SetScale(SFScale)
	SFTicketAssignFrame:SetScale(SFScale)
	SFTicketTabFrame:SetScale(SFScale)
	SFTicketGMTabFrame:SetScale(SFScale)
	SFTicketTListFrame:SetScale(SFScale)
	SFTicketBanFrame:SetScale(SFScale)
end)
SFSettingsScalingSlider:SetScript("OnValueChanged", function()
	if SFSettingsScalingSlider:GetValue() > 0 then
		currentscaling = 1 + SFSettingsScalingSlider:GetValue() / 10
	else
		currentscaling = 1
	end
	SFTicketBorder:SetScale(currentscaling)
	SFTicketHideButton:SetScale(currentscaling)
	SFTicketInfoFrame:SetScale(currentscaling)
	SFTicketAssignFrame:SetScale(currentscaling)
	SFTicketTabFrame:SetScale(currentscaling)
	SFTicketGMTabFrame:SetScale(currentscaling)
	SFTicketTListFrame:SetScale(currentscaling)
	SFTicketBanFrame:SetScale(currentscaling)
	GameTooltip:SetOwner(SFTicketHideButton, "ANCHOR_RIGHT", -33, 3)
	GameTooltip:SetText("Scaling: x"..currentscaling)
	GameTooltip:Show()
	GameTooltip:FadeOut()
end)
SFSettingsScalingSlider:SetScript("OnEnter", function()
	if SFSettingsScalingSlider:GetValue() > 0 then
		currentscaling = 1 + SFSettingsScalingSlider:GetValue() / 10
	else
		currentscaling = 1
	end
	GameTooltip:SetOwner(SFTicketHideButton, "ANCHOR_RIGHT", -33, 3)
	GameTooltip:SetText("Scaling: x"..currentscaling)
	GameTooltip:Show()
	GameTooltip:FadeOut()
end)


-- Banhammer menu buttons
UnitPopupButtons["BAN_HAMMER"] = { text = "|cffff0000Banhammer", dist = 0 }
table.insert(UnitPopupMenus["FRIEND"], #UnitPopupMenus["FRIEND"]-1, "BAN_HAMMER")
table.insert(UnitPopupMenus["PLAYER"], #UnitPopupMenus["PLAYER"]-1, "BAN_HAMMER")


-- Banhammer filtering function
local function Baninfo_Filter(pinf)
	pinfoname = ""
	pinfoacc = ""
	pinfoip = ""
	_, _, pinfoname = strfind(pinf, "%[(.+)%]")
	_, _, pinfoacc = strfind(pinf, "Account: (%S+)")
	_, _, pinfoip = strfind(pinf, "Last IP: (%S+)")
	SFBanInfoAcc:SetText(pinfoacc)
	SFBanInfoIP:SetText(pinfoip)
	if pinfoname == UnitName("player") then
		SFTicketBanTextButton:SetText(pinfoname)
	end
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_SYSTEM", Baninfo_Filter)
end


-- Banhammer function and Hook ToggleDropDownMenu
function Ban_Function()
	local i = 2
	while (1) do
		if _G["DropDownList"..UIDROPDOWNMENU_MENU_LEVEL.."Button"..i] ~= nil then
			local button = _G["DropDownList"..UIDROPDOWNMENU_MENU_LEVEL.."Button"..i]
			if button.value == "BAN_HAMMER" then
				button.func = function()
					SFTicketBanTextButton:SetText(DropDownList1Button1:GetText())
					SendChatMessage(".pinfo "..DropDownList1Button1:GetText(), "GUILD", nil)
					ChatFrame_AddMessageEventFilter("CHAT_MSG_SYSTEM", Baninfo_Filter)
					SFTicketBanDInputBox:SetText("-1d")
					SFTicketBanDInputBox:ClearFocus()
					SFTicketBanInputBox:SetText("")
					SFTicketHideFrame:Hide()
					SFTicketFrame:Hide()
					SFTicketTabFrame:Hide()
					SFTicketAssignFrame:Hide()
					SFTicketInfoFrame:Hide()
					SFTicketGMTabFrame:Hide()
					SFTicketTListFrame:Hide()
					SFTicketBorder:Show()
					SFTicketBanFrame:Show()
					SFTicketBorder:SetClampedToScreen(true)
					SFTicketBorder:SetHeight(111)
					SFTicketFrame:SetHeight(111)
					SFTicketFrame:SetPoint("CENTER", SFTicketBorder, 0, 0)
				end
				break
			end
			i = i + 1
		else
			break
		end
	end
end
hooksecurefunc("ToggleDropDownMenu", Ban_Function)


-- Ban Input Box OnEscapePressed
SFTicketBanInputBox:SetScript("OnEscapePressed", function()
	PlaySound("UChatScrollButton")
	SFTicketBorder:SetHeight(135)
	SFTicketFrame:SetHeight(135)
	SFTicketFrame:SetPoint("CENTER", SFTicketBorder, 0, 0)
	SFTicketHideFrame:Show()
	SFTicketTabFrame:Show()
	SFTicketFrame:Show()
	SFTicketBanFrame:Hide()
	SFTicketTicketsTab:SetAlpha(1)
	SFTicketGMTab:SetAlpha(0.75)
end)


-- Ban Input Box OnEnterPressed
SFTicketBanDInputBox:SetScript("OnEnterPressed", function()
	if SFTicketBanTextButton:GetText() == UnitName("player") then
		GameTooltip:SetOwner(SFTicketHideButton, "ANCHOR_RIGHT", -33, 3)
		GameTooltip:SetText("No, you can't ban yourself")
		GameTooltip:Show()
		GameTooltip:FadeOut()
	elseif SFTicketBanInputBox:GetText() ~= "" and SFTicketBanDInputBox:GetText() ~= "" then
		StaticPopupDialogs["BAN_POPUP"] = {
			text = "Are you sure to ban "..SFTicketBanTextButton:GetText().."\n Account: "..SFBanInfoAcc:GetText().."\n IP: "..SFBanInfoIP:GetText().."\n Duration: "..SFTicketBanDInputBox:GetText().."\n Reason: "..SFTicketBanInputBox:GetText(),
			button1 = "Account + IP",
			button3 = "Acc. only",
			button2 = "Cancel",
			OnAccept = function()
				SendChatMessage(".ban account "..SFBanInfoAcc:GetText().." "..SFTicketBanDInputBox:GetText().." "..SFTicketBanInputBox:GetText(), "GUILD", nil) SendChatMessage(".ban ip "..SFBanInfoIP:GetText().." "..SFTicketBanDInputBox:GetText().." "..SFTicketBanInputBox:GetText(), "GUILD", nil)
			end,
			OnAlt = function()
				SendChatMessage(".ban account "..SFBanInfoAcc:GetText().." "..SFTicketBanDInputBox:GetText().." "..SFTicketBanInputBox:GetText(), "GUILD", nil)
			end,
			timeout = 0,
			whileDead = true,
			hideOnEscape = true
		}
		StaticPopup_Show ("BAN_POPUP")
		PlaySound("UChatScrollButton")
		SFTicketBorder:SetHeight(135)
		SFTicketFrame:SetHeight(135)
		SFTicketFrame:SetPoint("CENTER", SFTicketBorder, 0, 0)
		SFTicketHideFrame:Show()
		SFTicketHideButton:SetWidth(25)
		SFTicketHideButton:SetText("X")
		SFTicketTabFrame:Show()
		SFTicketFrame:Show()
		if #SFTListTable ~= nil and #SFTListTable ~= 0 then
			SFTicketTListFrame:Show()
			if #SFTListTable < 7 then
				SFTicketTListScrollBar:Hide()
			end
		end
		SFTicketBanFrame:Hide()
		SFTicketTicketsTab:SetAlpha(1)
		SFTicketGMTab:SetAlpha(0.75)
	else
		GameTooltip:SetOwner(SFTicketHideButton, "ANCHOR_RIGHT", -33, 3)
		GameTooltip:SetText("Specify a duration and a reason")
		GameTooltip:Show()
		GameTooltip:FadeOut()
	end
end)
SFTicketBanInputBox:SetScript("OnEnterPressed", function()
	if SFTicketBanTextButton:GetText() == UnitName("player") then
		GameTooltip:SetOwner(SFTicketHideButton, "ANCHOR_RIGHT", -33, 3)
		GameTooltip:SetText("No, you can't ban yourself")
		GameTooltip:Show()
		GameTooltip:FadeOut()
	elseif SFTicketBanInputBox:GetText() ~= "" and SFTicketBanDInputBox:GetText() ~= "" then
		StaticPopupDialogs["BAN_POPUP"] = {
			text = "Are you sure to ban "..SFTicketBanTextButton:GetText().."\n Account: "..SFBanInfoAcc:GetText().."\n IP: "..SFBanInfoIP:GetText().."\n Duration: "..SFTicketBanDInputBox:GetText().."\n Reason: "..SFTicketBanInputBox:GetText(),
			button1 = "Account + IP",
			button3 = "Acc. only",
			button2 = "Cancel",
			OnAccept = function()
				SendChatMessage(".ban account "..SFBanInfoAcc:GetText().." "..SFTicketBanDInputBox:GetText().." "..SFTicketBanInputBox:GetText(), "GUILD", nil) SendChatMessage(".ban ip "..SFBanInfoIP:GetText().." "..SFTicketBanDInputBox:GetText().." "..SFTicketBanInputBox:GetText(), "GUILD", nil)
			end,
			OnAlt = function()
				SendChatMessage(".ban account "..SFBanInfoAcc:GetText().." "..SFTicketBanDInputBox:GetText().." "..SFTicketBanInputBox:GetText(), "GUILD", nil)
			end,
			timeout = 0,
			whileDead = true,
			hideOnEscape = true
		}
		StaticPopup_Show ("BAN_POPUP")
		PlaySound("UChatScrollButton")
		SFTicketBorder:SetHeight(135)
		SFTicketFrame:SetHeight(135)
		SFTicketFrame:SetPoint("CENTER", SFTicketBorder, 0, 0)
		SFTicketHideFrame:Show()
		SFTicketHideButton:SetWidth(25)
		SFTicketHideButton:SetText("X")
		SFTicketTabFrame:Show()
		SFTicketFrame:Show()
		if #SFTListTable ~= nil and #SFTListTable ~= 0 then
			SFTicketTListFrame:Show()
			if #SFTListTable < 7 then
				SFTicketTListScrollBar:Hide()
			end
		end
		SFTicketBanFrame:Hide()
		SFTicketTicketsTab:SetAlpha(1)
		SFTicketGMTab:SetAlpha(0.75)
	else
		GameTooltip:SetOwner(SFTicketHideButton, "ANCHOR_RIGHT", -33, 3)
		GameTooltip:SetText("Specify a duration and a reason")
		GameTooltip:Show()
		GameTooltip:FadeOut()
	end
end)


-- Banhammer Button
SFTicketBanhammerButton:SetScript("OnClick", function()
	if SFTicketBanTextButton:GetText() == UnitName("player") then
		GameTooltip:SetOwner(SFTicketHideButton, "ANCHOR_RIGHT", -33, 3)
		GameTooltip:SetText("No, you can't ban yourself")
		GameTooltip:Show()
		GameTooltip:FadeOut()
	elseif SFTicketBanInputBox:GetText() ~= "" and SFTicketBanDInputBox:GetText() ~= "" then
		StaticPopupDialogs["BAN_POPUP"] = {
			text = "Are you sure to ban "..SFTicketBanTextButton:GetText().."\n Account: "..SFBanInfoAcc:GetText().."\n IP: "..SFBanInfoIP:GetText().."\n Duration: "..SFTicketBanDInputBox:GetText().."\n Reason: "..SFTicketBanInputBox:GetText(),
			button1 = "Acc.+IP",
			button3 = "Acc. only",
			button2 = "Cancel",
			OnAccept = function()
				SendChatMessage(".ban account "..SFBanInfoAcc:GetText().." "..SFTicketBanDInputBox:GetText().." "..SFTicketBanInputBox:GetText(), "GUILD", nil)
				SendChatMessage(".ban ip "..SFBanInfoIP:GetText().." "..SFTicketBanDInputBox:GetText().." "..SFTicketBanInputBox:GetText(), "GUILD", nil)
			end,
			OnAlt = function()
				SendChatMessage(".ban account "..SFBanInfoAcc:GetText().." "..SFTicketBanDInputBox:GetText().." "..SFTicketBanInputBox:GetText(), "GUILD", nil)
			end,
			timeout = 0,
			whileDead = true,
			hideOnEscape = true
		}
		StaticPopup_Show ("BAN_POPUP")
		PlaySound("UChatScrollButton")
		SFTicketBorder:SetHeight(135)
		SFTicketFrame:SetHeight(135)
		SFTicketFrame:SetPoint("CENTER", SFTicketBorder, 0, 0)
		SFTicketHideFrame:Show()
		SFTicketHideButton:SetWidth(25)
		SFTicketHideButton:SetText("X")
		SFTicketTabFrame:Show()
		SFTicketFrame:Show()
		if #SFTListTable ~= nil and #SFTListTable ~= 0 then
			SFTicketTListFrame:Show()
			if #SFTListTable < 7 then
				SFTicketTListScrollBar:Hide()
			end
		end
		SFTicketBanFrame:Hide()
		SFTicketTicketsTab:SetAlpha(1)
		SFTicketGMTab:SetAlpha(0.75)
	else
		GameTooltip:SetOwner(SFTicketHideButton, "ANCHOR_RIGHT", -33, 3)
		GameTooltip:SetText("Specify a duration and a reason")
		GameTooltip:Show()
		GameTooltip:FadeOut()
	end
end)


-- Cancel Ban Button
SFTicketBanBackButton:SetScript("OnClick", function()
	PlaySound("UChatScrollButton")
	SFTicketBorder:SetHeight(135)
	SFTicketFrame:SetHeight(135)
	SFTicketFrame:SetPoint("CENTER", SFTicketBorder, 0, 0)
	SFTicketHideFrame:Show()
	SFTicketHideButton:SetWidth(25)
	SFTicketHideButton:SetText("X")
	SFTicketTabFrame:Show()
	SFTicketFrame:Show()
	if #SFTListTable ~= nil and #SFTListTable ~= 0 then
		SFTicketTListFrame:Show()
		if #SFTListTable < 7 then
			SFTicketTListScrollBar:Hide()
		end
	end
	SFTicketBanFrame:Hide()
	SFTicketTicketsTab:SetAlpha(1)
	SFTicketGMTab:SetAlpha(0.75)
end)


-- Black check color
SFSettingsBlackButton:SetScript("OnClick", function()
	if SFSettingsBlackButton:GetChecked() then
		SFSettingsRedButton:SetChecked(false)
		SFSettingsGreenButton:SetChecked(false)
		SFSettingsBlueButton:SetChecked(false)
		SFSettingsPurpleButton:SetChecked(false)
		SFSettingsRainbowButton:SetChecked(false)
		SFColor = "black"
		Color_PMT(0, 0, 0)
	else
		SFSettingsBlackButton:SetChecked(true)
	end
end)


-- Red check color
SFSettingsRedButton:SetScript("OnClick", function()
	if SFSettingsRedButton:GetChecked() then
		SFSettingsBlackButton:SetChecked(false)
		SFSettingsGreenButton:SetChecked(false)
		SFSettingsBlueButton:SetChecked(false)
		SFSettingsPurpleButton:SetChecked(false)
		SFSettingsRainbowButton:SetChecked(false)
		SFColor = "red"
		Color_PMT(1, 0, 0)
	else
		SFSettingsRedButton:SetChecked(true)
	end
end)


-- Green check color
SFSettingsGreenButton:SetScript("OnClick", function()
	if SFSettingsGreenButton:GetChecked() then
		SFSettingsBlackButton:SetChecked(false)
		SFSettingsRedButton:SetChecked(false)
		SFSettingsBlueButton:SetChecked(false)
		SFSettingsPurpleButton:SetChecked(false)
		SFSettingsRainbowButton:SetChecked(false)
		SFColor = "green"
		Color_PMT(0, 1, 0)
	else
		SFSettingsGreenButton:SetChecked(true)
	end
end)


-- Blue check color
SFSettingsBlueButton:SetScript("OnClick", function()
	if SFSettingsBlueButton:GetChecked() then
		SFSettingsBlackButton:SetChecked(false)
		SFSettingsRedButton:SetChecked(false)
		SFSettingsGreenButton:SetChecked(false)
		SFSettingsPurpleButton:SetChecked(false)
		SFSettingsRainbowButton:SetChecked(false)
		SFColor = "blue"
		Color_PMT(0, 0, 1)
	else
		SFSettingsBlueButton:SetChecked(true)
	end
end)


-- Purple check color
SFSettingsPurpleButton:SetScript("OnClick", function()
	if SFSettingsPurpleButton:GetChecked() then
		SFSettingsBlackButton:SetChecked(false)
		SFSettingsRedButton:SetChecked(false)
		SFSettingsGreenButton:SetChecked(false)
		SFSettingsBlueButton:SetChecked(false)
		SFSettingsRainbowButton:SetChecked(false)
		SFColor = "purple"
		Color_PMT(75/255, 0, 0.51)
	else
		SFSettingsPurpleButton:SetChecked(true)
	end
end)


-- Rainbow check color
SFSettingsRainbowButton:SetScript("OnClick", function()
	if SFSettingsRainbowButton:GetChecked() then
		SFSettingsBlackButton:SetChecked(false)
		SFSettingsRedButton:SetChecked(false)
		SFSettingsGreenButton:SetChecked(false)
		SFSettingsBlueButton:SetChecked(false)
		SFSettingsPurpleButton:SetChecked(false)
		SFColor = "rainbow"
		SFTicketBorder:SetBackdropBorderColor(0, 0, 0)
		SFTicketViewButton:GetRegions():SetVertexColor(1, 0, 0)
		SFTicketInfoButton:GetRegions():SetVertexColor(1, 150/255, 0)
		SFTicketOnlineButton:GetRegions():SetVertexColor(1, 1, 0)
		SFTicketListButton:GetRegions():SetVertexColor(50/255, 1, 0)
		SFTicketUnassignButton:GetRegions():SetVertexColor(0, 0, 1)
		SFTicketAssignButton:GetRegions():SetVertexColor(168/255, 0.4, 1)
		SFTicketCloseButton:GetRegions():SetVertexColor(75/255, 0, 0.51)
		SFTicketHideButton:GetRegions():SetVertexColor(30/255, 0, 50/255)
		select(1, SFAssignMenu:GetRegions()):SetVertexColor(168/255, 0.4, 1)
		select(2, SFAssignMenu:GetRegions()):SetVertexColor(168/255, 0.4, 1)
		select(3, SFAssignMenu:GetRegions()):SetVertexColor(168/255, 0.4, 1)
		SFTicketAssignYesButton:GetRegions():SetVertexColor(0, 1, 0)
		SFTicketAssignNoButton:GetRegions():SetVertexColor(1, 0, 0)
		SFTicketInfoBackButton:GetRegions():SetVertexColor(1, 0, 0)
		SFTicketInfoIPButton:GetRegions():SetVertexColor(1, 0.5, 0)
		SFTicketInfoPlayerButton:GetRegions():SetVertexColor(1, 1, 0)
		SFTicketInfoAppearButton:GetRegions():SetVertexColor(0.5, 1, 0)
		SFTicketTicketsTab:GetRegions():SetVertexColor(0, 0, 0)
		SFTicketGMTab:GetRegions():SetVertexColor(0, 0, 0)
		SFTicketSetTab:GetRegions():SetVertexColor(218, 165, 32)
		select(1, SFTicketTListScrollBar:GetRegions()):SetVertexColor(0, 0, 0)
		SFTicketGMModeButton:GetRegions():SetVertexColor(0, 0, 0)
		SFTicketGMInvisibleButton:GetRegions():SetVertexColor(0, 0, 0)
		SFTicketGMBadgeButton:GetRegions():SetVertexColor(0, 0, 0)
		SFTicketGMWhispButton:GetRegions():SetVertexColor(0, 0, 0)
		SFTicketBanhammerButton:GetRegions():SetVertexColor(0, 1, 0)
		SFTicketBanBackButton:GetRegions():SetVertexColor(1, 0, 0)
	else
		SFSettingsRainbowButton:SetChecked(true)
	end
end)