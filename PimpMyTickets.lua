-- PimpMyTickets (TrinityCore/OregonCore)



-- Main Frames
local TicketParentFrame = CreateFrame("Frame", "TicketParentFrame", UIParent)
TicketParentFrame:SetPoint("CENTER")
TicketParentFrame:SetClampedToScreen(true)
TicketParentFrame:SetWidth(160)
TicketParentFrame:SetHeight(135)
TicketParentFrame:SetBackdrop({
	edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
	tile = false,
	edgeSize = 32,
	insets = { left = 10, right = 10, top = 10, bottom = 10 }
})
TicketParentFrame:SetBackdropBorderColor(0, 0, 0)
TicketParentFrame:SetMovable(true)
TicketParentFrame:EnableMouse(true)
TicketParentFrame:CreateTitleRegion():SetAllPoints()
TicketParentFrame:SetUserPlaced(true)
local TicketMainFrame = CreateFrame("Frame", nil, TicketParentFrame)
TicketMainFrame:SetPoint("CENTER")
TicketMainFrame:SetWidth(160)
TicketMainFrame:SetHeight(135)



-- Hide Frame
local HideFrame = CreateFrame("Frame", nil, UIParent)
local HideButton = CreateFrame("Button", nil, HideFrame, "UIPanelButtonGrayTemplate")
HideButton:SetPoint("TOPLEFT", TicketMainFrame, 6, -5)
HideButton:SetClampedToScreen(true)
HideButton:RegisterForDrag("LeftButton")
HideButton:SetWidth(25)
HideButton:SetHeight(25)
HideButton:SetPushedTextOffset(0, 0)
HideButton:GetRegions():SetVertexColor(0, 0, 0)
HideButton:SetPushedTexture(x)
HideButton:SetText("X")
HideButton:GetHighlightTexture():SetVertexColor(0.5, 0.5, 0.5)
HideButton:SetAlpha(0.75)



-- Tabs Frame
local TabsFrame = CreateFrame("Frame", nil, UIParent)

local TicketsTabButton = CreateFrame("Button", nil, TabsFrame, "UIPanelButtonGrayTemplate")
TicketsTabButton:SetPoint("TOPLEFT", TicketMainFrame, 31, -5)
TicketsTabButton:RegisterForDrag("LeftButton")
TicketsTabButton:SetText("Tickets")
TicketsTabButton:SetWidth(60)
TicketsTabButton:SetHeight(25)
TicketsTabButton:SetPushedTextOffset(0, 0)
TicketsTabButton:GetRegions():SetVertexColor(0, 0, 0)
TicketsTabButton:GetPushedTexture():SetVertexColor(0, 0, 0)
TicketsTabButton:SetPushedTexture(x)
TicketsTabButton:GetHighlightTexture():SetVertexColor(0.5, 0.5, 0.5)

local GMTabButton = CreateFrame("Button", nil, TabsFrame, "UIPanelButtonGrayTemplate")
GMTabButton:SetPoint("TOPLEFT", TicketMainFrame, 91, -5)
GMTabButton:RegisterForDrag("LeftButton")
GMTabButton:SetText("GM")
GMTabButton:SetWidth(40)
GMTabButton:SetHeight(25)
GMTabButton:SetPushedTextOffset(0, 0)
GMTabButton:GetRegions():SetVertexColor(0, 0, 0)
GMTabButton:GetPushedTexture():SetVertexColor(0, 0, 0)
GMTabButton:SetPushedTexture(x)
GMTabButton:GetHighlightTexture():SetVertexColor(0.5, 0.5, 0.5)
GMTabButton:SetAlpha(0.75)

local SettingsTabButton = CreateFrame("Button", nil, TabsFrame)
SettingsTabButton:SetPoint("TOPLEFT", TicketMainFrame, 130, -5)
SettingsTabButton:RegisterForDrag("LeftButton")
SettingsTabButton:SetWidth(25)
SettingsTabButton:SetHeight(25)
SettingsTabButton:SetAlpha(0.75)
local SettingsTabTexture = SettingsTabButton:CreateTexture(nil, "ARTWORK")
SettingsTabTexture:SetTexture("Interface\\AddOns\\PimpMyTickets\\icon-config.tga")
SettingsTabTexture:SetPoint("TOPLEFT", TicketMainFrame, 128.5, -6.5)
SettingsTabTexture:SetWidth(25)
SettingsTabTexture:SetHeight(25)



-- Main Tab
local TicketInputBox = CreateFrame("EditBox", nil, TicketMainFrame, "InputBoxTemplate")
TicketInputBox:SetPoint("TOPLEFT", 15, -30)
TicketInputBox:SetWidth(63)
TicketInputBox:SetHeight(25)
TicketInputBox:SetAutoFocus(false)
TicketInputBox:SetNumeric(true)
TicketInputBox:SetMaxLetters(4)
TicketInputBox:EnableMouseWheel(true)

local TicketViewButton = CreateFrame("Button", nil, TicketMainFrame, "UIPanelButtonGrayTemplate")
TicketViewButton:SetPoint("TOPLEFT", 80, -30)
TicketViewButton:SetText("View")

local TicketCloseButton = CreateFrame("Button", nil, TicketMainFrame, "UIPanelButtonGrayTemplate")
TicketCloseButton:SetPoint("TOPLEFT", 5, -55)
TicketCloseButton:SetText("Close")

local TicketInfoButton = CreateFrame("Button", nil, TicketMainFrame, "UIPanelButtonGrayTemplate")
TicketInfoButton:SetPoint("TOPLEFT", 80, -55)
TicketInfoButton:SetText("More info")

local TicketAssignButton = CreateFrame("Button", nil, TicketMainFrame, "UIPanelButtonGrayTemplate")
TicketAssignButton:SetPoint("TOPLEFT", 5, -80)
TicketAssignButton:SetText("Assign")
local AssignMenuFrame = CreateFrame("Frame", "AssignMenuFrame", UIParent, "UIDropDownMenuTemplate")

local TicketOnlineButton = CreateFrame("Button", nil, TicketMainFrame, "UIPanelButtonGrayTemplate")
TicketOnlineButton:SetPoint("TOPLEFT", 80, -80)
TicketOnlineButton:SetText("Online")

local TicketUnassignButton = CreateFrame("Button", nil, TicketMainFrame, "UIPanelButtonGrayTemplate")
TicketUnassignButton:SetPoint("TOPLEFT", 5, -105)
TicketUnassignButton:SetText("Unassign")

local TicketListButton = CreateFrame("Button", nil, TicketMainFrame, "UIPanelButtonGrayTemplate")
TicketListButton:SetPoint("TOPLEFT", 80, -105)
TicketListButton:SetText("List")

for i,value in pairs({ TicketViewButton, TicketCloseButton, TicketInfoButton, TicketAssignButton, TicketOnlineButton, TicketUnassignButton, TicketListButton }) do
	value:SetWidth(75)
	value:SetHeight(25)
	value:GetRegions():SetVertexColor(0, 0, 0)
	value:SetPushedTexture(x)
	value:GetHighlightTexture():SetVertexColor(0.5, 0.5, 0.5)
end



-- GM Tab
local GMTabFrame = CreateFrame("Frame", nil, UIParent)
GMTabFrame:Hide()

local GMModeFrame = CreateFrame("Button", nil, GMTabFrame, "UIPanelButtonGrayTemplate")
GMModeFrame:SetPoint("TOPLEFT", TicketMainFrame, 5, -30)
GMModeFrame:SetText("GM Mode")
local GMModeButton = CreateFrame("CheckButton", nil, GMTabFrame, "InterfaceOptionsCheckButtonTemplate")
GMModeButton:SetPoint("TOPLEFT", TicketMainFrame, 105, -30)

