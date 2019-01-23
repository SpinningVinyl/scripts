## A collection of random scripts for macOS

This repository contains some of the scripts that I have written for my personal use over the years.

The scripts are nothing special: I'm not a scripting guru, I'm just a guy who likes to create small snippets of code to automate some of his tasks.

#### Shell scripts

* **wifi** — this script allows you to control the Wi-Fi adapter built into your Mac programmatically.
* **desktop** — this script toggles desktop icons on and off.
* **ql** — invoke Quick Look from CLI.

#### AppleScript

* **Toggle Wifi.applescript** — this AppleScript toggles system Wi-Fi on and off. Best used with a launcher, e.g. Keyboard Maestro or FastScripts.
* **ResetAudioOutput.applescript** — this script sets the system audio output to `audioOutput` and output volume to `defaultVolume`. You can set these properties at the beginning of the file to suit your needs. I use this script to mitigate the effects of a very annoying bug where macOS would occasionally shift the audio balance to the right or to the left upon waking from sleep.
* **FolderSlideshow.applescript** — this script will display image files from a user-selected folder in random order (with user-selected delay).

### License

These scripts are free for personal non-commercial use. Any and all derivative works must be released under the same conditions. You must also credit me as the author of the original code upon which your code is based.
