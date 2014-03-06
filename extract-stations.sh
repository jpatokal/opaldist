#!/bin/bash
# Extract alphabetized, unique list of stations from Tracks.hs,
# ready to cut'n'paste into Stations.hs
{ grep '^    (' src/Opal/Distance/Tracks.hs | sed 's/.*(\([^,]*\),\(.*\)/    | \1/'; cat <<EOF
    | Central
    | TownHall
    | Wynyard
    | CircularQuay
    | MartinPlace
    | KingsCross
    | StJames
    | Museum
EOF
} | sort | uniq

