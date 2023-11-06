FROM xilixmeaty41/torxdcvhvnvvcvc:latest

# Configura Tor
CMD ["tor", "--SocksPort", "$PORT", "--HTTPTunnelPort", "$PORT", "--MaxCircuitDirtiness", "10", "--StrictNodes", "1"]

# Configura Privoxy
CMD ["privoxy", "--port", "$PORT"]
