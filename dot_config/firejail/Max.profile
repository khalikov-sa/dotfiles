# Разрешенные папки
whitelist /home/exceed/max/
whitelist /home/exceed/.local/share/ONEME
whitelist /home/exceed/Downloads/Max
whitelist /home/exceed/.themes
whitelist /home/exceed/.config/gtk*
whitelist /home/exceed/.local/share/fonts
whitelist ${RUNUSER}

# Изоляция
private-tmp
private-dev
private-cache
# private-bin /bin/bwrap  # проверь, реально ли нужен именно bwrap (см. пояснение в чате);
                           # если приложение падает или не открывает ссылки/уведомления —
                           # временно закомментируй эту строку для диагностики
private-etc ssl,ca-certificates,fonts,resolv.conf,nsswitch.conf,hosts,hostname,passwd,group

# Запрет доступа к системным папкам
blacklist /var
blacklist /usr/src
blacklist /opt

# Настройка сети (раскомментируйте и настройте при необходимости)
# net $FIREJAIL_INT ip $FIREJAIL_IP netmask 255.255.255.0 defaultgw $FIREJAIL_GW
# dns 77.88.8.8
# hostname $HOSTNAME

# Камера: private-dev по умолчанию НЕ включает /dev/video*.
# Если нужны видеозвонки — раскомментируй (номер устройства проверь через `ls /dev/video*`):
# whitelist /dev/video0

# Отключение звука и видео (раскомментируйте для отключения)
# nosound
# novideo

# Сброс всех возможностей (capabilities)
caps.drop all
machine-id
disable-mnt

# --- Добавлено ---
seccomp
protocol unix,inet,inet6,netlink
noroot
nonewprivs
