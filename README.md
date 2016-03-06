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

Language: Python v3


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

Gitmode.bash
------------
Prepares a "Git-Bash" with git-prompt and git-bash-completions

Language: Bash

Requires: git (obviously)

Compare-PDF
-----------
Compares two PDF files page by page.

Language: Bash

Requires: Imagemagick
