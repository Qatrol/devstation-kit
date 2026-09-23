# Onboarding: как поднять рабочую станцию

## 1. Получить репозиторий
Вариант А — SSH (рекомендуется):
  ssh-keygen -t ed25519 -C "твоя почта"
  cat ~/.ssh/*.pub                → скопируй и добавь в GitHub (Settings → SSH keys)
  ssh -T git@github.com           → ждём "Hi <ник>!"
  git clone git@github.com:Qatrol/devstation-kit.git

Вариант Б — HTTPS:
  git clone https://github.com/Qatrol/devstation-kit.git

## 2. Настроить Git
  git config --global user.name "Имя"
  git config --global user.email "почта"
  Проверка: git config --list

## 3. Поднять окружение
  ./install.sh                    → создаёт ~/projects, ~/tools
  ./install.sh                    → второй раз, не должно ломаться

## 4. Проверить окружение
  ./check.sh                      → ждём "провалов: 0"

## 5. Docker
  docker --version                → если нет:
  sudo apt install docker.io
  sudo systemctl enable --now docker
  sudo usermod -aG docker $USER   → перелогинься
  docker run hello-world
