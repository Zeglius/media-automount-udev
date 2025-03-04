#!/usr/bin/env just --justfile

export makeself := require('makeself')

_default:
    @just --list

build OUTFILE="install.run":
    $makeself --needroot src "{{ OUTFILE }}" media-automount-udev cp -vr ./. /
