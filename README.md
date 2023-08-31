## A collection of random scripts for Linux

This repository contains some of the scripts that I have written for my personal use over the years.

The scripts are nothing special: I'm not a scripting guru, I'm just a guy who likes to create small snippets of code to automate some of his tasks.

#### Shell scripts

* **cmpr** — compare two files using diff.
* **gsearch** — this script asks the user for a search query and automatically opens it in Firefox. The search engine is selected based on the prefix, `g:` stands for Google, `gs:` for Google Scholar, `gi:` for Google Image Search, `w:` for Wikipedia. By default the script uses DuckDuckGo.
* **passgen** — generate a strong password and copy it to the clipboard. It automatically uses `xclip` or `wl-clipboard` depending on `$XDG_SESSION_NAME`.

### License

These scripts are free for personal non-commercial use. Any and all derivative works must be released under the same conditions. You must also credit me as the author of the original code upon which your code is based.
