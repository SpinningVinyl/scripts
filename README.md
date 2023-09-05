## A collection of random scripts for Linux

This repository contains some of the scripts that I have written for my personal use over the years.

The scripts are nothing special: I'm not a scripting guru, I'm just a guy who likes to create small snippets of code to automate some of his tasks.

### ios-browse-afc

This script uses `ifuse`, `libimobiledevice` and `fzf` to present the user with the list of applications installed on their iDevice. Once the user chooses an app, its document filesystem is mounted in the folder specified in `$MOUNT_POINT`. The script then opens a file manager window at the mount point, and automatically unmounts the filesystem once the user closes the window.

### ios-browse-media

Mounts the media filesystem of the iDevice connected to the computer in the folder specified in `$MOUNT_POINT`. The script then opens a file manager window at the mount point, and automatically unmounts the filesystem once the user closes the window. 

### cmpr

This script compares two files using diff.

### gsearch

This script asks the user for a search query and opens it in Firefox. The search engine is selected based on the prefix. `g:` stands for Google, `gs:` for Google Scholar, `gi:` for Google Image Search, `w:` for Wikipedia, `so:` for Stack Overflow. By default the script uses DuckDuckGo. 

This script requires either `zenity` or `kdialog` to be installed.

### clipsearch

`clipsearch` takes the contents of the clipboard and opens a web search
for it in Mozilla Firefox. The search engine used is specified by the
parameter passed to the script. If there is no parameter or the
parameter is not recognized, the script uses DuckDuckGo. 

This script automatically uses either `xclip` or `wl-clipboard` depending on `$XDG_SESSION_TYPE`.

### urlcleaner

This script takes an URL from the clipboard, removes tracking parameters
(everything after the question mark) and copies the cleaned-up URL back
to the clipboard.

Alternatively, if the script is called with the parameter `go`, it will
open the cleaned-up URL in Firefox instead of copying it to the
clipboard.

### passgen
Generates a strong password and copies it to the clipboard. It automatically uses `xclip` or `wl-clipboard` depending on `$XDG_SESSION_TYPE`.

## License

These scripts are free for personal non-commercial use. Any and all derivative works must be released under the same conditions. You must also credit me as the author of the original code upon which your code is based.
