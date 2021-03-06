set dosbox_path to "/Applications/DOSBox.app/Contents/MacOS/dosbox"
set config_path to "/Users/pavel/.dosbox/conf/"
set the_list to ""
set nl to ASCII character 10
tell application "Finder"
	set file_list to name of every file of folder "Macintosh HD:Users:pavel:.dosbox:conf"
	repeat with entry in file_list
		set the_list to the_list & nl & entry
	end repeat
end tell
set options to (((choose from list file_list with prompt "DOSBox config (ESC=default)") as string) & "'" & "&> ~/.dosbox/dosbox.log &")
if options is not false then
	do shell script dosbox_path & " -userconf -conf '" & config_path & options
else if options is false then
	do shell script dosbox_path & "&> ~/dosbox.log &"
end if
