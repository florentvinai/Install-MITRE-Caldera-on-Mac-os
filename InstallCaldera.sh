#!/bin/bash

# Installer pyenv
brew install pyenv

# Installer Python 3.8.13 via pyenv
pyenv install 3.8.13

# Attendre 3 secondes et afficher la version de Python
sleep 3
python3 --version

# Afficher les versions disponibles
pyenv versions

# Cloner le dépôt CALDERA avec les submodules
git clone https://github.com/mitre/caldera.git --recursive

# Configurer la version locale de Python pour le dossier courant
pyenv local 3.8.13

# Entrer dans le dossier caldera et installer ses dépendances
cd caldera
pip3 install -r requirements.txt

# Ajouter un submodule git
git submodule add https://github.com/magma/magma.git

# Installer Node.js via Homebrew
brew install node

# Attendre 3 secondes, afficher les versions de Node.js et npm
sleep 3
node --version && npm --version

# Exécuter le serveur CALDERA
python3 server.py --build
