require 'formula'

class Cctools < Formula
  homepage ''
  url 'http://opensource.apple.com/tarballs/cctools/cctools-862.tar.gz'
  sha1 'b5fcc2273b1a5f487cb553e4758ad2ddd94a1152'

  def install
    prefix.install Dir['include']
  end

  def test
    system "false"
  end
end
