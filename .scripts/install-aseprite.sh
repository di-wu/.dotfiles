#!/bin/bash
# https://github.com/aseprite/aseprite/blob/master/INSTALL.md#get-the-source-code

sudo apt-get install python g++ cmake ninja-build libx11-dev libxcursor-dev libxi-dev libgl1-mesa-dev libfontconfig1-dev

mkdir $HOME/.aseprite
cd $HOME/.aseprite

# Skia
mkdir deps
cd deps

git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
git clone -b aseprite-m81 https://github.com/aseprite/skia.git
export PATH="${PWD}/depot_tools:${PATH}"
cd skia
python tools/git-sync-deps
gn gen out/Release-x64 --args="is_debug=false is_official_build=true skia_use_system_expat=false skia_use_system_icu=false skia_use_system_libjpeg_turbo=false skia_use_system_libpng=false skia_use_system_libwebp=false skia_use_system_zlib=false"
ninja -C out/Release-x64 skia modules

# Aseprite
if [ -d "$HOME/.aseprite/git/aseprite" ]; then
  cd "$HOME/.aseprite/git/aseprite"
  git pull
  git submodule update --init --recursive
else
  mkdir -p "$HOME/.aseprite/git"
  cd "$HOME/.aseprite/git"
  git clone --recursive https://github.com/aseprite/aseprite.git
fi

cd $HOME/.aseprite

cmake \
  -DCMAKE_BUILD_TYPE=RelWithDebInfo \
  -DLAF_BACKEND=skia \
  -DSKIA_DIR=$HOME/.aseprite/deps/skia \
  -DSKIA_LIBRARY_DIR=$HOME/.aseprite/deps/skia/out/Release-x64 \
  -DSKIA_LIBRARY=$HOME/.aseprite/deps/skia/out/Release-x64/libskia.a \
  -G Ninja \
  git/aseprite

ninja aseprite

