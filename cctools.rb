require 'formula'

class Cctools < Formula
  homepage "https://opensource.apple.com/"
  url 'http://opensource.apple.com/tarballs/cctools/cctools-862.tar.gz'
  sha1 '1c47da83e853ce442f56151272c1be9420ed963c'

  keg_only :provided_by_osx

  depends_on "cctools-headers" => :build
  depends_on "llvm-headers" => :build

  def install
    system "make"
    system "make install"
  end

  def test
    system "false"
  end
end
