-- (Thanks Teije) for switchToAndFromApp
local previousApp = ""
function switchToAndFromApp(bundleID)
  local focusedWindow = hs.window.focusedWindow()
  if focusedWindow == nil then
    hs.application.launchOrFocusByBundleID(bundleID)
  elseif focusedWindow:application():bundleID() == bundleID then
    if previousApp == nil then
      hs.window.switcher.nextWindow()
    else
      previousApp:activate()
    end
  else
    previousApp = focusedWindow:application()
    hs.application.launchOrFocusByBundleID(bundleID)
  end
end

function bindOptionShiftCtrlHotkey(key, pressedfn, msg)
  msg = msg or "" 
  hs.hotkey.bind({"shift", "ctrl", "alt"}, key, msg, pressedfn, nil, nil)
end

function bindOptionShiftCtrlHotkeyToApp(key, app)
  bindOptionShiftCtrlHotkey(key, function() switchToAndFromApp(app) end, app)
end


function bindOptionCtrlHotkey(key, pressedfn, msg)
  msg = msg or "" 
  hs.hotkey.bind({"alt", "ctrl"}, key, msg, pressedfn, nil, nil)
end

function bindOptionCtrlHotkeyToApp(key, app)
  bindOptionCtrlHotkey(key, function() switchToAndFromApp(app) end, app)
end

function reloadConfig(files)
  doReload = false
  for _,file in pairs(files) do
      if file:sub(-4) == ".lua" then
          doReload = true
      end
  end
  if doReload then
      hs.reload()
  end
end
myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()

bindOptionShiftCtrlHotkeyToApp('4', 'com.apple.systempreferences')
bindOptionShiftCtrlHotkeyToApp('3', 'com.spotify.client')
bindOptionShiftCtrlHotkeyToApp('1', 'com.zsa.wally')


-- run `osascript -e 'id of app "Slack"'` to get bundle of an app
bindOptionCtrlHotkeyToApp('4', "md.obsidian")
bindOptionCtrlHotkeyToApp('3', "com.tinyspeck.slackmacgap")
bindOptionCtrlHotkeyToApp('2', "com.jetbrains.intellij")
bindOptionCtrlHotkeyToApp('1', "com.googlecode.iterm2")
bindOptionCtrlHotkeyToApp('0', "com.google.Chrome")

hs.alert.show("Config loaded")

