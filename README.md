homebrew-cctools
==============

Install homebrew on your mac. Details can be found here: https://github.com/mxcl/homebrew/wiki/Installation


    /usr/bin/ruby -e "$(/usr/bin/curl -fsSL https://raw.github.com/mxcl/homebrew/master/Library/Contributions/install_homebrew.rb)"

Update brew and have the brew doctor check your environment.

    brew update
    brew doctor

Tap into the hyper repository and install hyper. Check for caveats, you might need to install gcc by hand.

    brew tap fedorov7/hyper
    brew install cctools
