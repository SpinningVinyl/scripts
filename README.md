## A collection of random scripts for Linux

This repository contains some of the scripts that I have written for my personal use over the years.

The scripts are nothing special: I'm not a scripting guru, I'm just a guy who likes to create small snippets of code to automate some of his tasks.

### ios-browse-afc

This script uses `ifuse`, `libimobiledevice` and `fzf` to present the user with the list of applications installed on their iDevice. Once the user chooses an app, its document filesystem is mounted in the folder specified in `$MOUNT_POINT`. The script then opens a file manager window at the mount point, and automatically unmounts the filesystem once the user closes the window.

### ios-browse-media

Mounts the media filesystem of the iDevice connected to the computer in the folder specified in `$MOUNT_POINT`. The script then opens a file manager window at the mount point, and automatically unmounts the filesystem once the user closes the window. 

### cmpr

This script compares two files using diff.

### fname_sanitizer

This script renames files to sanitize their names, that is:

- It removes all "invalid" characters from the file name. Invalid characters are anything that is not alphanumeric (as defined by your locale), `.` (period), `_` (underscore) and `-` (dash).
- It replaces all spaces in the filenames with underscores.

Usage:

```bash
fname_sanitizer <filename1> <filename2> <filename3> ...
```

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

### tstamp

This script reads the last modification date of the specified file and prepends it to the name of the file. If invoked without additional parameters, the date is formatted as "%Y-%m-%d". If invoked with the
optional parameter '-t', the date is formatted as "%Y-%m-&dT%H-%M".

For example, if you use:

```bash
tstamp abc.txt
```

The file will be renamed to `2023_09_01_abc.txt`.

But if you use:

```bash
tstamp abc.txt -t
```

Then the file will be renamed to `2023-09-01T07-40_abc.txt`.

### dstamp_all

A wrapper script for `tstamp` that will prepend the last modification date to the names of all files passed to it. Usage:

```bash
dstamp_all <filename1> <filename2> <filename3> ...
```

### tstamp_all

A wrapper script for `tstamp` that will prepend the last modification date *and time* to the names of all files passed to it. Usage:

```bash
tstamp_all <filename1> <filename2> <filename3> ...
```

## License

BSD 3-clause. See LICENSE.TXT for details.
