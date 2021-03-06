--region *.lua
--Date
--此文件由[BabeLua]插件自动生成

local WechatShareLightLayer = class("WechatShareLightLayer", cc.Layer)

--params:
--{
--    content = {
--        contentType = int,
--        title = string,
--        text = string,
--    }
--}
function WechatShareLightLayer:ctor(params)
    local uiNode = require("HomeScene.wechatShare.WechatShareLightLayer"):create().root:addTo(self)
    util.bindUINodes(uiNode, self, self)

    util.bindUITouchEvents(self.panRoot, self)

    self.content = params.content
end 

function WechatShareLightLayer:share(shareScene)
    if device.platform ~= "ios" and device.platform ~= "android" then
        printInfo("not supported besides ios and android")
        return
    end 
    if self.content.contentType == Define.WECHAT_SHARE_CONTENT_TYPE_TEXT then 
        local transaction = PlayerCache.account .. "web_" .. tostring(os.time())
        WechatSDK:shareWebpageToWX(transaction, 
            shareScene,
            "http://hgmj.jiezhansifang.com/download/download_jzhgmj.html",
            self.content.title,
            self.content.text)
    elseif self.content.contentType == Define.WECHAT_SHARE_CONTENT_TYPE_IMAGE then 
        local transaction = PlayerCache.account .. "img_" .. tostring(os.time())
        WechatSDK:shareImageToWX(transaction, 
            shareScene,
            self.content.text)
    else 
        assert(false)
    end 
end 

function WechatShareLightLayer:onClick_btnFriends(sender)
    Helper.playSoundClick()
    self:share(WechatSDK.SCENE_SESSION)
end 

function WechatShareLightLayer:onClick_btnMoments(sender)
    Helper.playSoundClick()
    self:share(WechatSDK.SCENE_TIMELINE)
end 

function WechatShareLightLayer:onTouchEnded_panRoot(touch, eventTouch)
    UIManager:goBack()
end 

return WechatShareLightLayer
--endregion
