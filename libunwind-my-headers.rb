require 'formula'

class LibunwindMyHeaders < Formula
  homepage ''
  url 'http://opensource.apple.com/tarballs/libunwind/libunwind-30.tar.gz'
  sha1 'e779fbe8a58e6cfb76798c8e9b2373a9ddc9b2eb'

  def install
    prefix.install Dir['include']
    system "mkdir libunwind"
    system "mv src/*.h* libunwind/"
    (HOMEBREW_PREFIX/"include").install Dir['libunwind']
  end

  def test
    system "false"
  end
end
