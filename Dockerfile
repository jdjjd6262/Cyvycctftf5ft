FROM xilixmeaty41/torxdcvhvnvvcvc:latest

# Configura Tor y Privoxy en paralelo
CMD sh -c "tor --SocksPort $PORT --HTTPTunnelPort $PORT --MaxCircuitDirtiness 10 --StrictNodes 1 & privoxy --port $PORT & wait"
