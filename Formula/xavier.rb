class Xavier < Formula
  desc "Agent candidat Cerebro (surveillance d'épreuves)"
  homepage "https://github.com/CODA-SCHOOL-FRANCE/cerebro"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CODA-SCHOOL-FRANCE/cerebro/releases/download/v0.2.1/Xavier-0.2.1-osx-arm64.zip"
      sha256 "a390080c3c422481dc1c750d5b1f0b61a7c2b3525f86592a5058e6c274158ab4"
    end
    on_intel do
      url "https://github.com/CODA-SCHOOL-FRANCE/cerebro/releases/download/v0.2.1/Xavier-0.2.1-osx-x64.zip"
      sha256 "5515d597fd37387ac91b23a995562e65069dc809ce8391f4f14b5acd5412fdc2"
    end
  end

  on_linux do
    url "https://github.com/CODA-SCHOOL-FRANCE/cerebro/releases/download/v0.2.1/Xavier-0.2.1-linux-x64.zip"
    sha256 "1e0481bf6fb22acb12c9dbe6939f3cea527d4c3840a9ed4cb7887b800df3da1a"
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
