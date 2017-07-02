--------------------------------------------------------------
-- This file was automatically generated by Cocos Studio.
-- Do not make changes to this file.
-- All changes will be lost.
--------------------------------------------------------------

local luaExtend = require "LuaExtend"

-- using for layout to decrease count of local variables
local layout = nil
local localLuaFile = nil
local innerCSD = nil
local innerProject = nil
local localFrame = nil

local Result = {}
------------------------------------------------------------
-- function call description
-- create function caller should provide a function to 
-- get a callback function in creating scene process.
-- the returned callback function will be registered to 
-- the callback event of the control.
-- the function provider is as below :
-- Callback callBackProvider(luaFileName, node, callbackName)
-- parameter description:
-- luaFileName  : a string, lua file name
-- node         : a Node, event source
-- callbackName : a string, callback function name
-- the return value is a callback function
------------------------------------------------------------
function Result.create(callBackProvider)

local result={}
setmetatable(result, luaExtend)

--Create Layer
local Layer=cc.Node:create()
Layer:setName("Layer")
layout = ccui.LayoutComponent:bindLayoutComponent(Layer)
layout:setSize({width = 1280.0000, height = 720.0000})

--Create panRoot
local panRoot = ccui.Layout:create()
panRoot:ignoreContentAdaptWithSize(false)
panRoot:setClippingEnabled(false)
panRoot:setBackGroundColorOpacity(76)
panRoot:setLayoutComponentEnabled(true)
panRoot:setName("panRoot")
panRoot:setTag(103)
panRoot:setCascadeColorEnabled(true)
panRoot:setCascadeOpacityEnabled(true)
layout = ccui.LayoutComponent:bindLayoutComponent(panRoot)
layout:setPercentWidth(1.0000)
layout:setPercentHeight(1.0000)
layout:setSize({width = 1280.0000, height = 720.0000})
Layer:addChild(panRoot)

--Create panLayout
local panLayout = ccui.Layout:create()
panLayout:ignoreContentAdaptWithSize(false)
panLayout:setClippingEnabled(false)
panLayout:setBackGroundColorOpacity(102)
panLayout:setTouchEnabled(true);
panLayout:setLayoutComponentEnabled(true)
panLayout:setName("panLayout")
panLayout:setTag(105)
panLayout:setCascadeColorEnabled(true)
panLayout:setCascadeOpacityEnabled(true)
panLayout:setAnchorPoint(1.0000, 0.0000)
panLayout:setPosition(1103.4570, 124.7046)
layout = ccui.LayoutComponent:bindLayoutComponent(panLayout)
layout:setPositionPercentX(0.8621)
layout:setPositionPercentY(0.1732)
layout:setPercentWidth(0.5469)
layout:setPercentHeight(0.2778)
layout:setSize({width = 700.0000, height = 200.0000})
layout:setLeftMargin(403.4574)
layout:setRightMargin(176.5426)
layout:setTopMargin(395.2954)
layout:setBottomMargin(124.7046)
Layer:addChild(panLayout)

--Create btnHu
local btnHu = ccui.Button:create()
btnHu:ignoreContentAdaptWithSize(false)
btnHu:loadTextureNormal("GameScene/bt-hu.png",0)
btnHu:loadTexturePressed("GameScene/bt-hu.png",0)
btnHu:loadTextureDisabled("Default/Button_Disable.png",0)
btnHu:setTitleFontSize(14)
btnHu:setTitleColor({r = 65, g = 65, b = 70})
btnHu:setScale9Enabled(true)
btnHu:setCapInsets({x = 15, y = 11, width = 115, height = 123})
btnHu:setLayoutComponentEnabled(true)
btnHu:setName("btnHu")
btnHu:setTag(98)
btnHu:setCascadeColorEnabled(true)
btnHu:setCascadeOpacityEnabled(true)
btnHu:setPosition(160.9218, 86.7678)
layout = ccui.LayoutComponent:bindLayoutComponent(btnHu)
layout:setPositionPercentX(0.2299)
layout:setPositionPercentY(0.4338)
layout:setPercentWidth(0.2071)
layout:setPercentHeight(0.7250)
layout:setSize({width = 145.0000, height = 145.0000})
layout:setLeftMargin(88.4218)
layout:setRightMargin(466.5782)
layout:setTopMargin(40.7322)
layout:setBottomMargin(14.2678)
panLayout:addChild(btnHu)

