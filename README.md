# youtube-music-library
youtube-dl frontend to automatically extract and organize YouTube music.

## Motivation
Some independent artists host their music on YouTube only, either in a music video or an audio only video. `youtube-dl` requires a lot of command-line options and some post-processing to extract audio and organize YouTube music. I made this script to make this task easier.

## How to use
* Make a list of YouTube channels/playlists in a text file.
* Run:
    ```bash
    ./script.sh YOUR_TEXT_FILE
    ```
* Music files will be downloaded and organized in your current working directory.
