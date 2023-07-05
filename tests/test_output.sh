#!/bin/bash

# Запустим приложение и запишем вывод в переменную.
output=$(python3 /hello_app/app.py)

# Получим сегодняшнюю дату.
today=$(date +'%Y-%m-%d')

# Ожидаемый вывод.
expected_output="$today"

# Сравнение.
if [ "$output" == "$expected_output" ]; then
    echo "Тест выполнен успешно"
else
    echo "Тест провалился"
    echo "Ожидалось: $expected_output"
    echo "Получено: $output"
fi
