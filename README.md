# Aegisub_RTL-FIX
Simple automation script for Aegisub to fix RTL formatting in subtitles.

Script works by adding {U+202B} Unicode character to start of each line
and after line breaks (\N) and that magicaly fixes all the RTL problems!

The script has been tested with persian, but it should work with all the other RTL languages.

# How to install
If you are on windows, you need to copy the script in the Autoload
directory located at the Aegisub instalation folder, Or alternatively
you can place the script in the location below (If the autoload folder
doesn't exist you can make it yourself)
```
%appdata%\Aegisub\automation\autoload
```
if you are on linux, place the script in `~/.aegisub/automation` (Make it
yourself if it doesnt exist).
