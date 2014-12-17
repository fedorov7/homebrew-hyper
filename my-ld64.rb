require 'formula'

class MyLd64 < Formula
  homepage ''
  url 'http://opensource.apple.com/tarballs/ld64/ld64-241.9.tar.gz'
  sha1 '979ae7ad57e03b1302fe6e042e0e99f86aa1632c'

  depends_on 'llvm-my-headers'
  depends_on 'dyld-my-headers'
  depends_on 'cctools-my-headers'
  depends_on 'libunwind-my-headers'

  def install
    system "xcodebuild -arch x86_64"
    bin.install "build/Release/ld"
    bin.install "build/Release/dyldinfo"
    bin.install "build/Release/rebase"
    bin.install "build/Release/unwinddump"
  end

  def test
    system "false"
  end
end
