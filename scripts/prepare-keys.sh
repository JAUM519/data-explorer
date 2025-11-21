#!/usr/bin/env bash

set -e

# Ruta al root del proyecto (carpeta padre de este script)
PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

WEB_KEY_SRC="$PROJECT_ROOT/.vagrant/machines/web/virtualbox/private_key"
MON_KEY_SRC="$PROJECT_ROOT/.vagrant/machines/monitoring/virtualbox/private_key"

WEB_KEY_DEST="$HOME/.ssh/web_vagrant"
MON_KEY_DEST="$HOME/.ssh/monitoring_vagrant"

echo "Preparando llaves para Ansible..."
mkdir -p "$HOME/.ssh"

if [ ! -f "$WEB_KEY_SRC" ] || [ ! -f "$MON_KEY_SRC" ]; then
  echo "ERROR: No se encontraron las llaves de Vagrant."
  echo "Asegúrate de haber ejecutado 'vagrant up' en el root del proyecto antes."
  exit 1
fi

cp "$WEB_KEY_SRC" "$WEB_KEY_DEST"
cp "$MON_KEY_SRC" "$MON_KEY_DEST"

chmod 600 "$WEB_KEY_DEST" "$MON_KEY_DEST"

echo "Llaves copiadas a:"
echo "  $WEB_KEY_DEST"
echo "  $MON_KEY_DEST"
echo "Listo. Ya puedes ejecutar ansible-playbook usando inventory.ini."