local GMInvisibleFrame = CreateFrame("Button", nil, GMTabFrame, "UIPanelButtonGrayTemplate")
GMInvisibleFrame:SetPoint("TOPLEFT", TicketMainFrame, 5, -55)
GMInvisibleFrame:SetText("Invisible")
local GMInvisibleButton = CreateFrame("CheckButton", nil, GMTabFrame, "InterfaceOptionsCheckButtonTemplate")
GMInvisibleButton:SetPoint("TOPLEFT", TicketMainFrame, 105, -55)

local GMBadgeFrame = CreateFrame("Button", nil, GMTabFrame, "UIPanelButtonGrayTemplate")
GMBadgeFrame:SetPoint("TOPLEFT", TicketMainFrame, 5, -80)
GMBadgeFrame:SetText("Chat Badge")
local GMBadgeButton = CreateFrame("CheckButton", nil, GMTabFrame, "InterfaceOptionsCheckButtonTemplate")
GMBadgeButton:SetPoint("TOPLEFT", TicketMainFrame, 105, -80)

local GMWhispersFrame = CreateFrame("Button", nil, GMTabFrame, "UIPanelButtonGrayTemplate")
GMWhispersFrame:SetPoint("TOPLEFT", TicketMainFrame, 5, -105)
GMWhispersFrame:SetText("Whisp. OFF")
local GMWhispersButton = CreateFrame("CheckButton", nil, GMTabFrame, "InterfaceOptionsCheckButtonTemplate")
GMWhispersButton:SetPoint("TOPLEFT", TicketMainFrame, 105, -105)

for i,value in pairs({ GMModeFrame, GMInvisibleFrame, GMBadgeFrame, GMWhispersFrame }) do
	value:SetWidth(100)
	value:SetHeight(25)
	value:SetPushedTextOffset(0, 0)
	value:GetRegions():SetVertexColor(0, 0, 0)
	value:SetPushedTexture(x)
	value:SetHighlightTexture(x)
end

for i,value in pairs({ GMModeButton, GMInvisibleButton, GMBadgeButton, GMWhispersButton }) do
	value:GetRegions():SetVertexColor(0, 0, 0)
	value:SetHitRectInsets(0, 0, 0, 0)
	value:SetChecked(true)
end



-- Settings Panel
local SettingsFrame = CreateFrame("Frame", "SettingsFrame", UIParent)
SettingsFrame:SetPoint("CENTER")
SettingsFrame:SetClampedToScreen(true)
SettingsFrame:SetWidth(180)
SettingsFrame:SetHeight(270)
SettingsFrame:SetBackdrop({
	bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",
	edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
	tile = false,
	edgeSize = 16
})
SettingsFrame:SetBackdropBorderColor(0, 0, 0)
SettingsFrame:SetMovable(true)
SettingsFrame:EnableMouse(true)
SettingsFrame:CreateTitleRegion():SetAllPoints()
SettingsFrame:SetUserPlaced(true)
SettingsFrame:Hide()

local SettingsFont = SettingsFrame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
SettingsFont:SetPoint("TOPLEFT", SettingsFrame, 50, -5)
SettingsFont:SetFont("Fonts\\FRIZQT__.TTF", 20)
SettingsFont:SetJustifyH("LEFT")
SettingsFont:SetText("Settings")

local SettingsScalingFont = SettingsFrame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
SettingsScalingFont:SetPoint("TOPLEFT", SettingsFrame, 10, -40)
SettingsScalingFont:SetFont("Fonts\\FRIZQT__.TTF", 18)
SettingsScalingFont:SetJustifyH("LEFT")
SettingsScalingFont:SetText("Scaling:")

local SettingsScalingSlider = CreateFrame("Slider", "SettingsScalingSlider", SettingsFrame, "OptionsSliderTemplate")
SettingsScalingSlider:ClearAllPoints()
SettingsScalingSlider:SetPoint("TOPLEFT", 85, -43)
SettingsScalingSlider:SetMinMaxValues(0, 5)
SettingsScalingSlider:SetWidth(80)
SettingsScalingSliderLow:SetText(" |cffffffff1.0")
SettingsScalingSliderHigh:SetText("|cffffffff1.5 ")
SettingsScalingSlider:SetValueStep(1)
SettingsScalingSlider:SetBackdropBorderColor(0, 0, 0)
SettingsScalingSlider:SetHitRectInsets(0, 0, -5, -5)

local SettingsColorFont = SettingsFrame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
SettingsColorFont:SetPoint("TOPLEFT", SettingsFrame, 10, -70)
SettingsColorFont:SetFont("Fonts\\FRIZQT__.TTF", 18)
SettingsColorFont:SetJustifyH("LEFT")
SettingsColorFont:SetText("Color:")

local SettingsBlackFont = SettingsFrame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
SettingsBlackFont:SetText("|cffffffffBlack")

local SettingsBlackButton = CreateFrame("CheckButton", nil, SettingsFrame, "InterfaceOptionsCheckButtonTemplate")

local SettingsRedFont = SettingsFrame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
SettingsRedFont:SetText("|cffffffffRed")

local SettingsRedButton = CreateFrame("CheckButton", nil, SettingsFrame, "InterfaceOptionsCheckButtonTemplate")

local SettingsGreenFont = SettingsFrame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
SettingsGreenFont:SetText("|cffffffffGreen")

local SettingsGreenButton = CreateFrame("CheckButton", nil, SettingsFrame, "InterfaceOptionsCheckButtonTemplate")

local SettingsBlueFont = SettingsFrame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
SettingsBlueFont:SetText("|cffffffffBlue")

local SettingsBlueButton = CreateFrame("CheckButton", nil, SettingsFrame, "InterfaceOptionsCheckButtonTemplate")

local SettingsPurpleFont = SettingsFrame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
SettingsPurpleFont:SetText("|cffffffffPurple")

local SettingsPurpleButton = CreateFrame("CheckButton", nil, SettingsFrame, "InterfaceOptionsCheckButtonTemplate")

local SettingsRainbowFont = SettingsFrame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
SettingsRainbowFont:SetText("|cffffffffRainbow")

local SettingsRainbowButton = CreateFrame("CheckButton", nil, SettingsFrame, "InterfaceOptionsCheckButtonTemplate")

local SettingsCloseFont = SettingsFrame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
SettingsCloseFont:SetPoint("TOPLEFT", SettingsFrame, 68, -243)
SettingsCloseFont:SetFont("Fonts\\FRIZQT__.TTF", 15)
SettingsCloseFont:SetJustifyH("LEFT")
SettingsCloseFont:SetText("|cffff0000Close")

local SettingsCloseButton = CreateFrame("Button", nil, SettingsFrame)
SettingsCloseButton:SetPoint("TOPLEFT", SettingsFrame, 65, -240)
SettingsCloseButton:SetWidth(52)
SettingsCloseButton:SetHeight(20)

for i,value in pairs({ SettingsBlackFont, SettingsRedFont, SettingsGreenFont, SettingsBlueFont, SettingsPurpleFont, SettingsRainbowFont }) do
	value:SetPoint("TOPLEFT", SettingsFrame, 35, -73-i*22)
	value:SetFont("Fonts\\FRIZQT__.TTF", 16)
	value:SetJustifyH("LEFT")
end

for i,value in pairs({ SettingsBlackButton, SettingsRedButton, SettingsGreenButton, SettingsBlueButton, SettingsPurpleButton, SettingsRainbowButton }) do
	value:SetPoint("TOPLEFT", SettingsFrame, 137, -71-i*22)
	value:GetRegions():SetVertexColor(0, 0, 0)
	value:SetHitRectInsets(-100, 0, 0, 0)
end



-- Ticket List Frame
local TicketListFrame = CreateFrame("Frame", nil, UIParent)
TicketListFrame:SetWidth(47)
TicketListFrame:SetHeight(120)
TicketListFrame:SetPoint("TOPLEFT", TicketMainFrame, -47, -10)
TicketListFrame:Hide()

