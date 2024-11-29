#!/bin/bash
copy_lib() {
    pushd $1
    ls $1  | grep -xv "build" | xargs -I{}  cp -r ./{} "$2"
    popd
}


script_dir=$(dirname "$(readlink -f "$0")")
copy_lib $script_dir/../thirdlib/libsrtp /usr/
copy_lib $script_dir/../thirdlib/ffmpeg /usr/
