#!/bin/bash
filesize=$(stat -c %s "$1")
echo "File size = $filesize"