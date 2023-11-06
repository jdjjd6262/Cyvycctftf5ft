FROM xilixmeaty41/torxdcvhvnvvcvc:latest



# Configura Tor y Privoxy con reinicio automático en caso de error
CMD sh -c "while true; do tor & privoxy; sleep 1; done"

