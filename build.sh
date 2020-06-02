#!/bin/bash

makepkg -fc

makepkg --printsrcinfo > .SRCINFO
