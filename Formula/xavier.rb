class Xavier < Formula
  desc "Agent candidat Cerebro (surveillance d'épreuves)"
  homepage "https://github.com/CODA-SCHOOL-FRANCE/cerebro"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CODA-SCHOOL-FRANCE/cerebro/releases/download/agent-v0.1.2/Xavier-0.1.2-osx-arm64.zip"
      sha256 "a29c8319f53b0d1c78908cd056a99212a350087e1771c130c866330d89eb7af8"
    end
    on_intel do
      url "https://github.com/CODA-SCHOOL-FRANCE/cerebro/releases/download/agent-v0.1.2/Xavier-0.1.2-osx-x64.zip"
      sha256 "5d3f070aaa9a1585103249e377785a86b2f20eef65281d1be959c61e217dcfd7"
    end
  end

  on_linux do
    url "https://github.com/CODA-SCHOOL-FRANCE/cerebro/releases/download/agent-v0.1.2/Xavier-0.1.2-linux-x64.zip"
    sha256 "8f161b790a9bce5a39753b0b48f3f8eaec96df0abe430748067c525c5a405058"
  end

  def install
    bin.install "xavier"
  end

  test do
    assert_predicate bin/"xavier", :exist?
  end
end
