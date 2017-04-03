class Bithook < Formula
  desc "A Bitcoin Webhook CLI"
  homepage "https://github.com/alfg/bithook"
  url "https://github.com/alfg/bithook/archive/0.0.2.tar.gz"
  version "0.0.2"
  sha256 "1e6d21d93b40540f16aa1c46f957e9cdf6180e85e666a520fac887319c78a3d5"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath

    system "go", "get", "github.com/gorilla/websocket"
    system "go", "build", "-o", "bithook"
    bin.install "bithook"
  end

  test do
    system "#{bin}/bithook"
  end
end
