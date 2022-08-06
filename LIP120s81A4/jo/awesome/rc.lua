-- vim: set et:

-- Joseph Harriott - Mon 06 Jun 2022
-- adapted from  /etc/xdg/awesome/rc.lua
-- symlinked in my  $bs/39-awesome.sh
--  exa -la ~/.config/awesome/rc.lua

--  to do
--  -----
--  Rofi
--  volume controls

-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")

-- -> 0 initial setup
-- standard awesome library
local gears = require("gears")
local awful = require("awful")
require("awful.autofocus")
-- widget and layout library
local wibox = require("wibox")
local brightness_widget = require("awesome-wm-widgets.brightness-widget.brightness")
local calendar_widget = require("awesome-wm-widgets.calendar-widget.calendar")
local cpu_widget = require("awesome-wm-widgets.cpu-widget.cpu-widget")
local ram_widget = require("awesome-wm-widgets.ram-widget.ram-widget")
-- theme handling library
local beautiful = require("beautiful")
-- notification library
local naughty = require("naughty")
local menubar = require("menubar")
local hotkeys_popup_jo = require("awful.hotkeys_popup");
local hotkeys_popup_jo_sized = hotkeys_popup_jo.widget.new({ width = 930, height = 450 });
  -- for my Lenovo IdeaPad 120s 81A4
local weather_widget = require("awesome-wm-widgets.weather-widget.weather")

-- -> 1 error handling
-- Check if awesome encountered an error during startup and fell back to
-- another config (This code will only ever execute for the fallback config)
if awesome.startup_errors then
    naughty.notify({ preset = naughty.config.presets.critical,
                     title = "Oops, there were errors during startup!",
                     text = awesome.startup_errors })
end

-- Handle runtime errors after startup
do
    local in_error = false
    awesome.connect_signal("debug::error", function (err)
        -- Make sure we don't go into an endless error loop
        if in_error then return end
        in_error = true

        naughty.notify({ preset = naughty.config.presets.critical,
                         title = "Oops, an error happened!",
                         text = tostring(err) })
        in_error = false
    end)
end
-- }}}

-- -> 2 variable definitions
awful.layout.layouts = {
    -- awful.layout.suit.floating,  -- respects gvim's & urxvt's sizes
    awful.layout.suit.tile.left,
    -- awful.layout.suit.tile,
    awful.layout.suit.tile.bottom,
    -- awful.layout.suit.tile.top,
    awful.layout.suit.max,
}

beautiful.init(gears.filesystem.get_configuration_dir() .. "zenburn/theme.lua")
  -- zenburn colouring  gets  cbatticon  &  MicTray  icon visible

modkey = "Mod4"

-- terminalish
    terminal = "urxvt"
    editor = os.getenv("EDITOR") or "nano"
    editor_cmd = terminal .. " -e " .. editor

-- -> 3 key bindings - clientbuttons
clientbuttons = gears.table.join(
    awful.button({ }, 1, function (c)
        c:emit_signal("request::activate", "mouse_click", {raise = true})
    end),
    awful.button({ modkey }, 1, function (c)
        c:emit_signal("request::activate", "mouse_click", {raise = true})
        awful.mouse.client.move(c)
    end),
    awful.button({ modkey }, 3, function (c)
        c:emit_signal("request::activate", "mouse_click", {raise = true})
        awful.mouse.client.resize(c)
    end)
)

