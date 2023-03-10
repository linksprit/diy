module("luci.controller.cowbping", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/cowbping") then return end
	entry({"admin", "control", "cowbping"}, alias("admin", "control", "cowbping","cowbping"), _("网络检测"), 150).dependent = true
	entry({"admin", "control", "cowbping", "cowbping"}, cbi("cowbping/cowbping"),_("设置"), 10).leaf = true
	entry({"admin", "control", "cowbping", "cowblog"}, form("cowbping/cowblog"),_("日志"), 20).leaf = true
end
