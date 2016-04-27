#!/bin/sh

echo -n "OS detect: "
case "$(uname -s)" in
   Linux)
     echo 'Linux'
     sudo add-apt-repository -y llvm-toolchain-trusty
     sudo apt-get update -q
     sudo apt-get install -y clang-3.8
     ;;
   Darwin)
     echo 'Mac'; ;;
   CYGWIN*)
     echo 'Windows'; ;;
   *BSD*)
     echo 'BSD'; ;;
esac

