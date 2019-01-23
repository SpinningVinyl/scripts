-- this script is used to display images from a user-selected folder (in random order). I created it for my figure drawing excercises (it's very common to draw 0.5/2/5/10-minute quicksketches - this excercise is tremendously useful for figure drawing skills). 

-- ask the user to select slideshow delay. it would be trivial to replace the selector with an input prompt, but I don't want to deal with input validation
set advanceDelay to (choose from list {30, 120, 300, 600} with prompt "Select slideshow delay (in seconds)") as integer

-- generate list of files in the selected folder (must contain only images for the script to work properly)
tell application "System Events"
	set imgFileList to POSIX path of disk items of (choose folder with prompt "Please select directory.")
end tell

-- get the size of the list
set listSize to count of imgFileList

-- this repeat loop iterates through the list items. the current item is removed from the list once we're done with it
repeat while listSize > 0
	set randomNumber to (random number from 1 to listSize)
	set currentFile to item randomNumber of imgFileList
	
	-- display the image with qlmanage (with stdout and stderr redirected to /dev/null)
	do shell script "qlmanage -p \"" & currentFile & "\" > /dev/null 2>&1 &"
	
	-- waiting...
	delay advanceDelay
	
	-- kill qlmanage to avoid spamming the screen with its windows
	do shell script "killall qlmanage"
	
	-- set the current item to null (we're done with it)
	set item randomNumber of imgFileList to null
	
	-- remove non-text items from the list (i.e. the current item)
	set imgFileList to every text of imgFileList
	
	-- update the size of the list
	set listSize to count of imgFileList
end repeat

--currently there's no way to stop the script once it's running. it's not a problem for me because my favourite script launcher, FastScripts, provides an option to abort the current script.
