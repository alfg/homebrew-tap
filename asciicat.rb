class Asciicat < Formula
  desc "A Simple Image to ASCII Art Conversion Tool"
  homepage "https://github.com/alfg/asciicat"
  url "https://github.com/alfg/asciicat/archive/0.0.1.tar.gz"
  version "0.0.1"
  sha256 "288b5d7e33c23034d09107a3aab91102d442ec7385f11dca8b1ec5745677720c"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath

    system "go", "get", "github.com/nfnt/resize"
    system "go", "build", "-o", "asciicat"
    bin.install "asciicat"
  end

  test do
    system "#{bin}/asciicat"
  end
end
