class Batler < Formula
  desc "CLI to run tests and display coverage for iOS applications"
  homepage "https://github.com/vitorbaraujo/batler"
  url "https://github.com/vitorbaraujo/batler/archive/0.3.0.tar.gz"
  sha256 "076fb75d2f783327ae6d76b5889060d682792158f34a74076428a8f6d5a8ba83"
  license "MIT"

  depends_on "go" => :build

  def install
    system "make", "build"
    bin.install "build/batler"
  end
end