local TicketListScrollFrame = CreateFrame("ScrollFrame", "TicketListScrollFrame", TicketListFrame)
TicketListScrollFrame:SetPoint("TOPLEFT", 0, 0)
TicketListScrollFrame:SetPoint("BOTTOMRIGHT", 0, 0)
local TicketListScrollBar = CreateFrame("Slider", nil, TicketListScrollFrame, "UIPanelScrollBarTemplate")
TicketListScrollBar:SetPoint("TOPLEFT", TicketListFrame, "TOPRIGHT", -63, 2)
TicketListScrollBar:SetPoint("BOTTOMLEFT", TicketListFrame, "BOTTOMRIGHT", -63, 2)
select(1, TicketListScrollBar:GetRegions()):SetVertexColor(0, 0, 0)
TicketListScrollBar:SetMinMaxValues(0, 100)
TicketListScrollBar:SetValueStep(1)
TicketListScrollBar.scrollStep = 1
TicketListScrollBar:SetValue(0)
TicketListScrollBar:SetWidth(16)
TicketListScrollBar:SetScript("OnValueChanged", function(self, value)
	self:GetParent():SetVerticalScroll(value)
end)
TicketListFrame.TicketListScrollBar = TicketListScrollBar
TicketListScrollFrameScrollUpButton
:Hide()
TicketListScrollFrameScrollDownButton:Hide()

local TicketListContentFrame = CreateFrame("Frame", nil, TicketListScrollFrame)
TicketListContentFrame:SetWidth(120)
TicketListContentFrame:SetHeight(250) 
TicketListScrollFrame.TicketListContentFrame = TicketListContentFrame
TicketListScrollFrame:SetScrollChild(TicketListContentFrame)



-- Tables
local guildTable = {}
local ticketListTable = {}
local ticketNameTable = {}
local assignedTicketTable = {}
local onlineTicketTable = {}



-- Mono Color Function
local function ColorFrames(cr, cg, cb)
	TicketParentFrame:SetBackdropBorderColor(cr*0.3, cg*0.3, cb*0.3)
	TicketViewButton:GetRegions():SetVertexColor(cr, cg, cb)
	TicketInfoButton:GetRegions():SetVertexColor(cr, cg, cb)
	TicketOnlineButton:GetRegions():SetVertexColor(cr, cg, cb)
	TicketListButton:GetRegions():SetVertexColor(cr, cg, cb)
	TicketUnassignButton:GetRegions():SetVertexColor(cr, cg, cb)
	TicketAssignButton:GetRegions():SetVertexColor(cr, cg, cb)
	TicketCloseButton:GetRegions():SetVertexColor(cr, cg, cb)
	HideButton:GetRegions():SetVertexColor(cr, cg, cb)
	TicketsTabButton:GetRegions():SetVertexColor(cr, cg, cb)
	GMTabButton:GetRegions():SetVertexColor(cr, cg, cb)
	SettingsTabButton:GetRegions():SetVertexColor(cr, cg, cb)
	select(1, TicketListScrollBar:GetRegions()):SetVertexColor(cr, cg, cb)
	GMModeFrame:GetRegions():SetVertexColor(cr, cg, cb)
	GMInvisibleFrame:GetRegions():SetVertexColor(cr, cg, cb)
	GMBadgeFrame:GetRegions():SetVertexColor(cr, cg, cb)
	GMWhispersFrame:GetRegions():SetVertexColor(cr, cg, cb)
end



-- Reset Command
SLASH_PIMPMYTICKETS1, SLASH_PIMPMYTICKETS2 = "/pimpmytickets", "/pmt"
SlashCmdList["PIMPMYTICKETS"] = function(msg)
	if msg == "reset" then
		savedSettings[1] = 1
		SettingsScalingSlider:SetValue(0)
		TicketParentFrame:SetScale(1)
		HideButton:SetScale(1)
		TabsFrame:SetScale(1)
		GMTabFrame:SetScale(1)
		TicketListFrame:SetScale(1)
		TicketsTabButton:SetAlpha(1)
		GMTabButton:SetAlpha(0.75)
		SettingsTabButton:SetAlpha(0.75)
		savedSettings[2] = "black"
		SettingsBlackButton:SetChecked(true)
		SettingsRedButton:SetChecked(false)
		SettingsGreenButton:SetChecked(false)
		SettingsBlueButton:SetChecked(false)
		SettingsPurpleButton:SetChecked(false)
		SettingsRainbowButton:SetChecked(false)
		ColorFrames(0, 0, 0)
		HideButton:SetWidth(25)
		HideButton:SetText("X")
		TicketParentFrame:Show()
		TicketMainFrame:Show()
		GMTabFrame:Hide()
		TicketParentFrame:ClearAllPoints()
		TicketParentFrame:SetPoint("CENTER")
		TicketMainFrame:ClearAllPoints()
		TicketMainFrame:SetPoint("CENTER", TicketParentFrame)
		SettingsFrame:ClearAllPoints()
		SettingsFrame:SetPoint("CENTER", -200, 0)
		SettingsFrame:Hide()
	else
		DEFAULT_CHAT_FRAME:AddMessage("Available arguments: reset")
	end
end



-- Saved Settings
local SavedSettingsFrame = CreateFrame("Frame")
SavedSettingsFrame:RegisterEvent("ADDON_LOADED")
SavedSettingsFrame:RegisterEvent("PLAYER_LOGIN")
SavedSettingsFrame:SetScript("OnEvent", function(self, event, arg1, ...)
	if (event == "ADDON_LOADED" and arg1 == "PimpMyTickets") or event == "PLAYER_LOGIN" then
		SavedSettingsFrame:UnregisterEvent("ADDON_LOADED")
		SavedSettingsFrame:UnregisterEvent("PLAYER_LOGIN")
		if not savedSettings then
			savedSettings = {}
			savedSettings[1] = 1
			SettingsScalingSlider:SetValue(0)
			savedSettings[2] = "black"
			ColorFrames(0, 0, 0)
			SettingsBlackButton:SetChecked(true)
		else
			TicketParentFrame:SetScale(savedSettings[1])
			HideButton:SetScale(savedSettings[1])
			TabsFrame:SetScale(savedSettings[1])
			GMTabFrame:SetScale(savedSettings[1])
			TicketListFrame:SetScale(savedSettings[1])
			SettingsScalingSlider:SetValue(savedSettings[1] * 10 - 10)
			if savedSettings[2] == "black" then
				ColorFrames(0, 0, 0)
				SettingsBlackButton:SetChecked(true)
			elseif savedSettings[2] == "red" then
				ColorFrames(1, 0, 0)
				SettingsRedButton:SetChecked(true)
			elseif savedSettings[2] == "green" then
				ColorFrames(0, 1, 0)
				SettingsGreenButton:SetChecked(true)
			elseif savedSettings[2] == "blue" then
				ColorFrames(0, 0, 1)
				SettingsBlueButton:SetChecked(true)
			elseif savedSettings[2] == "purple" then
				ColorFrames(75/255, 0, 0.51)
				SettingsPurpleButton:SetChecked(true)
			elseif	savedSettings[2] == "rainbow" then
				TicketParentFrame:SetBackdropBorderColor(0, 0, 0)
				TicketViewButton:GetRegions():SetVertexColor(1, 0, 0)
				TicketInfoButton:GetRegions():SetVertexColor(1, 150/255, 0)
				TicketOnlineButton:GetRegions():SetVertexColor(1, 1, 0)
				TicketListButton:GetRegions():SetVertexColor(50/255, 1, 0)
				TicketUnassignButton:GetRegions():SetVertexColor(0, 0, 1)
				TicketAssignButton:GetRegions():SetVertexColor(168/255, 0.4, 1)
				TicketCloseButton:GetRegions():SetVertexColor(75/255, 0, 0.51)
				HideButton:GetRegions():SetVertexColor(30/255, 0, 50/255)
				TicketsTabButton:GetRegions():SetVertexColor(0, 0, 0)
				GMTabButton:GetRegions():SetVertexColor(0, 0, 0)
				SettingsTabButton:GetRegions():SetVertexColor(218, 165, 32)
				select(1, TicketListScrollBar:GetRegions()):SetVertexColor(0, 0, 0)
				GMModeFrame:GetRegions():SetVertexColor(0, 0, 0)
				GMInvisibleFrame:GetRegions():SetVertexColor(0, 0, 0)
				GMBadgeFrame:GetRegions():SetVertexColor(0, 0, 0)
				GMWhispersFrame:GetRegions():SetVertexColor(0, 0, 0)
				SettingsRainbowButton:SetChecked(true)
			end
		end
	end
end)



