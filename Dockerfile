FROM xilixmeaty41/torxdcvhvnvvcvc:latest

# Define las variables de entorno
ENV TOR_SOCKS_PORT=8050
ENV TOR_HTTP_PORT=8090
ENV PRIVOXY_PORT=9119

# Exponer puertos
EXPOSE $TOR_SOCKS_PORT $PRIVOXY_PORT $TOR_HTTP_PORT

# Configura Tor y Privoxy con reinicio automático en caso de error
CMD sh -c "while true; do tor --SocksPort $TOR_SOCKS_PORT --HTTPTunnelPort $TOR_HTTP_PORT --MaxCircuitDirtiness 10 --StrictNodes 1 & privoxy --port $PRIVOXY_PORT; sleep 1; done"

