class Xavier < Formula
  desc "Agent candidat Cerebro (surveillance d'épreuves)"
  homepage "https://github.com/CODA-SCHOOL-FRANCE/cerebro"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CODA-SCHOOL-FRANCE/cerebro/releases/download/agent-v0.1.3/Xavier-0.1.3-osx-arm64.zip"
      sha256 "a1907327b8b00cc565a74adf765774b2d4f8be09d2124125998c358d43e69eb0"
    end
    on_intel do
      url "https://github.com/CODA-SCHOOL-FRANCE/cerebro/releases/download/agent-v0.1.3/Xavier-0.1.3-osx-x64.zip"
      sha256 "d8593cc46603485a8cb62dbb06ec2474750d6aa102266c2815a62f75814c8d49"
    end
  end

  on_linux do
    url "https://github.com/CODA-SCHOOL-FRANCE/cerebro/releases/download/agent-v0.1.3/Xavier-0.1.3-linux-x64.zip"
    sha256 "e5f5c50bd75960a310f527f5db11268a9432fc78dd2caf95831a61e2a5eb6b3c"
  end

  def install
    bin.install "xavier"
  end

  test do
    assert_predicate bin/"xavier", :exist?
  end
end
