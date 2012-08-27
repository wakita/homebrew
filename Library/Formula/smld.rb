require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook

class Smld < Formula
  url 'http://smartnova.net/~wakita/files/2012/smld-0.1.tgz'
  md5 'dfcdc491f820e92fcb3ef3e7c18a6abd'
  homepage 'http://smartnova.net/~wakita/files/2012/smld-0.1.tgz'

  # depends_on 'cmake' => :build

  def install
    # system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    # system "cmake . #{std_cmake_parameters}"
    # system "make install" # if this fails, try separate make/make install steps
    # system "cp -r lib samples #{prefix}"
    prefix.install Dir[ '*' ]
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test smld`.
    # system "false"
  end
end
