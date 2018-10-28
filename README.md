Small Tool Collection
=====================

Tools I use to ease my work, not big enough to bless them with an
dedicate project, but maybe enough to be of interest to others too.


alice-box-control
-----------------
Controls an Alice DSL Router Box
Supported type: o2 Box 4421, o2 Box 6132

Actions
- Login to maintenance web page
- Turn WiFi On/Off

Language: Bash


etrex30
-------
Wrapper around various Garmin etrex (30) tasks

Commands
- Download a GPS Track
- Download a list of points
- Download an OSM Map
- Combine a OSM Map with Topographic overlay and download it
- Beautify/Make a GPX file human-readable

Language: Bash


map2navi
--------
Put a route to a GPS Handheld

The route is simplified to contain less points on the way

Input can be a Google Maps URL or a GPX file

Language: Bash


igc2gpx
--------
Convert a IGC track to GPX, keeping only the GPS data

Language: Bash


thunderbirdcsv2vcard
--------------------
Converts Thunderbird Addressbook Export from CSV to VCard format.
The VCard file then can be used e.g. to import the contacts into an Android phone
addressbook.

Language: Python 3


clip-curdir, clip-filename
--------------------------
Copy the current directory (clip-curdir) or the
complete file name with path (clip-filename)
to the middle-click clipboard.

Language: Bash


geocaching2navi
---------------
Puts geocaching LOC files (from geocaching.com) to your
GPS handheld, saving you the hassle to input them manually.

Language: Bash


GPScorrelate
------------
Use gpscorrelate to annotate all pictures in the current
directory with GPS positions, determine time offset from a picture
of your GPS handheld

Language: Python 2

Requires: PIL


shrink-vids
-----------
Re-encode movies taken from digital cameras to significantly shrink the file size
with only a small loss of quality
Resutling files are in MPEG4 format, the bitrate is determined by the input
movie width. Please modify/add in the file your favourite values.

Language: Bash

Requires: mplayer, mencoder


scanaudio
---------
scanaudio reads a directory structure of music files and
print the found albums to standard out in form of a comma separated list.
The output can be redirected to create a CSV-file of a music collection.
Supported Types are flac (metaflac), Ogg Vorbis (vorbiscomment) and
mp3 (id3v2) files.

Language: Perl

Requires: metaflac, vorbiscomment, id3v2


Compare-PDF
-----------
Compares two PDF files page by page.

Language: Bash

Requires: Imagemagick


Gitmode.bash
------------
Git Helper; Prepares a "Git-Bash" with git-prompt and git-bash-completions

Language: Bash

Requires: git (obviously)


g-mergebranch
-------------
Git Helper; Merges a branch and performs branch cleanup afterwards

Language: Bash

Requires: git


start_minimized
----------------
Starts a program minimized  
Original Source: https://askubuntu.com/questions/663187/how-can-i-run-a-program-on-startup-minimized

Language: Python 3


gpg-agent-wrapper
-----------------
Wrapper for gnupg2's gpg-agent (gpg secret key handling daemon) to kill itself after 30 min.
Otherwise it will linger forever around in memory, which I don't like.

Enable in ~/.gnupg/gpg.conf:
agent-program PREFIX/gpg-agent-wrapper

Language: Bash

Requires: gpg-agent > 2


dirmngr-wrapper
---------------
Wrapper for gnupg2's dirmngr (gpg keyserver access daemon) to kill itself after 1 min.
Otherwise it will linger forever around in memory, which I don't like.

Enable in ~/.gnupg/gpg.conf:
dirmngr-program PREFIX/dirmngr-wrapper

Language: Bash

Requires: dirmngr > 2
