#!/usr/bin/env bash

#Created sub-folders for the file and project templates
mkdir -p ~/Library/Developer/Xcode/Templates/File\ Templates
mkdir -p ~/Library/Developer/Xcode/Templates/Project\ Templates

#Copy template to the sub-folder
cp -r MVVM\ App.xctemplate ~/Library/Developer/Xcode/Templates/Project\ Templates