--Create btnGang
local btnGang = ccui.Button:create()
btnGang:ignoreContentAdaptWithSize(false)
btnGang:loadTextureNormal("GameScene/bt-gang.png",0)
btnGang:loadTexturePressed("GameScene/bt-gang.png",0)
btnGang:loadTextureDisabled("Default/Button_Disable.png",0)
btnGang:setTitleFontSize(14)
btnGang:setTitleColor({r = 65, g = 65, b = 70})
btnGang:setScale9Enabled(true)
btnGang:setCapInsets({x = 15, y = 11, width = 115, height = 123})
btnGang:setLayoutComponentEnabled(true)
btnGang:setName("btnGang")
btnGang:setTag(99)
btnGang:setCascadeColorEnabled(true)
btnGang:setCascadeOpacityEnabled(true)
btnGang:setPosition(7.3642, 86.7678)
layout = ccui.LayoutComponent:bindLayoutComponent(btnGang)
layout:setPositionPercentX(0.0105)
layout:setPositionPercentY(0.4338)
layout:setPercentWidth(0.2071)
layout:setPercentHeight(0.7250)
layout:setSize({width = 145.0000, height = 145.0000})
layout:setLeftMargin(-65.1358)
layout:setRightMargin(620.1358)
layout:setTopMargin(40.7322)
layout:setBottomMargin(14.2678)
panLayout:addChild(btnGang)

--Create btnChi
local btnChi = ccui.Button:create()
btnChi:ignoreContentAdaptWithSize(false)
btnChi:loadTextureNormal("GameScene/bt-chi.png",0)
btnChi:loadTexturePressed("GameScene/bt-chi.png",0)
btnChi:loadTextureDisabled("Default/Button_Disable.png",0)
btnChi:setTitleFontSize(14)
btnChi:setTitleColor({r = 65, g = 65, b = 70})
btnChi:setScale9Enabled(true)
btnChi:setCapInsets({x = 15, y = 11, width = 115, height = 123})
btnChi:setLayoutComponentEnabled(true)
btnChi:setName("btnChi")
btnChi:setTag(100)
btnChi:setCascadeColorEnabled(true)
btnChi:setCascadeOpacityEnabled(true)
btnChi:setPosition(314.4816, 86.7678)
layout = ccui.LayoutComponent:bindLayoutComponent(btnChi)
layout:setPositionPercentX(0.4493)
layout:setPositionPercentY(0.4338)
layout:setPercentWidth(0.2071)
layout:setPercentHeight(0.7250)
layout:setSize({width = 145.0000, height = 145.0000})
layout:setLeftMargin(241.9816)
layout:setRightMargin(313.0184)
layout:setTopMargin(40.7322)
layout:setBottomMargin(14.2678)
panLayout:addChild(btnChi)