-- Hide Button
HideButton:SetScript("OnDragStart", function() TicketParentFrame:StartMoving() end)
HideButton:SetScript("OnDragStop", function() TicketParentFrame:StopMovingOrSizing() end)
HideButton:SetScript("OnEnter", function()
	if not TicketParentFrame:IsShown() then
		GameTooltip:SetOwner(HideButton, "ANCHOR_TOPRIGHT", 63, 0)
		GameTooltip:SetText("|cffffffffPimpMyTickets|r")
		GameTooltip:AddLine("Left click to open.\nLeft click and drag to move.")
		GameTooltip:Show()
	end
end)
HideButton:SetScript("OnLeave", function()
	if not TicketParentFrame:IsShown() then
		GameTooltip:Hide()
	end
end)
HideButton:SetScript("OnClick", function()
	if TicketParentFrame:IsShown() then
		TicketParentFrame:Hide()
		TabsFrame:Hide()
		GMTabFrame:Hide()
		SettingsFrame:Hide()
		TicketListFrame:Hide()
		PlaySound("INTERFACESOUND_BACKPACKCLOSE")
		HideButton:SetAlpha(1)
		HideButton:SetWidth(120)
		if savedSettings[2] ~= nil and savedSettings[2] == "rainbow" then
			HideButton:SetText("|cffff0000P|cfff62f02i|cffee5b05m|cffe58207p|cffdda50aM|cffd4c40cy|cffb7cc0dT|cff8fc30fi|cff6abb11c|cff48b212k|cff2ba913e|cff14a118t|cff149931s")
		else
			HideButton:SetText("PimpMyTickets")
		end
		TicketParentFrame:SetClampedToScreen(false)
		if not TicketParentFrame:IsShown() then
			GameTooltip:SetOwner(HideButton, "ANCHOR_TOPRIGHT", 63, 0)
			GameTooltip:SetText("|cffffffffPimpMyTickets|r")
			GameTooltip:AddLine("Left click to open.\nLeft click and drag to move.")
			GameTooltip:Show()
		end
	else
		GameTooltip:Hide()
		PlaySound("INTERFACESOUND_BACKPACKOPEN")
		HideButton:SetWidth(25)
		HideButton:SetText("X")
		TicketsTabButton:SetAlpha(1)
		HideButton:SetAlpha(0.75)
		GMTabButton:SetAlpha(0.75)
		SettingsTabButton:SetAlpha(0.75)
		TicketParentFrame:SetClampedToScreen(true)
		TicketParentFrame:Show()
		TicketMainFrame:Show()
		TabsFrame:Show()
		GMTabFrame:Hide()
		if #ticketListTable ~= nil and #ticketListTable ~= 0 then
			TicketListFrame:Show()
			if #ticketListTable < 7 then
				TicketListScrollBar:Hide()
			end
		end
	end
end)



-- Tickets Tab
TicketsTabButton:SetScript("OnDragStart", function() TicketParentFrame:StartMoving() end)
TicketsTabButton:SetScript("OnDragStop", function() TicketParentFrame:StopMovingOrSizing() end)
TicketsTabButton:SetScript("OnClick", function()
	if not TicketMainFrame:IsShown() then
		PlaySound("UChatScrollButton")
		TicketsTabButton:SetAlpha(1)
		GMTabButton:SetAlpha(0.75)
		GMTabFrame:Hide()
		TicketMainFrame:Show()
		TicketMainFrame:SetPoint("CENTER", TicketParentFrame, 0, 0)
	end
end)

local currentTicketName = ""
local currentTicketIP = ""
local function TicketInfoFilter(msg)
	if strfind(msg, "Hplayer:(%A*%a+)") and not strfind(msg, "Hplayer:Spam Report") then
		local playerName = ""
		_, _, playerName = strfind(msg, "%[(.+)%]")
		currentTicketName = playerName
		ChatFrame_RemoveMessageEventFilter("CHAT_MSG_SYSTEM", TicketInfoFilter)
	end
	if strfind(msg, "guid:") then
		local playerIP = ""
		_, _, playerIP = strfind(msg, "Last IP: (%d+.%d+.%d+.%d+)")
		currentTicketIP = playerIP
		ChatFrame_RemoveMessageEventFilter("CHAT_MSG_SYSTEM", TicketInfoFilter)
	end
	if strfind(msg, "Hplayer:Spam Report") then
		currentTicketName = "Spam Report"
		ChatFrame_RemoveMessageEventFilter("CHAT_MSG_SYSTEM", TicketInfoFilter)
	end
	if strfind(msg, "Ticket not found.") then
		currentTicketName = "Not Found"
		ChatFrame_RemoveMessageEventFilter("CHAT_MSG_SYSTEM", TicketInfoFilter)
	end
end

local currentTicketID = ""
local playerInfoChecked = 0
TicketInputBox:SetScript("OnMouseWheel", function(self, delta)
	if TicketInputBox:GetText() ~= nil then
		TicketInputBox:ClearFocus()
		if delta > 0 then
			TicketInputBox:SetText(TicketInputBox:GetNumber() + 1)
		else
			if (TicketInputBox:GetNumber() - 1) == 0 then
				TicketInputBox:SetText("")
			else
				TicketInputBox:SetText(TicketInputBox:GetNumber() - 1)
			end
		end
	end
end)
TicketInputBox:SetScript("OnEnterPressed", function()
	ChatFrame_AddMessageEventFilter("CHAT_MSG_SYSTEM", TicketInfoFilter)
	TicketInputBox:ClearFocus()
	if TicketInputBox:GetText() ~= "" then
		if TicketInputBox:GetText() ~= currentTicketID then
			playerInfoChecked = 0
		end
		currentTicketID = TicketInputBox:GetText()
		PlaySound("UChatScrollButton")
		SendChatMessage(".ticket viewid "..TicketInputBox:GetText(), "GUILD", nil)
	else
		GameTooltip:SetOwner(HideButton, "ANCHOR_RIGHT", -33, 3)
		GameTooltip:SetText("Please enter a ticket number")
		GameTooltip:Show()
		GameTooltip:FadeOut()
	end
end)

TicketViewButton:SetScript("OnClick", function()
	ChatFrame_AddMessageEventFilter("CHAT_MSG_SYSTEM", TicketInfoFilter)
	TicketInputBox:ClearFocus()
	if TicketInputBox:GetText() ~= "" then
		if TicketInputBox:GetText() ~= currentTicketID then
			playerInfoChecked = 0
		end
		currentTicketID = TicketInputBox:GetText()
		PlaySound("UChatScrollButton")
		SendChatMessage(".ticket viewid "..TicketInputBox:GetText(), "GUILD", nil)
	else
		GameTooltip:SetOwner(HideButton, "ANCHOR_RIGHT", -33, 3)
		GameTooltip:SetText("Please enter a ticket number")
		GameTooltip:Show()
		GameTooltip:FadeOut()
	end
end)

