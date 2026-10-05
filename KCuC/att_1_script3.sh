#
read -p "Введите домен: " DOMAIN
IP=$(dig +short "$DOMAIN" | tail -n1)

echo "$DOMAIN $IP"

if [ -z "$IP" ]; then
	echo "Ошибка (домен не сущствует)"
	exit 1
fi

echo "IP-адрес $DOMAIN: $IP"

if nc -zv "$IP" 80 &>/dev/null; then
	echo "Порт 80 открыт"
else
	echo "Порт 80 не отвечает"
fi
