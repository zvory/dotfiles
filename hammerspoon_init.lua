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

function bindShiftCtrlHotkey(key, pressedfn, msg)
  msg = msg or "" 
  hs.hotkey.bind({"shift", "ctrl"}, key, msg, pressedfn, nil, nil)
end

function bindShiftCtrlHotkeyToApp(key, app)
  bindShiftCtrlHotkey(key, function() switchToAndFromApp(app) end, app)
end


-- run `osascript -e 'id of app "Slack"'` to get bundle of an app

bindOptionShiftCtrlHotkeyToApp('4', 'com.spotify.client')
bindShiftCtrlHotkeyToApp('5', "md.obsidian")
bindShiftCtrlHotkeyToApp('4', "com.tinyspeck.slackmacgap")
bindShiftCtrlHotkeyToApp('3', "com.jetbrains.intellij")
bindShiftCtrlHotkeyToApp('2', "com.googlecode.iterm2")
bindShiftCtrlHotkeyToApp('1', "com.google.Chrome")