TicketCloseButton:SetScript("OnClick", function()
	TicketInputBox:ClearFocus()
	if TicketInputBox:GetText() ~= "" and ( assignedTicketTable[TicketInputBox:GetText()] == UnitName("player") or assignedTicketTable[TicketInputBox:GetText()] == "" or assignedTicketTable[TicketInputBox:GetText()] == nil ) then
		PlaySound("UChatScrollButton")
		SendChatMessage(".ticket close "..TicketInputBox:GetText(), "GUILD", nil)
		if #ticketListTable == 1 then
			if ticketListTable[1] == TicketInputBox:GetText() then
				ticketListTable = {}
				TicketListFrame:Hide()
			end
		else
			for i, value in pairs(ticketListTable) do
				if value == TicketInputBox:GetText() then
					tremove(ticketListTable, i)
					sort(ticketListTable)
					TicketListing()
				end
			end
		end
	elseif assignedTicketTable[TicketInputBox:GetText()] ~= UnitName("player") then
		GameTooltip:SetOwner(HideButton, "ANCHOR_RIGHT", -33, 3)
		GameTooltip:SetText("Ticket assigned to another GM")
		GameTooltip:Show()
		GameTooltip:FadeOut()
	else
		GameTooltip:SetOwner(HideButton, "ANCHOR_RIGHT", -33, 3)
		GameTooltip:SetText("Please enter a ticket number")
		GameTooltip:Show()
		GameTooltip:FadeOut()
	end
end)

TicketInfoButton:SetScript("OnClick", function()
	TicketInputBox:ClearFocus()
	if TicketInputBox:GetText() == "" then
		GameTooltip:SetOwner(HideButton, "ANCHOR_RIGHT", -33, 3)
		GameTooltip:SetText("Please enter a ticket number")
		GameTooltip:Show()
		GameTooltip:FadeOut()
	elseif TicketInputBox:GetText() ~= currentTicketID then
		GameTooltip:SetOwner(HideButton, "ANCHOR_RIGHT", -33, 3)
		GameTooltip:SetText("Please view this ticket beforehand")
		GameTooltip:Show()
		GameTooltip:FadeOut()
	elseif currentTicketName == "Spam Report" then
		GameTooltip:SetOwner(HideButton, "ANCHOR_RIGHT", -33, 3)
		GameTooltip:SetText("Unavailable on a Spam Report")
		GameTooltip:Show()
		GameTooltip:FadeOut()
	elseif currentTicketName == "Not Found" then
		GameTooltip:SetOwner(HideButton, "ANCHOR_RIGHT", -33, 3)
		GameTooltip:SetText("Ticket not found")
		GameTooltip:Show()
		GameTooltip:FadeOut()
	else
		PlaySound("UChatScrollButton")
		local infoMenu = {
			{ text = currentTicketName, isTitle = true },
			{ text = "Player info", func = function()
				PlaySound("UChatScrollButton")
				ChatFrame_AddMessageEventFilter("CHAT_MSG_SYSTEM", TicketInfoFilter)
				playerInfoChecked = 1
				SendChatMessage(".pinfo "..currentTicketName, "GUILD", nil)
			end },
			{ text = "Lookup IP", func = function()
				PlaySound("UChatScrollButton")
				if playerInfoChecked == 1 then
					PlaySound("UChatScrollButton")
					SendChatMessage(".lookup player ip "..currentTicketIP, "GUILD", nil)
				else
					GameTooltip:SetOwner(HideButton, "ANCHOR_RIGHT", -33, 3)
					GameTooltip:SetText("You must display 'Player info' first")
					GameTooltip:Show()
					GameTooltip:FadeOut()
				end
			end },
			{ text = "Appear", func = function()
				PlaySound("UChatScrollButton")
				SendChatMessage(".appear "..currentTicketName, "GUILD", nil)
			end },
			{ text = "|cffff0000Cancel" },
		}
		local MoreInfoMenuFrame = CreateFrame("Frame", "MoreInfoMenuFrame", UIParent, "UIDropDownMenuTemplate")
		EasyMenu(infoMenu, MoreInfoMenuFrame, "cursor", 0, 0, "MENU", 3);
	end
end)

local total = 0
local TicketListingUpdateFrame = CreateFrame("Frame")
local function ListUpdate(self, elapsed)
	total = total + elapsed
	if total >= 1 then
		if #ticketListTable ~= nil and #ticketListTable ~= 0 then
			TicketListing()
		else
			TicketOnlineButton:SetAlpha(1)
		end
		total = 0
		TicketListingUpdateFrame:SetScript("OnUpdate", nil)
	end
end

local function OnlineListFilter(msg)
	if strfind(msg, "Ticket|r:|cff00ccff ") then
		local onlineTicketID = ""
		_, _, onlineTicketID = strfind(msg, "Ticket|r:|cff00ccff (%d+)")
		onlineTicketTable[onlineTicketID] = 1
	end
end

local function ListFilter(msg)
	if strfind(msg, "Ticket|r:|cff00ccff ") then
		local ticketID = ""
		local ticketName = ""
		local assignedToName = ""
		_, _, ticketID = strfind(msg, "Ticket|r:|cff00ccff (%d+)")
		_, _, ticketName = strfind(msg, "Created by|r:|cff00ccff |Hplayer:(.+)%[")
		_, _, assignedToName = strfind(msg, "Assigned to|r:|cff00ccff (%P+)")
		tinsert(ticketListTable, ticketID)
		if ticketName ~= nil then
			ticketNameTable[ticketID] = ticketName
		end
		if assignedToName ~= nil then
			assignedTicketTable[ticketID] = assignedToName
		end
	end
end

local function UpdatedListFilter(msg)
	if strfind(msg, "New ticket from") then
		local newTicketID = ""
		local newTicketName = ""
		_, _, newTicketID = strfind(msg, "Ticket entry:|r|cffff00ff (%d+)")
		_, _, newTicketName = strfind(msg, "Hplayer:(.+)%[")
		tinsert(ticketListTable, newTicketID)
		if newTicketName ~= nil then
			ticketNameTable[newTicketID] = newTicketName
		end
		if not strfind(newTicketName, "Spam Report Sys") then
			onlineTicketTable[newTicketID] = 1
		end
		TicketListing()
	end
	if strfind(msg, "Closed by") then
		local closedTicketID = ""
		local closedByName = ""
		_, _, closedTicketID = strfind(msg, "Ticket|r:|cff00ccff (%d+)")
		_, _, closedByName = strfind(msg, "Closed by|r:|cff00ccff (%P+)")
		if ticketListTable ~= nil and closedByName ~= UnitName("player") then
			if #ticketListTable == 1 then
				ticketListTable = {}
				TicketListFrame:Hide()
			else
				for i, value in pairs(ticketListTable) do
					if value == closedTicketID then
						tremove(ticketListTable, i)
						sort(ticketListTable)
						TicketListing()
					end
				end
			end
		end
	end
	if strfind(msg, "abandoned ticket entry") then
		local abandonedTicketID = ""
		_, _, abandonedTicketID = strfind(msg, "abandoned ticket entry:|r|cffff00ff (%d+)")
		if ticketListTable ~= nil then
			if #ticketListTable == 1 then
				ticketListTable = {}
				TicketListFrame:Hide()
			else
				for i, value in pairs(ticketListTable) do
					if value == abandonedTicketID then
						tremove(ticketListTable, i)
						sort(ticketListTable)
						TicketListing()
					end
				end
			end
		end
	end
	if strfind(msg, "Assigned to") and not strfind(msg, "Unassigned by") then
		local assignedTicketID = ""
		local assignedToName = ""
		_, _, assignedTicketID = strfind(msg, "Ticket|r:|cff00ccff (%d+)")
		_, _, assignedToName = strfind(msg, "Assigned to|r:|cff00ccff (%P+)")
		if assignedToName ~= nil then
			assignedTicketTable[assignedTicketID] = assignedToName
		end
	end
	if strfind(msg, "Unassigned by") then
		local unassignedTicketID = ""
		_, _, unassignedTicketID = strfind(msg, "Ticket|r:|cff00ccff (%d+)")
		if assignedTicketTable[unassignedTicketID] ~= "" then
			assignedTicketTable[unassignedTicketID] = ""
		end
	end
end
ChatFrame_AddMessageEventFilter("CHAT_MSG_SYSTEM", UpdatedListFilter)

