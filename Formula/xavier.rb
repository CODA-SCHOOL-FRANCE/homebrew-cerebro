class Xavier < Formula
  desc "Agent candidat Cerebro (surveillance d'épreuves)"
  homepage "https://github.com/CODA-SCHOOL-FRANCE/cerebro"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CODA-SCHOOL-FRANCE/cerebro/releases/download/v0.2.4/Xavier-0.2.4-osx-arm64.zip"
      sha256 "860cc60843d5050ef2bd5707f7ea67a4c801a0e25fb1a8ba4b9014411e13baba"
    end
    on_intel do
      url "https://github.com/CODA-SCHOOL-FRANCE/cerebro/releases/download/v0.2.4/Xavier-0.2.4-osx-x64.zip"
      sha256 "bc9d558d490da817df5b6485114759837cdd3d0b889b99a3306fa843b9ab5031"
    end
  end

  on_linux do
    url "https://github.com/CODA-SCHOOL-FRANCE/cerebro/releases/download/v0.2.4/Xavier-0.2.4-linux-x64.zip"
    sha256 "d68ccc1b097f11792364ed4b69ec5fe4304bc594eea569d43f41d4c563c38511"
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
