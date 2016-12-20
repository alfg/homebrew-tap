class Bithook < Formula
  desc "A Bitcoin Webhook CLI"
  homepage "https://github.com/alfg/bithook"
  url "https://github.com/alfg/bithook/archive/0.0.1.tar.gz"
  version "0.0.1"
  sha256 "d7dd7a8341a61249d3569bfb73d5564fa7949a785e5a75ff7a86d62482c9ee1a"

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
