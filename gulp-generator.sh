#!/usr/bin/env bash
#Variables
COLORGREEN='\033[0;32m' # Green
COLORRED='\033[0;31m' # Red
NOCOLOR='\033[0m' # No Color
BOLD=$(tput bold) # Bold
GULPSCAFFOLDDIRECTORY=~/Documents/Builds/Scaffolds/gulp-project-scaffold # Scaffold Directory

cp $GULPSCAFFOLDDIRECTORY'/.editorconfig' ./
cp $GULPSCAFFOLDDIRECTORY'/.scss-lint.yml' ./
cp -R $GULPSCAFFOLDDIRECTORY'/typings' ./
cp -R $GULPSCAFFOLDDIRECTORY'/src' ./
cp $GULPSCAFFOLDDIRECTORY'/.babelrc' ./
cp $GULPSCAFFOLDDIRECTORY'/.gitignore' ./
cp $GULPSCAFFOLDDIRECTORY'/gulp.config.json' ./
cp $GULPSCAFFOLDDIRECTORY'/tslint.json' ./
cp $GULPSCAFFOLDDIRECTORY'/tsconfig.json' ./
cp $GULPSCAFFOLDDIRECTORY'/gulpfile.babel.js' ./

# Install NPM Dependencies
if [ ! -f ./package.json ];
  then
    echo -e "${COLORRED}${BOLD}ERROR: No package.json found${NOCOLOR}"
    npm init
    npm install gulp-tasks-scaffold --save-dev
    npm install gulp --save-dev
    npm install bootstrap-sass --save
    npm install bootstrap --save
    npm install jquery --save
    npm install react --save
    npm install react-dom --save
  else
    echo -e "${COLORGREEN}package.json found!"
    echo -e "${COLORGREEN}Installing npm dependencies..."
    npm install gulp-tasks-scaffold --save-dev
    npm install gulp --save-dev
    npm install bootstrap-sass --save
    npm install bootstrap --save
    npm install jquery --save
    echo -e "${COLORGREEN}NPM dependencies installed";
fi

# Install Typescript Dependencies
if [ ! -f ./typings.json ];
  then
    echo -e "${COLORRED} No typings.json found"
    typings init
    typings install dt~bootstrap --global --save
    typings install dt~jquery --global --save
    typings install react --save
    typings install react-dom --save;
  else
    typings install dt~bootstrap --global --save
    typings install dt~jquery --global --save
    typings install react --save
    typings install react-dom --save;
fi
echo -e "${COLORGREEN}${BOLD}Gulp Setup: Files Copied"
echo -e "${COLORGREEN}Scaffolding for Gulp Project Completed"