function TicketListing()
	if #ticketListTable ~= nil and #ticketListTable ~= 0 then
		for i, value in pairs(ticketListTable) do
			if _G["TicketListContentFont"..i] == nil or _G["TicketListContentFont"..i] == "" then
				_G["TicketListContentFont"..i] = TicketListContentFrame:CreateFontString("TicketListContentFont"..i, "ARTWORK", "GameFontNormal")
			end
			if not ticketListContentHeight then
				ticketListContentHeight = 0
			else
				ticketListContentHeight = ticketListContentHeight - 20
			end
			_G["TicketListContentFont"..i]:SetPoint("TOPLEFT", 0, ticketListContentHeight)
			_G["TicketListContentFont"..i]:SetTextColor(0, 0, 0)
			if onlineTicketTable[value] == 1 then
				_G["TicketListContentFont"..i]:SetTextColor(0, 0.85, 0)
			elseif strfind(ticketNameTable[value], "Spam Report Sys") then
				_G["TicketListContentFont"..i]:SetTextColor(0, 0, 0)
			else
				_G["TicketListContentFont"..i]:SetTextColor(0.90, 0, 0)
			end
			_G["TicketListContentFont"..i]:SetFont("Fonts\\FRIZQT__.TTF", 16)
			_G["TicketListContentFont"..i]:SetJustifyH("LEFT")
			_G["TicketListContentFont"..i]:SetText(value)
			if _G["TicketListContentButton"..i] == nil or _G["TicketListContentButton"..i] == "" then
				_G["TicketListContentButton"..i] = CreateFrame("Button", "TicketListContentButton"..i, TicketListContentFrame)
			end
			_G["TicketListContentButton"..i]:SetPoint("TOPLEFT", 0, ticketListContentHeight)
			_G["TicketListContentButton"..i]:Show()
			_G["TicketListContentButton"..i]:SetWidth(60)
			_G["TicketListContentButton"..i]:SetHeight(20)
			_G["TicketListContentButton"..i]:SetScript("OnClick", function()
				if value ~= nil then
					ChatFrame_AddMessageEventFilter("CHAT_MSG_SYSTEM", TicketInfoFilter)
					TicketInputBox:SetText(value)
					TicketInputBox:ClearFocus()
					if TicketInputBox:GetText() ~= currentTicketID then
						playerInfoChecked = 0
					end
					currentTicketID = value
					PlaySound("UChatScrollButton")
					SendChatMessage(".ticket viewid "..value, "GUILD", nil)
				end
			end)
			_G["TicketListContentButton"..i]:SetScript("OnEnter", function()
				if value ~= nil and ticketNameTable[value] ~= nil then
					GameTooltip:SetOwner(HideButton, "ANCHOR_RIGHT", -33, 3)
					if assignedTicketTable[value] ~= nil and assignedTicketTable[value] ~= "" then
						GameTooltip:SetText("Ticket #"..value.." | Created by: "..ticketNameTable[value].."\nAssigned to: "..assignedTicketTable[value])
					else
						GameTooltip:SetText("Ticket #"..value.." | Created by: "..ticketNameTable[value])
					end
					GameTooltip:Show()
					GameTooltip:FadeOut()
				end
			end)
			if #ticketListTable == i then
				ChatFrame_RemoveMessageEventFilter("CHAT_MSG_SYSTEM", OnlineListFilter)
				if #ticketListTable < 7 then
					TicketListScrollBar:Hide()
				else
					TicketListScrollBar:Show()
				end
				ticketListScrollBarMax = i * 20 - 120
				if ticketListScrollBarMax < 0 then
					TicketListScrollBar:SetMinMaxValues(0, 0)
					ticketListContentHeight = nil
					ChatFrame_RemoveMessageEventFilter("CHAT_MSG_SYSTEM", ListFilter)

					if _G["TicketListContentFont"..i+1] ~= nil then
						_G["TicketListContentFont"..i+1]:SetText("")
						_G["TicketListContentButton"..i+1]:Hide()
					end
				else
					TicketListScrollBar:SetMinMaxValues(0, ticketListScrollBarMax)
					ticketListContentHeight = nil
					ChatFrame_RemoveMessageEventFilter("CHAT_MSG_SYSTEM", ListFilter)
					if _G["TicketListContentFont"..i+1] ~= nil then
						_G["TicketListContentFont"..i+1]:SetText("")
						_G["TicketListContentButton"..i+1]:Hide()
					end
				end
				TicketOnlineButton:SetAlpha(1)
			end
		end
		if TicketParentFrame:IsShown() then
			TicketListFrame:Show()
		end
	else
		TicketOnlineButton:SetAlpha(1)
	end
end

TicketOnlineButton:SetScript("OnClick", function()
	onlineTicketTable = {}
	if #ticketListTable ~= nil and #ticketListTable ~= 0 then
		ChatFrame_AddMessageEventFilter("CHAT_MSG_SYSTEM", OnlineListFilter)
	end
	SendChatMessage(".ticket online", "GUILD", nil)
	TicketInputBox:ClearFocus()
	PlaySound("UChatScrollButton")
	TicketListingUpdateFrame:SetScript("OnUpdate", ListUpdate)
end)

TicketListButton:SetScript("OnClick", function()
	ticketListTable = {}
	TicketOnlineButton:SetAlpha(0.75)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_SYSTEM", ListFilter)
	SendChatMessage(".ticket list", "GUILD", nil)
	TicketInputBox:ClearFocus()
	PlaySound("UChatScrollButton")
	TicketListingUpdateFrame:SetScript("OnUpdate", ListUpdate)
end)

TicketListFrame:EnableMouseWheel(true)
TicketListFrame:SetScript("OnMouseWheel", function(self, delta)
	local TicketListScrollBarCurrent = TicketListScrollBar:GetValue(0)
	local scrollBarMin, scrollBarMax = TicketListScrollBar:GetMinMaxValues()
	if delta < 0 and TicketListScrollBarCurrent < scrollBarMax then
		TicketListScrollBar:SetValue(TicketListScrollBarCurrent + 20)
	elseif delta > 0 and TicketListScrollBarCurrent > scrollBarMin then
		TicketListScrollBar:SetValue(TicketListScrollBarCurrent - 20)
	end
end)

TicketAssignButton:SetScript("OnClick", function()
	TicketInputBox:ClearFocus()
	if TicketInputBox:GetText() == nil or TicketInputBox:GetText() == "" then
		GameTooltip:SetOwner(HideButton, "ANCHOR_RIGHT", -33, 3)
		GameTooltip:SetText("Please enter a ticket number")
		GameTooltip:Show()
		GameTooltip:FadeOut()
	else
		if guildTable[8] == nil then
			for i=1,GetNumGuildMembers() do
				guildTable[i] = GetGuildRosterInfo(i)
			end
			if guildTable[8] == nil then
				GameTooltip:SetOwner(HideButton, "ANCHOR_RIGHT", -33, 3)
				GameTooltip:SetText("Please open your Guild Panel\nand Show Offline Members")
				GameTooltip:Show()
				GameTooltip:FadeOut()
			else
				UIDropDownMenu_Initialize(AssignMenuFrame, function(level)
					for k,v in pairs(guildTable) do
						if k == 1 then
							info = UIDropDownMenu_CreateInfo()
							info.text = "Assign to"
							info.isTitle = true
							UIDropDownMenu_AddButton(info, level)
						end
						info = UIDropDownMenu_CreateInfo()
						info.text = v
						info.value = v
						info.func = function()
							SendChatMessage(".ticket assign "..TicketInputBox:GetText().." "..v, "GUILD", nil)
						end
						UIDropDownMenu_AddButton(info, level)
						if k == #guildTable then
							info = UIDropDownMenu_CreateInfo()
							info.text = "|cffff0000Cancel"
							UIDropDownMenu_AddButton(info, level)
						end
					end
				end, "MENU")
				ToggleDropDownMenu(1, nil, AssignMenuFrame, "cursor")
				TicketListingUpdateFrame:SetScript("OnUpdate", ListUpdate)
			end
		else
			UIDropDownMenu_Initialize(AssignMenuFrame, function(level)
				for k,v in pairs(guildTable) do
					if k == 1 then
						info = UIDropDownMenu_CreateInfo()
						info.text = "Assign to"
						info.isTitle = true
						UIDropDownMenu_AddButton(info, level)
					end
					info = UIDropDownMenu_CreateInfo()
					info.text = v
					info.value = v
					info.func = function()
						SendChatMessage(".ticket assign "..TicketInputBox:GetText().." "..v, "GUILD", nil)
					end
					UIDropDownMenu_AddButton(info, level)
					if k == #guildTable then
						info = UIDropDownMenu_CreateInfo()
						info.text = "|cffff0000Cancel"
						UIDropDownMenu_AddButton(info, level)
					end
				end
			end, "MENU")
			ToggleDropDownMenu(1, nil, AssignMenuFrame, "cursor")
			TicketListingUpdateFrame:SetScript("OnUpdate", ListUpdate)
		end
	end
end)

