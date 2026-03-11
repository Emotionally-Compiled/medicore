
# 🏗️ Entorno Local & Guía para Desarrolladores (Emotionally-Compiled)

Dado que estamos usando una arquitectura de microservicios dividida en múltiples repositorios (*polyrepo*), aquí centralizamos la orquestación con Docker Compose para que levantar el proyecto localmente sea rápido y sin dolor.

---

## 📋 1. Prerrequisitos
Antes de empezar a codear, asegúrate de tener instalado en tu computadora:
* [Docker Desktop](https://www.docker.com/products/docker-desktop/) (Corriendo en segundo plano).
* [Git](https://git-scm.com/).
* Java JDK 21+ (Para los microservicios de Spring Boot).
* Node.js 20+ (Para el frontend en Next.js).

---

## 📂 2. Estructura Obligatoria del Workspace
Para que el entorno local funcione, **todos los repositorios deben estar en la misma carpeta padre**. 

Sigue estos pasos para configurar tu entorno por primera vez:

1. Crea una carpeta vacía en tu computadora llamada `medicore-workspace` (o el nombre que prefieras).
2. Entra a esa carpeta y clona **este** repositorio de infraestructura primero:

   ```bash
   git clone https://github.com/Emotionally-Compiled/medicore-infra.git
   ```


3. Entra a la carpeta de infraestructura y ejecuta el script de preparación. Esto descargará automáticamente el resto de microservicios (Frontend, Eureka, Gateway, etc.) junto a este repositorio:

> linux

```bash
cd medicore-infra
./setup-env.sh
```

> windows

```
.\setup-env.bat
```

---

## 🔐 2. Secretos y Variables de Entorno (Política de Seguridad)
**REGLA ESTRICTA:** Nunca subas un archivo `.env` a GitHub. Usamos un sistema de plantillas para mantener las credenciales seguras.

1. Busca el archivo `.env.example` en esta carpeta.
2. Crea una copia y cámbiale el nombre a exactamente `.env`.
3. Rellena las contraseñas de desarrollo local (puedes usar las que vienen por defecto en el ejemplo para pruebas locales).

> ⚠️ **Seguridad de la Información (IS):** El archivo `.env` está ignorado por Git. Si agregas un nuevo servicio que requiera contraseña, añade la llave a `.env.example` (vacía) y el valor real a tu `.env` local.

---

## 🚀 3. Orquestación con Docker
Usamos Docker Compose para levantar la infraestructura "pesada" y que tú solo te preocupes por programar.

| Comando | Uso |
| :--- | :--- |
| `docker-compose up -d` | Levanta TODO (Bases de datos, Keycloak, MinIO). |
| `docker-compose up -d keycloak` | Levanta solo Auth y DB (Ideal para devs de Frontend). |
| `docker-compose stop` | Detiene los servicios sin borrar los datos. |
| `docker-compose down -v` | **HARD RESET:** Borra los contenedores y ELIMINA las bases de datos. |

---



## 🗺️ 4. Mapa de Puertos Locales

Una vez que los contenedores estén corriendo, estos son los accesos locales:

| Servicio | Puerto Local | Credenciales por defecto |
| --- | --- | --- |
| **Frontend (Next.js)** | `http://localhost:3000` | N/A |
| **Keycloak (Auth)** | `http://localhost:8081` | User: `admin` / Pass: `admin` |
| **PostgreSQL (IAM)** | `localhost:5432` | User: `admin` / Pass: `root` |
| **Eureka Server** | `http://localhost:8761` | N/A |
| **API Gateway** | `http://localhost:8080` | N/A |

---


