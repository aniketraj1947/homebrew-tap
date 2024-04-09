class QuickMac < Formula
  desc "An interactive app-centric network & system analytics tool"
  homepage "https://github.com/aniketraj1947/quick-mac"
  url "https://github.com/aniketraj1947/quick-mac/releases/download/v1.0/quick.mac-0.0.1-SNAPSHOT.jar"
  sha256 "62b28b070c72bf48ce986b370fd1fbae76d2653a75126aa30cf164be92836ef4"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install "quick.mac-0.0.1-SNAPSHOT.jar"
    bin.write_jar_script libexec/"quick.mac-0.0.1-SNAPSHOT.jar", "quick-mac"
  end

  test do
    system "#{bin}/quick-mac", "--version"
  end
end
