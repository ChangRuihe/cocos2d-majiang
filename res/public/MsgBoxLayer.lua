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
panRoot:setBackGroundColorOpacity(140)
panRoot:setTouchEnabled(true);
panRoot:setLayoutComponentEnabled(true)
panRoot:setName("panRoot")
panRoot:setTag(224)
panRoot:setCascadeColorEnabled(true)
panRoot:setCascadeOpacityEnabled(true)
layout = ccui.LayoutComponent:bindLayoutComponent(panRoot)
layout:setPercentWidth(1.0000)
layout:setPercentHeight(1.0000)
layout:setSize({width = 1280.0000, height = 720.0000})
Layer:addChild(panRoot)

--Create imgBg
local imgBg = ccui.ImageView:create()
imgBg:ignoreContentAdaptWithSize(false)
imgBg:loadTexture("public/bf-tonyongkuang.png",0)
imgBg:setTouchEnabled(true);
imgBg:setLayoutComponentEnabled(true)
imgBg:setName("imgBg")
imgBg:setTag(210)
imgBg:setCascadeColorEnabled(true)
imgBg:setCascadeOpacityEnabled(true)
imgBg:setPosition(649.7853, 356.4117)
layout = ccui.LayoutComponent:bindLayoutComponent(imgBg)
layout:setPositionPercentX(0.5076)
layout:setPositionPercentY(0.4950)
layout:setPercentWidth(0.5695)
layout:setPercentHeight(0.6431)
layout:setSize({width = 729.0000, height = 463.0000})
layout:setLeftMargin(285.2853)
layout:setRightMargin(265.7147)
layout:setTopMargin(132.0883)
layout:setBottomMargin(124.9117)
Layer:addChild(imgBg)

--Create Image_2
local Image_2 = ccui.ImageView:create()
Image_2:ignoreContentAdaptWithSize(false)
Image_2:loadTexture("public/bf-tongyong3.png",0)
Image_2:setScale9Enabled(true)
Image_2:setCapInsets({x = 19, y = 64, width = 122, height = 32})
Image_2:setLayoutComponentEnabled(true)
Image_2:setName("Image_2")
Image_2:setTag(211)
Image_2:setCascadeColorEnabled(true)
Image_2:setCascadeOpacityEnabled(true)
Image_2:setPosition(364.6026, 231.8883)
layout = ccui.LayoutComponent:bindLayoutComponent(Image_2)
layout:setPositionPercentX(0.5001)
layout:setPositionPercentY(0.5008)
layout:setPercentWidth(0.9383)
layout:setPercentHeight(0.9287)
layout:setSize({width = 684.0000, height = 430.0000})
layout:setLeftMargin(22.6026)
layout:setRightMargin(22.3974)
layout:setTopMargin(16.1117)
layout:setBottomMargin(16.8883)
imgBg:addChild(Image_2)

--Create txtMsg
local txtMsg = ccui.Text:create()
txtMsg:ignoreContentAdaptWithSize(false)
txtMsg:setFontName("font/DFYuanW7-GB2312.ttf")
txtMsg:setFontSize(30)
txtMsg:setString([[音效]])
txtMsg:setTextHorizontalAlignment(1)
txtMsg:setTextVerticalAlignment(1)
txtMsg:setLayoutComponentEnabled(true)
txtMsg:setName("txtMsg")
txtMsg:setTag(221)
txtMsg:setCascadeColorEnabled(true)
txtMsg:setCascadeOpacityEnabled(true)
txtMsg:setPosition(370.6151, 270.1273)
txtMsg:setTextColor({r = 59, g = 21, b = 5})
layout = ccui.LayoutComponent:bindLayoutComponent(txtMsg)
layout:setPositionPercentX(0.5084)
layout:setPositionPercentY(0.5834)
layout:setPercentWidth(0.7353)
layout:setPercentHeight(0.3888)
layout:setSize({width = 536.0000, height = 180.0000})
layout:setLeftMargin(102.6151)
layout:setRightMargin(90.3849)
layout:setTopMargin(102.8727)
layout:setBottomMargin(180.1273)
imgBg:addChild(txtMsg)

--Create panLayout
local panLayout = ccui.Layout:create()
panLayout:ignoreContentAdaptWithSize(false)
panLayout:setClippingEnabled(false)
panLayout:setBackGroundColorOpacity(102)
panLayout:setTouchEnabled(true);
panLayout:setLayoutComponentEnabled(true)
panLayout:setName("panLayout")
panLayout:setTag(448)
panLayout:setCascadeColorEnabled(true)
panLayout:setCascadeOpacityEnabled(true)
panLayout:setPosition(35.0631, 30.6253)
layout = ccui.LayoutComponent:bindLayoutComponent(panLayout)
layout:setPositionPercentX(0.0481)
layout:setPositionPercentY(0.0661)
layout:setPercentWidth(0.9053)
layout:setPercentHeight(0.2160)
layout:setSize({width = 660.0000, height = 100.0000})
layout:setLeftMargin(35.0631)
layout:setRightMargin(33.9369)
layout:setTopMargin(332.3747)
layout:setBottomMargin(30.6253)
imgBg:addChild(panLayout)

