class Xavier < Formula
  desc "Agent candidat Cerebro (surveillance d'épreuves)"
  homepage "https://github.com/CODA-SCHOOL-FRANCE/cerebro"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CODA-SCHOOL-FRANCE/cerebro/releases/download/agent-v0.1.4/Xavier-0.1.4-osx-arm64.zip"
      sha256 "8160e0127d5c5e7de24484c2ee9eeaaf48a6fbffcc8f62847eed9c64f5f851ee"
    end
    on_intel do
      url "https://github.com/CODA-SCHOOL-FRANCE/cerebro/releases/download/agent-v0.1.4/Xavier-0.1.4-osx-x64.zip"
      sha256 "67c4fa4e52c1ad7578ceb851b5861a5ded37b61c9a37dd3b6a84b55f82a9da1e"
    end
  end

  on_linux do
    url "https://github.com/CODA-SCHOOL-FRANCE/cerebro/releases/download/agent-v0.1.4/Xavier-0.1.4-linux-x64.zip"
    sha256 "f3da77617300aad5ac78b8c82c8c71840934860af077ec585355cd30bf3b894c"
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
