#!/bin/bash

makepkg -sfc

makepkg --printsrcinfo > .SRCINFO