TicketUnassignButton:SetScript("OnClick", function()
	if TicketInputBox:GetText() ~= "" then
		TicketInputBox:ClearFocus()
		PlaySound("UChatScrollButton")
		SendChatMessage(".ticket unassign "..TicketInputBox:GetText(), "GUILD", nil)
		TicketListingUpdateFrame:SetScript("OnUpdate", ListUpdate)
	else
		GameTooltip:SetOwner(HideButton, "ANCHOR_RIGHT", -33, 3)
		GameTooltip:SetText("Please enter a ticket number")
		GameTooltip:Show()
		GameTooltip:FadeOut()
	end
end)



-- GM Tab
GMTabButton:SetScript("OnDragStart", function() TicketParentFrame:StartMoving() end)
GMTabButton:SetScript("OnDragStop", function() TicketParentFrame:StopMovingOrSizing() end)
GMTabButton:SetScript("OnClick", function()
	if not GMTabFrame:IsShown() then
		PlaySound("UChatScrollButton")
		TicketsTabButton:SetAlpha(0.75)
		GMTabButton:SetAlpha(1)
		TicketMainFrame:Hide()
		TicketMainFrame:SetPoint("CENTER", TicketParentFrame, 0, 0)
		GMTabFrame:Show()
	end
end)

GMModeButton:SetScript("OnClick", function()
	if GMModeButton:GetChecked() then
		SendChatMessage(".gm on", "GUILD", nil)
	else
		SendChatMessage(".gm off", "GUILD", nil)
	end
end)

GMInvisibleButton:SetScript("OnClick", function()
	if GMInvisibleButton:GetChecked() then
		SendChatMessage(".gm vis off", "GUILD", nil)
		GMModeButton:SetChecked(true)
		GMWhispersButton:SetChecked(true)
	else
		SendChatMessage(".gm vis on","GUILD",nil)
	end
end)

GMBadgeButton:SetScript("OnClick", function()
	if GMBadgeButton:GetChecked() then
		SendChatMessage(".gm chat on", "GUILD", nil)
	else
		SendChatMessage(".gm chat off", "GUILD", nil)
	end
end)

ChatFrame_AddMessageEventFilter("CHAT_MSG_SYSTEM", function(msg) if strfind(msg, "Accepting Whisper: ON") then GMWhispersButton:SetChecked(false) end end)
GMWhispersButton:SetScript("OnClick", function()
	if GMWhispersButton:GetChecked() then
		SendChatMessage(".whisper off", "GUILD", nil)
	else
		SendChatMessage(".whisper on", "GUILD", nil)
	end
end)



-- Settings Frame
SettingsTabButton:SetScript("OnDragStart", function() TicketParentFrame:StartMoving() end)
SettingsTabButton:SetScript("OnDragStop", function() TicketParentFrame:StopMovingOrSizing() end)
SettingsTabButton:SetScript("OnClick", function()
	if not SettingsFrame:IsShown() then
		PlaySound("UChatScrollButton")
		SettingsTabButton:SetAlpha(1)
		SettingsFrame:Show()
	else
		PlaySound("UChatScrollButton")
		SettingsFrame:Hide()
		SettingsTabButton:SetAlpha(0.75)
	end
end)

SettingsScalingSlider:SetScript("OnMouseUp", function(self, button)
	if SettingsScalingSlider:GetValue() > 0 then
		savedSettings[1] = 1 + SettingsScalingSlider:GetValue() / 10
	else
		savedSettings[1] = 1
	end
	TicketParentFrame:SetScale(savedSettings[1])
	HideButton:SetScale(savedSettings[1])
	TabsFrame:SetScale(savedSettings[1])
	GMTabFrame:SetScale(savedSettings[1])
	TicketListFrame:SetScale(savedSettings[1])
end)
SettingsScalingSlider:SetScript("OnValueChanged", function()
	if SettingsScalingSlider:GetValue() > 0 then
		currentScaling = 1 + SettingsScalingSlider:GetValue() / 10
	else
		currentScaling = 1
	end
	TicketParentFrame:SetScale(currentScaling)
	HideButton:SetScale(currentScaling)
	TabsFrame:SetScale(currentScaling)
	GMTabFrame:SetScale(currentScaling)
	TicketListFrame:SetScale(currentScaling)
	GameTooltip:SetOwner(HideButton, "ANCHOR_RIGHT", -33, 3)
	GameTooltip:SetText("Scaling: x"..currentScaling)
	GameTooltip:Show()
	GameTooltip:FadeOut()
end)
SettingsScalingSlider:SetScript("OnEnter", function()
	if SettingsScalingSlider:GetValue() > 0 then
		currentScaling = 1 + SettingsScalingSlider:GetValue() / 10
	else
		currentScaling = 1
	end
	GameTooltip:SetOwner(HideButton, "ANCHOR_RIGHT", -33, 3)
	GameTooltip:SetText("Scaling: x"..currentScaling)
	GameTooltip:Show()
	GameTooltip:FadeOut()
end)

SettingsBlackButton:SetScript("OnClick", function()
	if SettingsBlackButton:GetChecked() then
		SettingsRedButton:SetChecked(false)
		SettingsGreenButton:SetChecked(false)
		SettingsBlueButton:SetChecked(false)
		SettingsPurpleButton:SetChecked(false)
		SettingsRainbowButton:SetChecked(false)
		savedSettings[2] = "black"
		ColorFrames(0, 0, 0)
	else
		SettingsBlackButton:SetChecked(true)
	end
end)

SettingsRedButton:SetScript("OnClick", function()
	if SettingsRedButton:GetChecked() then
		SettingsBlackButton:SetChecked(false)
		SettingsGreenButton:SetChecked(false)
		SettingsBlueButton:SetChecked(false)
		SettingsPurpleButton:SetChecked(false)
		SettingsRainbowButton:SetChecked(false)
		savedSettings[2] = "red"
		ColorFrames(1, 0, 0)
	else
		SettingsRedButton:SetChecked(true)
	end
end)

SettingsGreenButton:SetScript("OnClick", function()
	if SettingsGreenButton:GetChecked() then
		SettingsBlackButton:SetChecked(false)
		SettingsRedButton:SetChecked(false)
		SettingsBlueButton:SetChecked(false)
		SettingsPurpleButton:SetChecked(false)
		SettingsRainbowButton:SetChecked(false)
		savedSettings[2] = "green"
		ColorFrames(0, 1, 0)
	else
		SettingsGreenButton:SetChecked(true)
	end
end)

SettingsBlueButton:SetScript("OnClick", function()
	if SettingsBlueButton:GetChecked() then
		SettingsBlackButton:SetChecked(false)
		SettingsRedButton:SetChecked(false)
		SettingsGreenButton:SetChecked(false)
		SettingsPurpleButton:SetChecked(false)
		SettingsRainbowButton:SetChecked(false)
		savedSettings[2] = "blue"
		ColorFrames(0, 0, 1)
	else
		SettingsBlueButton:SetChecked(true)
	end
end)

