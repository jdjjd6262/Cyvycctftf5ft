FROM xilixmeaty41/torxdcvhvnvvcvc:latest

# Define las variables de entorno
ENV TOR_SOCKS_PORT=9050
ENV TOR_HTTP_PORT=9090
ENV PRIVOXY_PORT=8118

# Exponer puertos
EXPOSE $TOR_SOCKS_PORT $PRIVOXY_PORT $TOR_HTTP_PORT

# Configura Tor y Privoxy con reinicio automático en caso de error
CMD sh -c "while true; do tor --MaxCircuitDirtiness 10 --StrictNodes 1 & privoxy --port $PRIVOXY_PORT; sleep 1; done"

