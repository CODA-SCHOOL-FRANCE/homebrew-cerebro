class Xavier < Formula
  desc "Agent candidat Cerebro (surveillance d'épreuves)"
  homepage "https://github.com/CODA-SCHOOL-FRANCE/cerebro"
  version "0.1.1"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/CODA-SCHOOL-FRANCE/xavier-releases/releases/download/agent-v0.1.1/Xavier-0.1.1-osx-arm64.zip"
      sha256 "1e8d071d35c081fecfe247399f4730474ffec07bc16a8d2e3e4bd38fd0d1ff80"
    end
    on_intel do
      url "https://github.com/CODA-SCHOOL-FRANCE/xavier-releases/releases/download/agent-v0.1.1/Xavier-0.1.1-osx-x64.zip"
      sha256 "ecd3f81d4e40c4fbf23fdcec10a31c91381327a45c9df0e506ba535e8cae2754"
    end
  end

  on_linux do
    url "https://github.com/CODA-SCHOOL-FRANCE/xavier-releases/releases/download/agent-v0.1.1/Xavier-0.1.1-linux-x64.zip"
    sha256 "98f71a4a52abf769e0057960dc18378317484cea6f5e182c3d4fff6930cac1d0"
  end

  def install
    bin.install "xavier"
  end

  test do
    assert_predicate bin/"xavier", :exist?
  end
end