-- -> 3 key bindings - clientkeys
clientkeys = gears.table.join(

    awful.key({ modkey,           }, "c",      function (c) c:kill()                         end,
              {description = "close client", group = "client"}),
    awful.key({ modkey,           }, "f",
        function (c)
            c.fullscreen = not c.fullscreen
            c:raise()
        end, {description = "toggle fullscreen", group = "client"}),
    awful.key({ modkey, "Shift"   }, "t",      function (c) c.ontop = not c.ontop            end,
              {description = "toggle keep on top", group = "client"}),
    awful.key({ modkey, "Control" }, "m", function (c) c:swap(awful.client.getmaster()) end,
              {description = "move to master", group = "client"}),
    awful.key({ modkey, "Control" }, "s",      function (c) c:move_to_screen()               end,
              {description = "move to screen", group = "client"}),

    -- --> floating
    awful.key({modkey, }, "o", function (c)
        c.fullscreen = false
        c.maximized = false
        c.floating = not c.floating
        -- these only apply when floating
        c.x = 200
        c.y = 70
        -- (can't figure how to use awful.placement.centered)
        c.width = 762  -- (matches width defined by  columns  in my  $HOME/.vim/gvimrc.vim)
        --10--------20--------30--------40--------50--------60--------70--------80--------90--------
        c.height = 600
        end, {description = "toggle floating", group = "client"}),

    -- --> minimizes
    awful.key({ modkey, "Control" }, "i", function (c)
            c.minimized = true
        end, {description = "minimize", group = "client"}),
    awful.key({ modkey, "Shift" }, "i", function () local c = awful.client.restore()
                  if c then c:emit_signal( "request::activate", "key.unminimize", {raise = true}) end
              end, {description = "restore minimized client (in order)", group = "client"}),

    -- --> maximizes )
    awful.key({ modkey,           }, "a",
        function (c)
            c.maximized = not c.maximized
            c:raise()
        end, {description = "(un)maximize", group = "client"}),
    awful.key({ modkey, "Control" }, "a",
        function (c)
            c.maximized_horizontal = not c.maximized_horizontal
            c:raise()
        end, {description = "(un)maximize horizontally", group = "client"},
    awful.key({ modkey, "Shift"   }, "a",
        function (c)
            c.maximized_vertical = not c.maximized_vertical
            c:raise()
        end, {description = "(un)maximize vertically", group = "client"}))
)

