class Batler < Formula
  desc "CLI to run tests and display coverage for iOS applications"
  homepage "https://github.com/vitorbaraujo/batler"
  url "https://github.com/vitorbaraujo/batler/archive/0.2.0.tar.gz"
  sha256 "c966f65ff0f7236dc1e614d3d61bdef8548e8035d0e5b8f73c0d327c4bec3757"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "build/batler", "./cmd/batler/"
    bin.install "build/batler"
  end
end
