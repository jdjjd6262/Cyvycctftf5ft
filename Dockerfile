FROM xilixmeaty41/torxdcvhvnvvcvc:latest

CMD ["tor --SocksPort $PORT --HTTPTunnelPort $PORT --MaxCircuitDirtiness 10 --StrictNodes 1"]
CMD ["privoxy --port $PORT"]