--Create btnPeng
local btnPeng = ccui.Button:create()
btnPeng:ignoreContentAdaptWithSize(false)
btnPeng:loadTextureNormal("GameScene/bt-peng.png",0)
btnPeng:loadTexturePressed("GameScene/bt-peng.png",0)
btnPeng:loadTextureDisabled("Default/Button_Disable.png",0)
btnPeng:setTitleFontSize(14)
btnPeng:setTitleColor({r = 65, g = 65, b = 70})
btnPeng:setScale9Enabled(true)
btnPeng:setCapInsets({x = 15, y = 11, width = 115, height = 123})
btnPeng:setLayoutComponentEnabled(true)
btnPeng:setName("btnPeng")
btnPeng:setTag(101)
btnPeng:setCascadeColorEnabled(true)
btnPeng:setCascadeOpacityEnabled(true)
btnPeng:setPosition(469.7416, 86.7678)
layout = ccui.LayoutComponent:bindLayoutComponent(btnPeng)
layout:setPositionPercentX(0.6711)
layout:setPositionPercentY(0.4338)
layout:setPercentWidth(0.2071)
layout:setPercentHeight(0.7250)
layout:setSize({width = 145.0000, height = 145.0000})
layout:setLeftMargin(397.2416)
layout:setRightMargin(157.7584)
layout:setTopMargin(40.7322)
layout:setBottomMargin(14.2678)
panLayout:addChild(btnPeng)

--Create btnGuo
local btnGuo = ccui.Button:create()
btnGuo:ignoreContentAdaptWithSize(false)
btnGuo:loadTextureNormal("GameScene/bt-guo.png",0)
btnGuo:loadTexturePressed("GameScene/bt-guo.png",0)
btnGuo:loadTextureDisabled("Default/Button_Disable.png",0)
btnGuo:setTitleFontSize(14)
btnGuo:setTitleColor({r = 65, g = 65, b = 70})
btnGuo:setScale9Enabled(true)
btnGuo:setCapInsets({x = 15, y = 11, width = 115, height = 123})
btnGuo:setLayoutComponentEnabled(true)
btnGuo:setName("btnGuo")
btnGuo:setTag(102)
btnGuo:setCascadeColorEnabled(true)
btnGuo:setCascadeOpacityEnabled(true)
btnGuo:setPosition(621.6034, 86.7678)
layout = ccui.LayoutComponent:bindLayoutComponent(btnGuo)
layout:setPositionPercentX(0.8880)
layout:setPositionPercentY(0.4338)
layout:setPercentWidth(0.2071)
layout:setPercentHeight(0.7250)
layout:setSize({width = 145.0000, height = 145.0000})
layout:setLeftMargin(549.1034)
layout:setRightMargin(5.8966)
layout:setTopMargin(40.7322)
layout:setBottomMargin(14.2678)
panLayout:addChild(btnGuo)

--Create nodeChiOp
local nodeChiOp=cc.Node:create()
nodeChiOp:setName("nodeChiOp")
nodeChiOp:setTag(104)
nodeChiOp:setCascadeColorEnabled(true)
nodeChiOp:setCascadeOpacityEnabled(true)
nodeChiOp:setPosition(639.5656, 360.9367)
layout = ccui.LayoutComponent:bindLayoutComponent(nodeChiOp)
layout:setPositionPercentX(0.4997)
layout:setPositionPercentY(0.5013)
layout:setLeftMargin(639.5656)
layout:setRightMargin(640.4344)
layout:setTopMargin(359.0633)
layout:setBottomMargin(360.9367)
Layer:addChild(nodeChiOp)

--Create nodeGangOp
local nodeGangOp=cc.Node:create()
nodeGangOp:setName("nodeGangOp")
nodeGangOp:setTag(30)
nodeGangOp:setCascadeColorEnabled(true)
nodeGangOp:setCascadeOpacityEnabled(true)
nodeGangOp:setPosition(639.5590, 360.6830)
layout = ccui.LayoutComponent:bindLayoutComponent(nodeGangOp)
layout:setPositionPercentX(0.4997)
layout:setPositionPercentY(0.5009)
layout:setLeftMargin(639.5590)
layout:setRightMargin(640.4410)
layout:setTopMargin(359.3170)
layout:setBottomMargin(360.6830)
Layer:addChild(nodeGangOp)

--Create Animation
result['animation'] = ccs.ActionTimeline:create()
  
result['animation']:setDuration(0)
result['animation']:setTimeSpeed(1.0000)
--Create Animation List

result['root'] = Layer
return result;
end

return Result
