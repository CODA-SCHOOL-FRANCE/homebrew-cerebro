class Xavier < Formula
  desc "Agent candidat Cerebro (surveillance d'épreuves) — placeholder, régénéré automatiquement à chaque release"
  homepage "https://github.com/CODA-SCHOOL-FRANCE/cerebro"
  version "0.0.0"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/CODA-SCHOOL-FRANCE/xavier-releases/releases/download/agent-v0.1.0/Xavier-0.1.0-osx-arm64.zip"
      sha256 "0000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/CODA-SCHOOL-FRANCE/xavier-releases/releases/download/agent-v0.1.0/Xavier-0.1.0-osx-x64.zip"
      sha256 "0000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    url "https://github.com/CODA-SCHOOL-FRANCE/xavier-releases/releases/download/agent-v0.1.0/Xavier-0.1.0-linux-x64.zip"
    sha256 "0000000000000000000000000000000000000000000000000000000000000"
  end

  def install
    bin.install "xavier"
  end

  test do
    assert_predicate bin/"xavier", :exist?
  end
end
