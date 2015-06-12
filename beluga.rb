require 'formula'

class Beluga < Formula
  homepage 'https://github.com/cortexmedia/Beluga'
  # Use the tag instead of the tarball to get submodules
  url "https://github.com/cortexmedia/Beluga.git", :tag => "0.3"
  head "https://github.com/cortexmedia/Beluga.git"

  depends_on "docker-compose" => :recommended
  depends_on "docker" => :recommended
  depends_on "boot2docker" => :recommended

  def install
    prefix.install "lib"
    prefix.install "samples"
    prefix.install "img"
    prefix.install "scripts"
    bin.install "bin/beluga" => "beluga"
  end
end