SettingsPurpleButton:SetScript("OnClick", function()
	if SettingsPurpleButton:GetChecked() then
		SettingsBlackButton:SetChecked(false)
		SettingsRedButton:SetChecked(false)
		SettingsGreenButton:SetChecked(false)
		SettingsBlueButton:SetChecked(false)
		SettingsRainbowButton:SetChecked(false)
		savedSettings[2] = "purple"
		ColorFrames(75/255, 0, 0.51)
	else
		SettingsPurpleButton:SetChecked(true)
	end
end)

SettingsRainbowButton:SetScript("OnClick", function()
	if SettingsRainbowButton:GetChecked() then
		SettingsBlackButton:SetChecked(false)
		SettingsRedButton:SetChecked(false)
		SettingsGreenButton:SetChecked(false)
		SettingsBlueButton:SetChecked(false)
		SettingsPurpleButton:SetChecked(false)
		savedSettings[2] = "rainbow"
		TicketParentFrame:SetBackdropBorderColor(0, 0, 0)
		TicketViewButton:GetRegions():SetVertexColor(1, 0, 0)
		TicketInfoButton:GetRegions():SetVertexColor(1, 150/255, 0)
		TicketOnlineButton:GetRegions():SetVertexColor(1, 1, 0)
		TicketListButton:GetRegions():SetVertexColor(50/255, 1, 0)
		TicketUnassignButton:GetRegions():SetVertexColor(0, 0, 1)
		TicketAssignButton:GetRegions():SetVertexColor(168/255, 0.4, 1)
		TicketCloseButton:GetRegions():SetVertexColor(75/255, 0, 0.51)
		HideButton:GetRegions():SetVertexColor(30/255, 0, 50/255)
		TicketsTabButton:GetRegions():SetVertexColor(0, 0, 0)
		GMTabButton:GetRegions():SetVertexColor(0, 0, 0)
		SettingsTabButton:GetRegions():SetVertexColor(218, 165, 32)
		select(1, TicketListScrollBar:GetRegions()):SetVertexColor(0, 0, 0)
		GMModeFrame:GetRegions():SetVertexColor(0, 0, 0)
		GMInvisibleFrame:GetRegions():SetVertexColor(0, 0, 0)
		GMBadgeFrame:GetRegions():SetVertexColor(0, 0, 0)
		GMWhispersFrame:GetRegions():SetVertexColor(0, 0, 0)
	else
		SettingsRainbowButton:SetChecked(true)
	end
end)

SettingsCloseButton:SetScript("OnClick", function()
	PlaySound("UChatScrollButton")
	SettingsFrame:Hide()
	SettingsTabButton:SetAlpha(0.75)
end)



-- Banhammer Popup
local banDuration = ""
local banReason = ""
local function BanhammerFilter(pinf)
	local pinfoname = ""
	local pinfoacc = ""
	local pinfoip = ""
	if strfind(pinf, "Account: (%S+)") then
		_, _, pinfoname = strfind(pinf, "%[(.+)%]")
		_, _, pinfoacc = strfind(pinf, "Account: (%S+)")
		_, _, pinfoip = strfind(pinf, "Last IP: (%S+)")
		if pinfoname == UnitName("player") then
			GameTooltip:SetOwner(HideButton, "ANCHOR_RIGHT", -33, 3)
			GameTooltip:SetText("You have tickets to answer still")
			GameTooltip:Show()
			GameTooltip:FadeOut()
			ChatFrame_RemoveMessageEventFilter("CHAT_MSG_SYSTEM", BanhammerFilter)
		else
			StaticPopupDialogs["BANHAMMER_POPUP"] = {
				text = "",
				button1 = "Acc. + IP",
				button3 = "Acc. only",
				button2 = "Cancel",
				OnShow = function()
					StaticPopup1Text:SetText("You are going to ban "..pinfoname.."\n Account: "..pinfoacc.."\n IP: "..pinfoip.."\n Duration: "..banDuration.."\n Reason: "..banReason)
				end,
				OnAccept = function()
					SendChatMessage(".ban account "..pinfoacc.." "..banDuration.." "..banReason, "GUILD", nil)
					SendChatMessage(".ban ip "..pinfoip.." "..banDuration.." "..banReason, "GUILD", nil)
				end,
				OnAlt = function()
					SendChatMessage(".ban account "..pinfoacc.." "..banDuration.." "..banReason, "GUILD", nil)
				end,
				cancels = "BANREASON_POPUP",
				exclusive = 1,
				hideOnEscape = 1,
				showAlert = 1,
				timeout = 0,
				whileDead = 1,
			}
			StaticPopupDialogs["BANREASON_POPUP"] = {
				text = "",
				button1 = "Next",
				button2 = "Cancel",
				OnShow = function()
					StaticPopup1Text:SetText("You are going to ban "..pinfoname.."\n Account: "..pinfoacc.."\n IP: "..pinfoip.."\n Duration: "..banDuration.."\n\nEnter a ban reason:")
					StaticPopup1EditBox:SetText("")
				end,
				OnAccept = function()
					if StaticPopup1EditBox:GetText() ~= "" then
						banReason = StaticPopup1EditBox:GetText()
						StaticPopup_Show("BANHAMMER_POPUP")
					end
				end,
				EditBoxOnEnterPressed = function()
					if StaticPopup1EditBox:GetText() ~= "" then
						banReason = StaticPopup1EditBox:GetText()
						StaticPopup_Show("BANHAMMER_POPUP")
					end
				end,
				EditBoxOnEscapePressed = function()
					StaticPopup_Hide("BANREASON_POPUP")
				end,
				cancels = "BANDURATION_POPUP",
				exclusive = 1,
				hasEditBox = 1,
				maxLetters = 0,
				showAlert = 1,
				timeout = 0,
				whileDead = 1,
			}
			StaticPopupDialogs["BANDURATION_POPUP"] = {
				text = "",
				button1 = "Next",
				button2 = "Cancel",
				OnShow = function()
					StaticPopup1Text:SetText("You are going to ban "..pinfoname.."\n Account: "..pinfoacc.."\n IP: "..pinfoip.."\n\nEnter a ban duration:")
					StaticPopup1EditBox:SetText("")
				end,
				OnAccept = function()
					if StaticPopup1EditBox:GetText() ~= "" then
						banDuration = StaticPopup1EditBox:GetText()
						StaticPopup_Show("BANREASON_POPUP")
					end
				end,
				EditBoxOnEnterPressed = function()
					if StaticPopup1EditBox:GetText() ~= "" then
						banDuration = StaticPopup1EditBox:GetText()
						StaticPopup_Show("BANREASON_POPUP")
					end
				end,
				EditBoxOnEscapePressed = function()
					StaticPopup_Hide("BANDURATION_POPUP")
				end,
				exclusive = 1,
				hasEditBox = 1,
				maxLetters = 8,
				showAlert = 1,
				timeout = 0,
				whileDead = 1,
			}
			StaticPopup_Show ("BANDURATION_POPUP")
			ChatFrame_RemoveMessageEventFilter("CHAT_MSG_SYSTEM", BanhammerFilter)
		end
	end
end

UnitPopupButtons["BANHAMMER_BUTTON"] = { text = "|cffff0000Banhammer", dist = 0 }
table.insert(UnitPopupMenus["FRIEND"], #UnitPopupMenus["FRIEND"]-1, "BANHAMMER_BUTTON")
table.insert(UnitPopupMenus["PLAYER"], #UnitPopupMenus["PLAYER"]-1, "BANHAMMER_BUTTON")
hooksecurefunc("ToggleDropDownMenu", function()
	local i = 2
	while (1) do
		if _G["DropDownList"..UIDROPDOWNMENU_MENU_LEVEL.."Button"..i] ~= nil then
			local button = _G["DropDownList"..UIDROPDOWNMENU_MENU_LEVEL.."Button"..i]
			if button.value == "BANHAMMER_BUTTON" then
				button.func = function()
					SendChatMessage(".pinfo "..DropDownList1Button1:GetText(), "GUILD", nil)
					ChatFrame_AddMessageEventFilter("CHAT_MSG_SYSTEM", BanhammerFilter)
				end
				break
			end
			i = i + 1
		else
			break
		end
	end
end)