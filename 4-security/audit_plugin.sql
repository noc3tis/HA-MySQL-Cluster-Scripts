-- ==========================================
-- Habilitación y Configuración del Audit Plugin
-- Ejecutar en consola MySQL: mysql -u root -p
-- ==========================================

-- 1. Instalar el plugin nativo de auditoría
INSTALL PLUGIN audit_log SONAME 'audit_log.so';

-- 2. Configurar el registro global de actividades
-- Registra inicios de sesión, consultas ejecutadas y errores
SET GLOBAL audit_log_policy = 'ALL';

-- 3. Formatear la salida para facilitar el análisis
SET GLOBAL audit_log_format = 'JSON';

-- (Los logs se generarán en: /var/lib/mysql/audit.log)
