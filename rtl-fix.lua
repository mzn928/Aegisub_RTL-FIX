﻿-- Aegisub Automation 4 Lua RTL Fix
-- Macro that adds U+202B unicode character to start of all selected lines

local tr = aegisub.gettext

script_name = tr"RTL-FIX"
script_description = tr"Adds U+202B unicode character to start of all selected lines, Thus fixing the RTL problem in Aegisub"
script_author = "Shinsekai_Yuri"
script_version = "1.2.1"

local u202b = "\226\128\171"
local n = "\\n"
local N = "\\N"
local function starts_with(str, start)
	return str:sub(1, #start) == start
end

function rtl_fix(subtitles, selected_lines, active_line)
	for z, i in ipairs(selected_lines) do
		local l = subtitles[i]
		if string.match(l.text, u202b) then l.text = l.text:gsub(u202b, "") end
		l.text = u202b .. l.text
		if string.match(l.text, N) then l.text = l.text:gsub(N, N .. u202b) end
		if string.match(l.text, n) then l.text = l.text:gsub(n, n .. u202b) end
		subtitles[i] = l
	end
	aegisub.set_undo_point(script_name)
end

aegisub.register_macro(script_name, tr"Adds U+202B unicode character to start of all selected lines", rtl_fix)
