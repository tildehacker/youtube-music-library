#!/usr/bin/env bash

if ! [ -z "${1}" ] \
        && [ -f "${1}" ]
then
    input="${1}"	
else
    echo "Usage:"
    echo -e "\t${0} <input.list>"
    exit 1
fi

while read link
do
    # TODO: Is youtube-dl installed?
    youtube-dl --extract-audio \
               --audio-format "mp3" \
               --output "%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s" \
               --ignore-errors \
               --embed-thumbnail \
               --add-metadata \
               --no-overwrites \
               --verbose \
               --continue \
               "${link}"
done < "${input}"