-- -> 3 key bindings - globalkeys - 0
globalkeys = gears.table.join(

    -- --> awesome quit/restart
    awful.key({ modkey, "Control" }, "r", awesome.restart,
              {description = "reload awesome", group = "awesome"}),
    awful.key({ modkey, "Shift"   }, "q", awesome.quit,
              {description = "quit awesome", group = "awesome"}),

    -- --> brightness
    -- awful.key({ }, "XF86MonBrightnessDown", function () awful.util.spawn("xbacklight -dec 4") end),
    awful.key({ }, "XF86MonBrightnessDown", function () brightness_widget:dec() end, {description = "increase brightness", group = "custom"}),
    -- awful.key({ }, "XF86MonBrightnessUp",   function () awful.util.spawn("xbacklight -inc 12") end),
    awful.key({ }, "XF86MonBrightnessUp",   function () brightness_widget:inc() end, {description = "decrease brightness", group = "custom"}),

    -- --> changing screens
    awful.key({ modkey, "Control" }, "j", function () awful.screen.focus_relative( 1) end,
              {description = "focus the next screen", group = "screen"}),
    awful.key({ modkey, "Control" }, "k", function () awful.screen.focus_relative(-1) end,
              {description = "focus the previous screen", group = "screen"}),

    -- --> client switching
    awful.key({ modkey,           }, "j",
        function () awful.client.focus.byidx( 1) end,
        {description = "focus next by index", group = "client"}),
    awful.key({ modkey,           }, "k",
        function () awful.client.focus.byidx(-1) end,
        {description = "focus previous by index", group = "client"}),
    awful.key({ modkey, "Shift"   }, "j", function () awful.client.swap.byidx(  1)    end,
              {description = "swap with next client", group = "client"}),
    awful.key({ modkey, "Shift"   }, "k", function () awful.client.swap.byidx( -1)    end,
              {description = "swap with previous client", group = "client"}),
    awful.key({ modkey,           }, "u", awful.client.urgent.jumpto,
              {description = "jump to urgent client", group = "client"}),
    awful.key({ modkey,           }, "Escape",
        function ()
            local c = awful.client.focus.history.list[2]
            client.focus = c
            local t = client.focus and client.focus.first_tag or nil
            if t then t:view_only() end
            c:raise()
        end, {description = "toggle between last two clients", group = "client"}),

-- --> destroy_all_notifications
    awful.key({ modkey, "Control" }, "d",
        function() naughty.destroy_all_notifications() end,
            {description="destroy_all_notifications", group="awesome"}),

-- --> hotkeys_popup_jo
    awful.key({ modkey, }, "p", function() hotkeys_popup_jo_sized:show_help() end,
              {description="hotkeys_popup", group="awesome"}),

-- --> launchings
    -- menubar
    awful.key({ modkey }, "m", function() menubar.show() end,
        {description = "menubar", group = "launcher"}),

    -- run an executable
    awful.key({ modkey }, "r", function () awful.screen.focused().mypromptbox:run() end,
        {description = "run prompt", group = "launcher"}),

    -- slock
    awful.key({ modkey, "Shift" }, "s", function () awful.spawn("slock") end,
        {description = "slock", group = "launcher"}),

    -- Thunderbird Safely
    awful.key({ modkey, "Shift" }, "t",
        function () awful.spawn.with_shell("~/.config/awesome/Thunderbird-notify-send.sh") end,
        {description = "Thunderbird on tag 3", group = "launcher"}),

    -- KeePassXC
    awful.key({ modkey, "Shift" }, "p", function () awful.spawn("keepassxc") end,
        {description = "KeePassXC", group = "launcher"}),

    -- ---> using Return key
    -- Return  shows in  myawesomemenu  as  Enter

        -- ----> Firefox, gVim, terminal
        -- Firefox
        -- awful.key({ modkey, "Shift" }, "Return", function () awful.spawn("firefox") end,
        awful.key({ modkey, "Shift" }, "Return",
            function () awful.spawn.with_shell("~/.config/awesome/Firefox-notify-send.sh") end,
            {description = "Firefox on tag 2", group = "launcher"}),

        -- gVim floating, thus respecting it's preferred size
        --  (as defined by  columns  &  lines  in my  $HOME/.vim/gvimrc.vim)
        awful.key({ modkey, "Control" }, "Return", function () awful.spawn("gvim", { floating  = true, }) end,
            {description = "open gVim floating", group = "launcher"}),

        -- terminal
        awful.key({ modkey, }, "Return", function () awful.spawn("urxvt -e sh -c tmux new") end,
                  {description = "open urxvt with new tmux session", group = "launcher"}),

    -- --> layout - columns
    awful.key({ modkey, "Control" }, "o",     function () awful.tag.incncol(-1, nil, true)    end,
              {description = "decrease the number of columns", group = "layout"}),
    awful.key({ modkey, "Shift"   }, "o",     function () awful.tag.incncol( 1, nil, true)    end,
              {description = "increase the number of columns", group = "layout"}),

    -- --> layout - cycle
    awful.key({ modkey,           }, "space", function () awful.layout.inc( 1)                end,
              {description = "select next", group = "layout"}),
    awful.key({ modkey, "Shift"   }, "space", function () awful.layout.inc(-1)                end,
              {description = "select previous", group = "layout"}),

    -- --> layout - master clients
    awful.key({ modkey, "Control" }, "l",     function () awful.tag.incnmaster(-1, nil, true) end,
              {description = "decrease the number of master clients", group = "layout"}),
    awful.key({ modkey, "Shift"   }, "l",     function () awful.tag.incnmaster( 1, nil, true) end,
              {description = "increase the number of master clients", group = "layout"}),

    -- --> layout - master width
    awful.key({ modkey,           }, "h",     function () awful.tag.incmwfact( 0.05)          end,
              {description = "increase master width factor", group = "layout"}),
    awful.key({ modkey,           }, "l",     function () awful.tag.incmwfact(-0.05)          end,
              {description = "decrease master width factor", group = "layout"}),

-- --> run some Lua
    awful.key({ modkey }, "x", function () awful.prompt.run {
        prompt       = "Run Lua code: ",
        textbox      = awful.screen.focused().mypromptbox.widget,
        exe_callback = awful.util.eval,
        history_path = awful.util.get_cache_dir() .. "/history_eval"
        } end, {description = "lua execute prompt", group = "awesome"}),

-- --> tags next/previous )
    awful.key({ modkey, }, "Left",   awful.tag.viewprev, {description = "view previous", group = "tag"}),
    awful.key({ modkey, }, "Right",  awful.tag.viewnext, {description = "view next", group = "tag"})
    )

-- -> 3 key bindings - globalkeys - 1 tag view and client throw to tag
-- bind all key numbers to tags (using keycodes to work on any keyboard)
for i = 1, 9 do
    globalkeys = gears.table.join(globalkeys,
        -- View tag only.
        awful.key({ modkey }, "#" .. i + 9,
                  function ()
                        local screen = awful.screen.focused()
                        local tag = screen.tags[i]
                        if tag then tag:view_only() end
                  end,
                  {description = "view tag #"..i, group = "tag"}),
        -- throw client to tag
        awful.key({ modkey, "Shift" }, "#" .. i + 9,
                  function ()
                      if client.focus then
                          local tag = client.focus.screen.tags[i]
                          if tag then client.focus:move_to_tag(tag) end
                     end
                  end,
                  {description = "throw focused client to tag #"..i, group = "tag"})
    )
end

-- -> 3 key bindings - globalkeys - 2 set keys
root.keys(globalkeys)

-- -> 3 keyboard map indicator and switcher
mykeyboardlayout = awful.widget.keyboardlayout()

-- -> 3 menubar - terminal
menubar.utils.terminal = terminal -- Set the terminal for applications that require it

