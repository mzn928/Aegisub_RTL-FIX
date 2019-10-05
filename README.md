# Aegisub RTL-Fix
Simple automation script for Aegisub to fix RTL formatting in subtitles by AnimeList Team.

Script works by adding {U+202B} Unicode character to start of each line
and after line breaks (\N) and that magicaly fixes all the RTL problems!

The script has been tested with Persian, But it should work with all the other RTL languages.

[AnimDL.ir](https://www.animdl.ir) | [@AnimeList_ir](https://t.me/animelist_ir)

# How to install
If you are on windows, you need to copy the script in the Autoload
directory located at the Aegisub instalation folder, Or alternatively
you can place the script in the location below (If the autoload folder
doesn't exist you can create it yourself)
```
%appdata%\Aegisub\automation\autoload
```
If you are on linux, place the script in `~/.aegisub/automation/autoload` (Create it
yourself if it doesnt exist).

# Tips
You can create a hotkey for executing this automation to make the usage much easier. (Command: automation/lua/rtl-fix/Fix RTL)
