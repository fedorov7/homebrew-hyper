require 'formula'

class Cctools < Formula
  homepage ''
  url 'http://opensource.apple.com/tarballs/cctools/cctools-862.tar.gz'
  sha1 '1c47da83e853ce442f56151272c1be9420ed963c'

  def install
    prefix.install Dir['include']
    system "make", "install", "prefix=#{prefix}"
  end

  def test
    system "false"
  end
end
