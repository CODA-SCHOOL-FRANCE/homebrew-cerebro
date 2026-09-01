# homebrew-cerebro

[![Homebrew](https://img.shields.io/badge/homebrew-brew%20install-fbb040?logo=homebrew&logoColor=white)](#installer)
[![Release](https://img.shields.io/github/v/release/CODA-SCHOOL-FRANCE/xavier-releases?label=xavier&color=blue)](https://github.com/CODA-SCHOOL-FRANCE/xavier-releases/releases)

Tap Homebrew pour Xavier, l'agent candidat de
[Cerebro](https://github.com/CODA-SCHOOL-FRANCE/cerebro) (dépôt privé). Ce dépôt ne contient
aucun code source, uniquement `Formula/xavier.rb`, régénérée automatiquement à chaque release par
le pipeline CI du dépôt privé (`.github/workflows/agent-release.yml`, job
`mirror-public-release`) — pas de mise à jour manuelle nécessaire.

## Installer

```bash
brew install coda-school-france/cerebro/xavier
```

> `Formula/xavier.rb` est un placeholder tant qu'aucun tag `agent-vX.Y.Z` n'a déclenché le
> pipeline de mirroring — le premier run le remplace par de vraies URLs/hachages.

Les binaires viennent de [xavier-releases](https://github.com/CODA-SCHOOL-FRANCE/xavier-releases),
qui héberge aussi le script d'installation et le bucket Scoop pour Windows.