-- -> 3 mouse extra
awful.mouse.snap.edge_enabled = false -- turns off snap to edge in floating mode

root.buttons(gears.table.join(
    awful.button({ }, 3, function () mymainmenu:toggle() end),
    awful.button({ }, 4, awful.tag.viewnext),
    awful.button({ }, 5, awful.tag.viewprev)
))

-- -> 3 rules for new clients
awful.rules.rules = {
    -- add titlebars to normal clients and dialogs
    { rule_any = {type = { "normal", "dialog" } }, properties = { titlebars_enabled = false } },

    -- all clients
    { rule = { },
      properties = { border_width = beautiful.border_width,
                     border_color = beautiful.border_normal,
                     focus = awful.client.focus.filter,
                     raise = true,
                     keys = clientkeys,
                     buttons = clientbuttons,
                     maximized_horizontal = false, maximized_vertical   = false,
                       -- stops nomacs, Thunderbird, etc being stuck as floating
                     screen = awful.screen.preferred,
                     placement = awful.placement.no_overlap+awful.placement.no_offscreen
                   }
    },

    -- clients to float
    { rule_any = {
        instance = {
          "DTA",  -- Firefox addon DownThemAll.
          "copyq",  -- Includes session name in class.
          "pinentry",
                   },
        class = {
          "Arandr",
          "Blueman-manager",
          "Gpick",
          "Kruler",
          "MessageWin",  -- kalarm.
          "Sxiv",
          "Tor Browser", -- Needs a fixed window size to avoid fingerprinting by screen size.
          "Wpa_gui",
          "veromix",
          "xtightvncviewer"},

        -- Note that the name property shown in xprop might be set slightly after creation of the client
        -- and the name shown there might not match defined rules here.
        name = {
          "Event Tester",  -- xev.
               },
        role = {
          "AlarmWindow",  -- Thunderbird's calendar.
          "ConfigManager",  -- Thunderbird's about:config.
          "pop-up",       -- e.g. Google Chrome's (detached) Developer Tools.
               }
      }, properties = { floating = true }},

    -- map certain programs to certain tags
    { rule_any = { class = { "Falkon", "firefox", "Google-chrome" } }, properties = { tag = "2" } },
    { rule_any = { class = { "KeePassXC" } }, properties = { tag = "4" } },
    { rule_any = { class = { "Thunderbird" } }, properties = { tag = "3" } }

} -- (through the "manage" signal)

-- -> 4 awesome menu widget - 0 myawesomemenu
myawesomemenu = {
   { "hotkeys", function() hotkeys_popup_jo_sized:show_help(nil, awful.screen.focused()) end },
   { "restart", awesome.restart },
   { "quit", function() awesome.quit() end },
}

-- -> 4 awesome menu widget - 1 mymainmenu
mymainmenu = awful.menu({ items = { { "awesome", myawesomemenu, beautiful.awesome_icon },
                                    { "open terminal", terminal } } })

-- -> 4 awesome menu widget - 2 mylauncher
mylauncher = awful.widget.launcher({ image = beautiful.awesome_icon,
                                     menu = mymainmenu })
                                     -- don't know why this needs to be on two lines

-- -> 5 signals - client borders
client.connect_signal("focus", function(c) c.border_color = beautiful.border_focus end)
client.connect_signal("unfocus", function(c) c.border_color = beautiful.border_normal end)

-- -> 5 signals - new clients
client.connect_signal("manage", function (c)
    if not awesome.startup then awful.client.setslave(c) end -- new window at end
    if awesome.startup
      and not c.size_hints.user_position
      and not c.size_hints.program_position
      then awful.placement.no_offscreen(c) -- recover clients from lost screen
    end
end)

-- -> 5 signals - sloppy focus (focus follows mouse)
client.connect_signal("mouse::enter", function(c)
    c:emit_signal("request::activate", "mouse_enter", {raise = false})
end)

