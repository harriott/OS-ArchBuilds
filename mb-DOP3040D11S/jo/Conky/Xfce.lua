-- vim: tw=0:

--[[
Joseph Harriott - Thu 15 Jan 2026
$machBld/jo/Conky/Xfce.lua  adapted from output of  conky -C
symlinked in
  $OSAB/nodes-Bash/bashrc-generic
  $OSAB/nodes-set/jo-1-Xfce.sh
pb ~/.conkyrc
needs updating as per sbMb
]]

conky.config = {
    alignment = 'top_right',
    background = true,
    border_width = 1,
    color1 = 'd3d3d3', -- lightgrey #d3d3d3
    color2 = 'ffa500', -- orange #ffa500
    color3 = '8FBC8F', -- DarkSeaGreen #8FBC8F
    color4 = '808080', -- Gray #808080
    color5 = '1E90FF', -- DodgerBlue #1E90FF
    cpu_avg_samples = 2,
	default_color = '#ffffff',  -- ${color}, white
    default_outline_color = '#ffffff',
    default_shade_color = '#ffffff',
	double_buffer = true,
    draw_borders = false,
    draw_graph_borders = true,
    draw_outline = false,
    draw_shades = false,
    extra_newline = false,
	font = 'DejaVuSansMono:size=9',
    gap_x = 60,
    gap_y = 60,
    minimum_height = 5,
	minimum_width = 5,
    net_avg_samples = 2,
    no_buffers = true,
    out_to_console = false,
    out_to_ncurses = false,
    out_to_stderr = false,
    out_to_x = true,
    own_window = true,
    own_window_class = 'Conky',
	own_window_transparent = false,
	own_window_argb_visual = true,
	own_window_argb_value = 120,
    own_window_type = 'dock',
	own_window_hints = "below",
    show_graph_range = false,
    show_graph_scale = false,
    stippled_borders = 0,
    update_interval = 1.0,
    uppercase = false,
    use_spacer = 'none',
    use_xft = true,
}

-- (seems to be limited to 10 processes)
conky.text = [[
#-- system
${color #ffffff}$nodename - $sysname $kernel

#-- time
${color1}${font Arial:pixelsize=44}${time %k:%M}${font Arial:pixelsize=38}${time :%S} $font

#-- calendar
# ${alignc} would only work on the first line
${font DejaVuSansMono:size=10}${color1}${execpi 1800 DA=`date +%_d`; cal | sed s/"\(^\|[^0-9]\)$DA"'\b'/'\1${color2}'"$DA"'${color1}'/}$font

#-- system stats
${color}Uptime ${color2}$uptime  ${color}Frequency ${color2}$freq MHz
${color}RAM ${color2}$mem ($memmax) = $memperc% ${membar 4}
${color}Swap ${color2}$swap ($swapmax) = $swapperc% ${swapbar 4}
${color}CPU ${color2}$cpu% ${cpubar 4}
${color}Processes ${color2}$processes  ${color}Running ${color2}$running_processes
${color}
#-- top processes
${color}Name               PID   CPU%   MEM%
${color1}${top name 1} ${top pid 1} ${top cpu 1} ${top mem 1}
${color1}${top name 2} ${top pid 2} ${top cpu 2} ${top mem 2}
${color1}${top name 3} ${top pid 3} ${top cpu 3} ${top mem 3}
${color1}${top name 4} ${top pid 4} ${top cpu 4} ${top mem 4}
${color1}${top name 5} ${top pid 5} ${top cpu 5} ${top mem 5}
${color1}${top name 6} ${top pid 6} ${top cpu 6} ${top mem 6}
${color1}${top name 7} ${top pid 7} ${top cpu 7} ${top mem 7}
${color1}${top name 8} ${top pid 8} ${top cpu 8} ${top mem 8}
${color1}${top name 9} ${top pid 9} ${top cpu 9} ${top mem 9}
${color1}${top name 10} ${top pid 10} ${top cpu 10} ${top mem 10}
${color}
#-- hard drives
# (can't figure how to feed  $Storage  to  fs_*  commands)
$font${color}/ ${color3}${fs_used /} (${fs_size /}) ${color4}${fs_bar 6 /} ${color}
${color}/home ${color3}${fs_used /home} (${fs_size /home}) ${color4}${fs_bar 6 /home} ${color}
${color}$Storage ${color3}${fs_used /mnt/BX200} (${fs_size /mnt/BX200}) ${color4}${fs_bar 6 /mnt/BX200} ${color}
#-- WAN
${color}eno1  Up ${color2}${upspeed eno1} ${color} Down ${color2}${downspeed eno1}
${color}wlan0  Up ${color2}${upspeed wlan0} ${color} Down ${color2}${downspeed wlan0}
${color}
#-- weather (blank if not online)
${alignc}${color1}${execpi 100 curl wttr.in/Paris?T0 -s -m 3}

   ${color1}${execpi 100 curl wttr.in/Paris\?format="sunrise/set:+%S+%s" -s -m 3}
]]

