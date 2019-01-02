try
	set wlanInterface to do shell script "networksetup -listallhardwareports | awk '/Wi-Fi/{getline; print $2}'"
on error
	display dialog "Something went wrong... (1)" buttons {"Ok"}
end try
try
	set wirelessStatus to do shell script "networksetup -getairportpower " & wlanInterface
on error
	display dialog "Something went wrong... (2)" buttons {"Ok"}
end try

if wirelessStatus is "Wi-Fi Power (" & wlanInterface & "): On" then
	do shell script "networksetup -setairportpower " & wlanInterface & " off"
else if wirelessStatus is "Wi-Fi Power (" & wlanInterface & "): Off" then
	do shell script "networksetup -setairportpower " & wlanInterface & " on"
else
	display dialog "Something went wrong... (3)" buttons {"Ok"}
end if
