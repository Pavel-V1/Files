#
read -p "Введите IP-адрес или домен: " target

echo -e "1. Пингую...\n"
ping -c 4 -W 3 "$target"

echo -e "\n2. Проверяю traceroute...\n"
traceroute -n "$target"

echo -e "\nПроверка завершена"
