#!/bin/bash
set -e
if [ "$(whoami)" != "qatrol" ]; then
  echo "скрипт предназначен для пользователя qatrol"
  exit 1
fi
if [ ! -d "$HOME/projects" ]; then
  echo "создаю $HOME/projects"
  mkdir -p "$HOME/projects"
fi

if [ ! -d "$HOME/projects/devstation-kit" ]; then
  echo "создаю $HOME/projects/devstation-kit"
  mkdir -p "$HOME/projects/devstation-kit"
fi
if [ ! -d "$HOME/projects/devstation-kit/docs" ]; then
  echo "создаю $HOME/projects/devstation-kit/docs"
  mkdir -p "$HOME/projects/devstation-kit/docs"
fi
if [ ! -d "$HOME/projects/devstation-kit/configs" ]; then
  echo "создаю $HOME/projects/devstation-kit/configs"
  mkdir -p "$HOME/projects/devstation-kit/configs"
fi
if [ ! -d "$HOME/tools" ]; then
  echo "создаю $HOME/tools"
  mkdir -p "$HOME/tools"
fi
echo "Окружение готово"

