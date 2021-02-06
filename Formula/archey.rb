class Archey < Formula
  desc "Graphical system information display for macOS"
  homepage "https://github.com/zackintosh/archey-osx/"
  license "GPL-2.0-or-later"
  revision 1
  head "https://github.com/zackintosh/archey-osx.git"

  stable do
    url "https://github.com/zackintosh/archey-osx/archive/1.7.0.tar.gz"
    sha256 "3fb4c86beee04fed02575121271e1e4b389988240cdf7403218f21c243e582fe"
  end

  bottle :unneeded

  def install
    bin.install "bin/archey"
  end

  test do
    assert_match "Archey macOS 1", shell_output("#{bin}/archey --help")
  end
end
