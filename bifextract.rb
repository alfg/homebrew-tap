class Bifextract < Formula
  desc "A CLI utility for extracting images from a BIF file."
  homepage "https://github.com/alfg/bifextract"
  url "https://github.com/alfg/bifextract/archive/0.1.0.tar.gz"
  version "0.1.0"
  sha256 "1682eeb26422468ccc37a1f0dd20fd8bab8099e4c7efeb4f9bf3dcb7863d3383"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath

    system "go", "build", "-o", "bifextract"
    bin.install "bifextract"
  end

  test do
    system "#{bin}/bifextract"
  end
end