--Create btnOk
local btnOk = ccui.Button:create()
btnOk:ignoreContentAdaptWithSize(false)
btnOk:loadTextureNormal("public/bt-gongyong.png",0)
btnOk:loadTexturePressed("public/bt-gongyong.png",0)
btnOk:loadTextureDisabled("public/bt-gongyong.png",0)
btnOk:setTitleFontName("font/DFYuanW7-GB2312.ttf")
btnOk:setTitleFontSize(36)
btnOk:setLayoutComponentEnabled(true)
btnOk:setName("btnOk")
btnOk:setTag(225)
btnOk:setCascadeColorEnabled(true)
btnOk:setCascadeOpacityEnabled(true)
btnOk:setPosition(206.3839, 52.3199)
layout = ccui.LayoutComponent:bindLayoutComponent(btnOk)
layout:setPositionPercentX(0.3127)
layout:setPositionPercentY(0.5232)
layout:setPercentWidth(0.3803)
layout:setPercentHeight(0.8200)
layout:setSize({width = 251.0000, height = 82.0000})
layout:setLeftMargin(80.8839)
layout:setRightMargin(328.1161)
layout:setTopMargin(6.6801)
layout:setBottomMargin(11.3199)
panLayout:addChild(btnOk)

--Create Text_1
local Text_1 = ccui.Text:create()
Text_1:ignoreContentAdaptWithSize(true)
Text_1:setTextAreaSize({width = 0, height = 0})
Text_1:setFontName("font/DFYuanW7-GB2312.ttf")
Text_1:setFontSize(30)
Text_1:setString([[确  定]])
Text_1:enableShadow({r = 110, g = 110, b = 110, a = 255}, {width = 2, height = -2}, 0)
Text_1:setLayoutComponentEnabled(true)
Text_1:setName("Text_1")
Text_1:setTag(445)
Text_1:setCascadeColorEnabled(true)
Text_1:setCascadeOpacityEnabled(true)
Text_1:setPosition(119.9120, 47.0230)
layout = ccui.LayoutComponent:bindLayoutComponent(Text_1)
layout:setPositionPercentX(0.4777)
layout:setPositionPercentY(0.5735)
layout:setPercentWidth(0.3665)
layout:setPercentHeight(0.4146)
layout:setSize({width = 92.0000, height = 34.0000})
layout:setLeftMargin(73.9120)
layout:setRightMargin(85.0880)
layout:setTopMargin(17.9770)
layout:setBottomMargin(30.0230)
btnOk:addChild(Text_1)

--Create btnCancel
local btnCancel = ccui.Button:create()
btnCancel:ignoreContentAdaptWithSize(false)
btnCancel:loadTextureNormal("public/bt-gongyong.png",0)
btnCancel:loadTexturePressed("public/bt-gongyong.png",0)
btnCancel:loadTextureDisabled("public/bt-gongyong.png",0)
btnCancel:setTitleFontName("font/DFYuanW7-GB2312.ttf")
btnCancel:setTitleFontSize(36)
btnCancel:setLayoutComponentEnabled(true)
btnCancel:setName("btnCancel")
btnCancel:setTag(446)
btnCancel:setCascadeColorEnabled(true)
btnCancel:setCascadeOpacityEnabled(true)
btnCancel:setPosition(481.3819, 55.3197)
layout = ccui.LayoutComponent:bindLayoutComponent(btnCancel)
layout:setPositionPercentX(0.7294)
layout:setPositionPercentY(0.5532)
layout:setPercentWidth(0.3803)
layout:setPercentHeight(0.8200)
layout:setSize({width = 251.0000, height = 82.0000})
layout:setLeftMargin(355.8819)
layout:setRightMargin(53.1181)
layout:setTopMargin(3.6803)
layout:setBottomMargin(14.3197)
panLayout:addChild(btnCancel)

--Create Text_1
local Text_1 = ccui.Text:create()
Text_1:ignoreContentAdaptWithSize(true)
Text_1:setTextAreaSize({width = 0, height = 0})
Text_1:setFontName("font/DFYuanW7-GB2312.ttf")
Text_1:setFontSize(30)
Text_1:setString([[取  消]])
Text_1:enableShadow({r = 110, g = 110, b = 110, a = 255}, {width = 2, height = -2}, 0)
Text_1:setLayoutComponentEnabled(true)
Text_1:setName("Text_1")
Text_1:setTag(447)
Text_1:setCascadeColorEnabled(true)
Text_1:setCascadeOpacityEnabled(true)
Text_1:setPosition(119.9120, 47.0230)
layout = ccui.LayoutComponent:bindLayoutComponent(Text_1)
layout:setPositionPercentX(0.4777)
layout:setPositionPercentY(0.5735)
layout:setPercentWidth(0.3665)
layout:setPercentHeight(0.4146)
layout:setSize({width = 92.0000, height = 34.0000})
layout:setLeftMargin(73.9120)
layout:setRightMargin(85.0880)
layout:setTopMargin(17.9770)
layout:setBottomMargin(30.0230)
btnCancel:addChild(Text_1)

--Create Animation
result['animation'] = ccs.ActionTimeline:create()
  
result['animation']:setDuration(0)
result['animation']:setTimeSpeed(1.0000)
--Create Animation List

result['root'] = Layer
return result;
end

return Result

