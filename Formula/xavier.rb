class Xavier < Formula
  desc "Agent candidat Cerebro (surveillance d'épreuves)"
  homepage "https://github.com/CODA-SCHOOL-FRANCE/cerebro"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CODA-SCHOOL-FRANCE/cerebro/releases/download/v0.2.3/Xavier-0.2.3-osx-arm64.zip"
      sha256 "39da667c803d3f65a91411f2fe62d75b84eee688d06a1c1c274bd57280c177a3"
    end
    on_intel do
      url "https://github.com/CODA-SCHOOL-FRANCE/cerebro/releases/download/v0.2.3/Xavier-0.2.3-osx-x64.zip"
      sha256 "a4dc0709572ac9262611a9312517804954c01ec8abcce712884f8faed48e1121"
    end
  end

  on_linux do
    url "https://github.com/CODA-SCHOOL-FRANCE/cerebro/releases/download/v0.2.3/Xavier-0.2.3-linux-x64.zip"
    sha256 "b95e35ac5ff1c4d128d0dd4d719cb287b82a9b2a54a20f980fea603b167df80b"
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