-- -> 5 signals - titlebar (if titlebars_enabled)
client.connect_signal("request::titlebars", function(c)
    -- buttons for the titlebar
    local buttons = gears.table.join(
        awful.button({ }, 1, function()
            c:emit_signal("request::activate", "titlebar", {raise = true})
            awful.mouse.client.move(c)
        end),
        awful.button({ }, 3, function()
            c:emit_signal("request::activate", "titlebar", {raise = true})
            awful.mouse.client.resize(c)
        end)
    )

    awful.titlebar(c) : setup {
        { -- Left
            awful.titlebar.widget.iconwidget(c),
            buttons = buttons,
            layout  = wibox.layout.fixed.horizontal
        },
        { -- Middle
            { -- Title
                align  = "center",
                widget = awful.titlebar.widget.titlewidget(c)
            },
            buttons = buttons,
            layout  = wibox.layout.flex.horizontal
        },
        { -- Right
            awful.titlebar.widget.floatingbutton (c),
            awful.titlebar.widget.maximizedbutton(c),
            awful.titlebar.widget.stickybutton   (c),
            awful.titlebar.widget.ontopbutton    (c),
            awful.titlebar.widget.closebutton    (c),
            layout = wibox.layout.fixed.horizontal()
        },
        layout = wibox.layout.align.horizontal
    }
end)

-- -> 5 wibar - 0 callback - prepare
local function set_wallpaper(s) gears.wallpaper.set("#000000") end -- black...
mytextclock = wibox.widget.textclock()

-- ---> 0 calendar
local cw = calendar_widget({
    placement = 'bottom_right',
    previous_month_button = 1,
    next_month_button = 3,
})
mytextclock:connect_signal("button::press",
    function(_, _, _, button) if button == 1 then cw.toggle() end
    end)

-- ---> 0 taglist buttons
local taglist_buttons = gears.table.join(
                    awful.button({ }, 1, function(t) t:view_only() end),
                    awful.button({ modkey }, 1, function(t)
                                              if client.focus then
                                                  client.focus:move_to_tag(t)
                                              end
                                          end),
                    awful.button({ }, 3, awful.tag.viewtoggle),
                    awful.button({ modkey }, 3, function(t)
                                              if client.focus then
                                                  client.focus:toggle_tag(t)
                                              end
                                          end),
                    awful.button({ }, 4, function(t) awful.tag.viewnext(t.screen) end),
                    awful.button({ }, 5, function(t) awful.tag.viewprev(t.screen) end)
                )

-- ---> 0 tasklist buttons
local tasklist_buttons = gears.table.join(
                     awful.button({ }, 1, function (c)
                                              if c == client.focus then
                                                  c.minimized = true
                                              else
                                                  c:emit_signal(
                                                      "request::activate",
                                                      "tasklist",
                                                      {raise = true})
                                              end
                                          end),
                     awful.button({ }, 3, function() awful.menu.client_list({ theme = { width = 250 } }) end))

-- -> 5 wibar - 1 callback for all current and future screens
awful.screen.connect_for_each_screen(function(s)
    set_wallpaper(s)

    awful.tag({ "1", "2", "3", "4", "5", "6", "7", "8", "9" }, s, awful.layout.layouts[1])

    -- --> 0 prepare tables for widget creation
    s.mypromptbox = awful.widget.prompt()
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(gears.table.join(
        awful.button({ }, 1, function () awful.layout.inc( 1) end),
        awful.button({ }, 3, function () awful.layout.inc(-1) end)))
    s.mytaglist = awful.widget.taglist {
        screen  = s,
        filter  = awful.widget.taglist.filter.all,
        buttons = taglist_buttons }

    s.mytasklist = awful.widget.tasklist {
        screen  = s,
        filter  = awful.widget.tasklist.filter.currenttags,
        buttons = tasklist_buttons
    }

    -- --> 1 create the wibox
    s.mywibox = awful.wibar({ position = "bottom", screen = s })

    -- --> 2 add widgets to the wibox - end)
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        { layout = wibox.layout.fixed.horizontal,
            mylauncher,
            s.mypromptbox,
            s.mytaglist,
        }, -- left widgets
        s.mytasklist, -- middle widget
        { layout = wibox.layout.fixed.horizontal,
            mykeyboardlayout,
            brightness_widget{ base = '50', program = 'xbacklight', timeout = '999', tooltip = 'true' },
		    cpu_widget({ step_spacing = 0, step_width = 1, width = 20, }),
            ram_widget(),
            wibox.widget.systray(),
            mytextclock,
            s.mylayoutbox,
            weather_widget({
                api_key='ce0b30e43e080280543289004ba40921',
                coordinates = {48.870082, 2.391482}, -- Paris, France
                show_hourly_forecast = true,
                show_daily_forecast = true,
            }),
        }, -- right widgets
    }
end)

-- -> 5 wibar - 1 re-set wallpaper when a screen's geometry changes (eg different resolution)
screen.connect_signal("property::geometry", set_wallpaper)

-- -> 7 autoruns
-- spawn background apps
awful.spawn.with_shell("~/.config/awesome/autorun.sh")

