#!/bin/bash

tiled () {
    if [[ $(bsp-layout layouts | grep 'tiled') == *tiled* ]]; then
        bsp-layout next --layouts tall && dunstify --timeout=1000 'Tall Layout'
    fi
}
tall () {
    if [[ $(bsp-layout get | grep 'tall') == *tall* ]]; then
        bsp-layout next --layouts even && dunstify --timeout=1000 'Even Layout'
    fi
}
even () {
    if [[ $(bsp-layout get | grep 'even') == *even* ]]; then
        bsp-layout next --layouts rwide && dunstify --timeout=1000 'Rwide Layout'
    fi
}
rwide () {
    if [[ $(bsp-layout get | grep 'rwide') == *rwide* ]]; then
        bsp-layout next --layouts tiled && dunstify --timeout=1000 'Tiled Layout'
    fi
}

tiled & tall & even & rwide
