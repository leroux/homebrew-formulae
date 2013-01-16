require 'formula'

class Libfc < Formula
  homepage 'https://github.com/leroux/libfc'
  url 'https://github.com/leroux/libfc/tarball/v0.1a'
  version "v0.1a"
  sha1 '6ca2ef3f744d18e0c2d265617014c0e5623fa3bd'

  head 'https://github.com/leroux/libfc.git'

  def install
    lib.mkpath
    include.mkpath
    system "make install libdir=#{lib} includedir=#{include}"
  end

  def test
    system "make test"
  end
end
