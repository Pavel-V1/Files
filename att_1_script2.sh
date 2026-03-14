#
echo "IP-адреса интерфейсов:"
ip addr show
echo ""

echo "Таблица маршрутизации:"
ip route show
echo ""

echo "Слушающие порты (TCP/UDP):"
ss -tuln
