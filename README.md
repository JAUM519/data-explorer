# DataExplorer - Entorno de Pruebas Automatizado

## Descripción
Proyecto académico para la asignatura Sistemas Operativos. El objetivo es implementar un entorno automatizado compuesto por dos máquinas virtuales usando Vagrant y Ansible:
- `web`: servidor Nginx + node_exporter
- `monitoring`: Prometheus + Grafana

El entorno permite realizar pruebas de carga y observar el comportamiento del sistema operativo en tiempo real.

## Requisitos
- VirtualBox
- Vagrant
- WSL2 + Ubuntu (para ejecutar Ansible)
- Git

## Instalación y uso

### 1. Clonar el repositorio
```
git clone <URL-del-repositorio>
cd data-explorer
```

### 2. Levantar las máquinas virtuales
```
vagrant up
```

### 3. Preparar llaves SSH
```
./scripts/prepare-keys.sh
```

### 4. Ejecutar Ansible
```
cd ansible
ansible-playbook -i inventory.ini site.yml
```

### 5. Acceder a los servicios
- Servidor web: http://192.168.56.10
- Prometheus: http://192.168.56.11:9090
- Grafana: http://192.168.56.11:3000 (admin/admin)

### 6. Ejecutar pruebas de carga
```
./scripts/load-test.sh
```

## Estructura del proyecto
- `Vagrantfile` → define las 2 VMs
- `ansible/` → inventario + playbook de provisionamiento
- `scripts/prepare-keys.sh` → prepara llaves SSH
- `scripts/load-test.sh` → pruebas de carga
- `web` y `monitoring` → máquinas virtuales creadas con Vagrant

## Autor
Jorge Andrés Medina
