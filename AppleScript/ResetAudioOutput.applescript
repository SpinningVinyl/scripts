property audioOutput : "SPDIF Interface"
property defaultVolume : 100

tell application "System Preferences"
	reveal anchor "output" of pane id "com.apple.preference.sound"
end tell
tell application "System Events" to tell process "System Preferences"
	repeat until exists tab group 1 of window "Sound"
	end repeat
	tell table 1 of scroll area 1 of tab group 1 of window 1
		select (first row whose value of text field 1 is audioOutput)
		tell application "System Events"
			set volume output volume defaultVolume
		end tell
	end tell
end tell
quit application "System Preferences"
