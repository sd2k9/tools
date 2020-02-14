Git Helpers
===========

All git helpers requires: git (obviously)


Directory config/
-----------------
Put (or link) these files into your configuration directory at  
~/.config/git


### .gitconfig
Git configuration file,
you want to check and maybe make some local adaptions.


### config.local
Git configuration file, local part. This can differ for each user/machine.  
Adapt and put into your configuration directory.


### ignore
Git ignore file,
maybe you want to make some local adaptions too.

### attributes
Git attributes, installs custom Excel textdiff, see below


Gitmode.bash
------------
Git Helper; Prepares a "Git-Bash" with git-prompt and git-bash-completions

Language: Bash


g-mergebranch
-------------
Git Helper; Merges a branch and performs branch cleanup afterwards

Language: Bash


g-subrm
-------
Git Helper; Removes a submodule

Language: Bash


g-diff-excel
------------
Text representation of Excel sheets for text diff, see below

Language: Bash

Requires: xlsx2csv


g-diff-libreoffice
-------------------
Difftool entry for libreoffice, see below

Language: Bash

Requires: libreoffice


Diffing Excel Spreadsheets
--------------------------
Usually you want to avoid having binary files in Git.  
But in some circumstances especially Excel spreadsheets are
helpful for presenting information and doing calculcation in an easy way.

To allow some way of seeing changes in these kind of documents two methods are available.

### Libre office as custom diff-tool
- Opens the new document and prints instructions how to compare documents in Libreoffice
- Suitable for all formats understood by Libreoffice
- Invoke with  
  git difftool --tool lo
- Setup
  - [Git config file](config/config): Section [difftool "lo"]
  - Tool [g-diff-libreoffice](#g-diff-libreoffice)

### Text representation of Excel documents
- Convert all sheets in Excel document into CSV files for textual diff
- Automatically invoked for every diff concerning XLSX files
  - Disable with "--no-textconv", e.g. for many diffs (runtime)
- Setup
  - [Git attributes file](config/attributes): "*.xlsx   diff=excel"
  - [Git config file](config/config): Section [diff "excel"]
  - Tool [g-diff-excel](#g-diff-excel)
