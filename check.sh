#!/bin/bash
ok=0
fail=0

if command -v git >/dev/null 2>&1; then
  echo "✅ git: $(git --version)"
  ((ok++))
else
  echo "❌ git не найден"
  ((fail++))
fi

if command -v docker >/dev/null 2>&1; then
  echo "✅ docker: $(docker --version)"
  ((ok++))
else
  echo "❌ docker не найден"
  ((fail++))
fi


if systemctl is-active --quiet docker; then
  echo "✅ служба docker: active"
  ((ok++))
else
  echo "❌ служба docker не active"
  ((fail++))
fi
if [ -d "$HOME/projects" ]; then
  echo "✅ каталог ~/projects есть"; ((ok++))
else
  echo "❌ нет ~/projects"; ((fail++))
fi

if [ -d "$HOME/projects/devstation-kit" ]; then
  echo "✅ каталог devstation-kit есть"; ((ok++))
else
  echo "❌ нет devstation-kit"; ((fail++))
fi

if [ -d "$HOME/tools" ]; then
  echo "✅ каталог ~/tools есть"; ((ok++))
else
  echo "❌ нет ~/tools"; ((fail++))
fi

echo "ℹ️ свободно на /: $(df -h / | awk 'NR==2 {print $4}')"

echo "прошло: $ok, провалов: $fail"
if [ "$fail" -gt 0 ]; then exit 1; fi
