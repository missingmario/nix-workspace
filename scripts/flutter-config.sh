#!/bin/sh

flutter --disable-analytics

flutter config \
	--no-enable-web \
	--no-enable-linux-desktop \
	--no-enable-macos-desktop \
	--no-enable-windows-desktop \
	--no-enable-fuchsia
