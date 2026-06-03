# ==========================================
# Comandos de inicialización: MySQL InnoDB Cluster
# Ejecutar dentro de: mysqlsh
# ==========================================

# 1. Crear el clúster desde el nodo Primario (10.0.1.72)
cluster = dba.create_cluster('equipoK_cluster')

# 2. Añadir las réplicas secundarias
cluster.add_instance('clusteradmin@10.0.1.219')
cluster.add_instance('clusteradmin@10.0.1.196')

# 3. COMANDO DE RESCATE: Usado para resolver el Error 1146 (Desincronización)
# Expulsa el nodo caído y lo clona desde cero tomando los datos del primario
# cluster.remove_instance('instancia1ulloa:3306', {'force': True})
# cluster.add_instance('clusteradmin@10.0.1.219', {'recoveryMethod': 'clone'})
