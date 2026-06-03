#!/bin/bash
# ==========================================
# Script de Apertura de Puertos (iptables)
# ==========================================

# Puertos para MySQL (3306) y el tráfico interno del clúster (33060)
sudo iptables -I INPUT 1 -m state --state NEW -p tcp --dport 3306 -j ACCEPT
sudo iptables -I INPUT 1 -m state --state NEW -p tcp --dport 33060 -j ACCEPT

# Puerto para mysqld_exporter (en los 3 nodos)
sudo iptables -I INPUT 1 -m state --state NEW -p tcp --dport 9104 -j ACCEPT

# Puertos para el Servidor de Monitoreo (Prometheus y Grafana)
sudo iptables -I INPUT 1 -m state --state NEW -p tcp --dport 9090 -j ACCEPT
sudo iptables -I INPUT 1 -m state --state NEW -p tcp --dport 3000 -j ACCEPT

# Guardar las reglas para que persistan tras reiniciar
sudo netfilter-persistent save
