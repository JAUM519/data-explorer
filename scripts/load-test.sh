#!/usr/bin/env bash

# ===============================================
#  DataExplorer - Prueba de carga para Nginx
#  Usa ApacheBench (ab)
# ===============================================

# Dirección del servidor web
TARGET="http://192.168.56.10/"

# Número total de peticiones
REQUESTS=1000000

# Número de clientes concurrentes
CONCURRENCY=200

echo "==============================================="
echo "  Prueba de carga DataExplorer"
echo "==============================================="
echo "Objetivo: $TARGET"
echo "Peticiones: $REQUESTS"
echo "Concurrencia: $CONCURRENCY"
echo "-----------------------------------------------"

ab -n $REQUESTS -c $CONCURRENCY $TARGET

echo "-----------------------------------------------"
echo "Prueba finalizada."
echo "Puedes revisar Grafana para ver el comportamiento."
echo "Dashboard: http://192.168.56.11:3000"
