require 'formula'

class Beluga < Formula
  homepage 'https://github.com/cortexmedia/Beluga'
  head 'https://github.com/cortexmedia/Beluga.git'

  depends_on "docker" => :recommended
  depends_on "boot2docker" => :recommended

  def install
    bin.install "bin/beluga" => "beluga"
  end
end
