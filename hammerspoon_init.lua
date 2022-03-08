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

function bindHyperHotkey(key, pressedfn, msg)
  msg = msg or "" 
  hs.hotkey.bind({"shift", "ctrl"}, key, msg, pressedfn, nil, nil)
end

function bindHyperHotkeyToApp(key, app)
  bindHyperHotkey(key, function() switchToAndFromApp(app) end, app)
end

-- run `osascript -e 'id of app "Slack"'` to get bundle of an app
bindHyperHotkeyToApp('4', "com.tinyspeck.slackmacgap")
bindHyperHotkeyToApp('3', "com.jetbrains.intellij")
bindHyperHotkeyToApp('2', "com.googlecode.iterm2")
bindHyperHotkeyToApp('1', "com.google.Chrome")
