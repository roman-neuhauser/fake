class Fake < Formula
  desc "Mocks and Stubs For the Command Line"
  homepage "http:s//github.com/roman-neuhauser/fake"
  version "__VERSION__"
  url "https://github.com/roman-neuhauser/fake/archive/v#{version}.tar.gz"
  sha256 ""
  head "https://github.com/roman-neuhauser/fake.git"

  depends_on "basex"
  depends_on "cram" => :build

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "make", "check"
  end
end
