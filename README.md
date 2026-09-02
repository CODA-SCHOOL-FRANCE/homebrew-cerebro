# Xavier agent - Mac OS

[![Homebrew](https://img.shields.io/badge/homebrew-brew%20install-fbb040?logo=homebrew&logoColor=white)](#installer)
[![Release](https://img.shields.io/github/v/release/CODA-SCHOOL-FRANCE/cerebro?filter=agent-v*&label=xavier&color=blue)](https://github.com/CODA-SCHOOL-FRANCE/cerebro/releases)
[![Cerebro](https://img.shields.io/badge/cerebro-d%C3%A9p%C3%B4t%20principal-blueviolet)](https://github.com/CODA-SCHOOL-FRANCE/cerebro)

![Cerebro by Charles Thirion](https://raw.githubusercontent.com/CODA-SCHOOL-FRANCE/cerebro/main/img/cerebro.webp)

## À quoi sert ce tap ?

[Cerebro](https://github.com/CODA-SCHOOL-FRANCE/cerebro) est un outil anti-fraude pour la
surveillance d'épreuves à distance (BYOD, multi-OS) : un serveur centralise les sessions et
affiche un dashboard temps réel au surveillant, pendant que chaque candidat lance sur sa propre
machine un agent léger — **Xavier** — qui capture des screenshots à intervalles aléatoires et les
transmet en direct au serveur.

Ce dépôt est un [tap Homebrew](https://docs.brew.sh/Taps) pour installer Xavier sur macOS/Linux :
il ne contient aucun code de Cerebro, uniquement `Formula/xavier.rb`, régénérée automatiquement à
chaque release par le pipeline CI de [cerebro](https://github.com/CODA-SCHOOL-FRANCE/cerebro) — pas
de mise à jour manuelle nécessaire. C'est l'un des cinq canaux d'installation de l'agent (avec npm,
Scoop, un script d'installation, et le téléchargement manuel de l'archive) — voir la
[documentation de déploiement de l'agent](https://github.com/CODA-SCHOOL-FRANCE/cerebro/blob/main/docs/DEPLOYMENT-AGENT.md#canaux-dinstallation-pour-les-étudiants)
du dépôt principal pour le détail des autres canaux.

## Installer

```bash
brew install coda-school-france/cerebro/xavier
```

Les binaires viennent des [Releases de cerebro](https://github.com/CODA-SCHOOL-FRANCE/cerebro/releases),
qui héberge aussi le script d'installation et le bucket Scoop pour Windows.
