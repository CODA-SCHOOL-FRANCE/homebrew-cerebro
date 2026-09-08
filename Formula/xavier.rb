class Xavier < Formula
  desc "Agent candidat Cerebro (surveillance d'épreuves)"
  homepage "https://github.com/CODA-SCHOOL-FRANCE/cerebro"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CODA-SCHOOL-FRANCE/cerebro/releases/download/v0.2.2/Xavier-0.2.2-osx-arm64.zip"
      sha256 "e23f6242df300f5082eb885ad0312b5e18272f81a4bb15c12d8d51901cb9db7a"
    end
    on_intel do
      url "https://github.com/CODA-SCHOOL-FRANCE/cerebro/releases/download/v0.2.2/Xavier-0.2.2-osx-x64.zip"
      sha256 "2d1a5e83773a83987aae1bf63fab28ea30c53f56508642a35ae42a4d8084b997"
    end
  end

  on_linux do
    url "https://github.com/CODA-SCHOOL-FRANCE/cerebro/releases/download/v0.2.2/Xavier-0.2.2-linux-x64.zip"
    sha256 "d83d546464903bfe0f20a94706d4c4a00a3457a64fb4ab1d435ad1e8dd897a55"
  end

  def install
    bin.install "xavier"
    # Champs à null par défaut (docs/xavier.config.json) : tant qu'il n'est pas édité par
    # le surveillant, l'agent retombe sur les prompts interactifs (voir Program.cs,
    # AgentConfigFile.Load(AppContext.BaseDirectory) - même dossier que le binaire).
    bin.install "xavier.config.json"
  end

  def caveats
    <<~EOS
      Un xavier.config.json a été déposé à côté du binaire (#{bin}) : si votre
      surveillant vous a communiqué les valeurs de la session, éditez-le pour ne plus
      avoir à les saisir à chaque lancement (sinon, laissez-le tel quel - xavier les
      redemandera simplement).
    EOS
  end

  test do
    assert_predicate bin/"xavier", :exist?
  end
end
