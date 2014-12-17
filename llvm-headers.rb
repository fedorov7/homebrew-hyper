require 'formula'

class LlvmHeaders < Formula
  homepage 'http://llvm.org/'

  bottle do
    revision 1
    sha1 "29ba25a9a3c2217c6f1e1bae670bb35d450f629a" => :yosemite
    sha1 "07f8b675aa98c79a3058f1b51b2ba3e3f33e2875" => :mavericks
    sha1 "5f31150228cbbee9294a8396bf69af756b7d33b3" => :mountain_lion
  end

  stable do
    url "http://llvm.org/releases/3.5.0/llvm-3.5.0.src.tar.xz"
    sha1 "58d817ac2ff573386941e7735d30702fe71267d5"

    resource "clang" do
      url "http://llvm.org/releases/3.5.0/cfe-3.5.0.src.tar.xz"
      sha1 "834cee2ed8dc6638a486d8d886b6dce3db675ffa"
    end

    resource "lld" do
      url "http://llvm.org/releases/3.5.0/lld-3.5.0.src.tar.xz"
      sha1 "13c88e1442b482b3ffaff5934f0a2b51cab067e5"
    end
  end

  head do
    url "http://llvm.org/git/llvm.git"

    resource "clang" do
      url "http://llvm.org/git/clang.git"
    end

    resource "lld" do
      url "http://llvm.org/git/lld.git"
    end
  end

  keg_only :provided_by_osx

  def install
    local = "#{HOMEBREW_PREFIX}/include"
    include.install Dir["include/*"]
    local.install_symlink Dir["#{include}/*"]
  end

  def caveats
    <<-EOS.undent
      LLVM headers are installed in #{prefix}.
    EOS
  end
end
