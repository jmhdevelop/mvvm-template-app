#!/usr/bin/env bash
red='\e[1;31m%s\e[0m\n'
green='\e[1;32m%s\e[0m\n'
yellow='\e[1;33m%s\e[0m\n'
blue='\e[1;34m%s\e[0m\n'

#Created sub-folders for the file and project templates
printf "$blue" "📝 Created sub-folders for the file and project templates"
# 1- Files templates
if [ ! -d "~/Library/Developer/Xcode/Templates/File\ Templates" ] 
then
    mkdir -p ~/Library/Developer/Xcode/Templates/File\ Templates
    printf "$green" "✅ Created folder for files templates."
fi

# 2- Project templates
if [ ! -d "~/Library/Developer/Xcode/Templates/Project\ Templates" ] 
then
    mkdir -p ~/Library/Developer/Xcode/Templates/Project\ Templates
    printf "$green" "✅ Created folder for projects templates."
fi

printf "\n"

#Download project
printf "$blue" "📝 Download project from GitHub"
printf "--- \e[1;34mDownloaded project.\e[m\n"
git clone https://github.com/jmhdevelop/mvvm-template-app
printf "$green" "✅ Downloaded project."
printf "\n"

#Copy templates to the sub-folder
printf "$blue" "📝 Copy templates to the sub-folder"
cd mvvm-template-app
cp -r MVVM\ App.xctemplate ~/Library/Developer/Xcode/Templates/Project\ Templates
printf "$green" "✅ Copy MVVM App template to Project Templates."
printf "\n"

#Remove GitHub project
printf "$blue" "📝 Remove GitHub project"
cd ..
rm -rf mvvm-template-app
printf "$green" "✅ Removed GitHub project"

printf "\n"
printf "$green" "🎉 Congrats you have all the templates install!"
