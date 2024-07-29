#!/bin/bash
echo "Обновление списка пакетов..."
sudo apt update
echo "Проверка наличия обновлений..."
updates=$(apt list --upgradable 2>/dev/null | grep -c upgradable)
if [ "$updates" -gt 0 ]; then
    echo "Доступны обновления. Начинаем установку..."
    # Установка обновлений
    sudo apt upgrade -y
    echo "Обновления успешно установлены."
	else
    echo "Система уже обновлена."
fi