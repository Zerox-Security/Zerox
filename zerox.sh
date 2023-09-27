#!/bin/bash

show_banner() {
    clear
    echo '

╺━┓┏━╸┏━┓┏━┓╻ ╻   ┏━┓┏━╸┏━╸╻ ╻┏━┓╻╺┳╸╻ ╻
┏━┛┣╸ ┣┳┛┃ ┃┏╋┛   ┗━┓┣╸ ┃  ┃ ┃┣┳┛┃ ┃ ┗┳┛
┗━╸┗━╸╹┗╸┗━┛╹ ╹   ┗━┛┗━╸┗━╸┗━┛╹┗╸╹ ╹  ╹
     Protección Nivel 2
        Ubuntu 20.04
    '
}

cd /root/

if [ -e "/usr/local/bin/zerox" ]; then
    echo "Tienes ya instalado zerox, solo escribe 'zerox' y estaré listo para ti"
else

    if [ -e "/usr/local/bin/ZeroxCloudflare.sh" ]; then
        echo "También tienes el archivo 'ZeroxCloudflare.sh' listo para ser ejecutado como 'zerox.sh'"
    fi
fi

    git clone https://github.com/Zerox-Security/ZeroxTunnel.sh.git
    sudo mv /root/ZeroxTunnel.sh/ZeroxCloudflare.sh /usr/local/bin/
    chmod +x /usr/local/bin/ZeroxCloudflare.sh
    sudo ln -s /usr/local/bin/ZeroxCloudflare.sh /usr/local/bin/zerox
    rm -r /root/ZeroxTunnel.sh/
    rm -r /root/Zerox/

    echo "AHORA DESDE CUALQUIER LUGAR DE LA TERMINAL, PUEDES ESCRIBIR LA PALABRA 'zerox' Y ALLÍ ESTAREMOS"

