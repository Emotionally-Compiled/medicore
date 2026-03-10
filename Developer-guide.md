
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


*(Nota: Si usas Windows y el `.sh` no corre, clona los demás repositorios manualmente en la misma carpeta padre).*

---

## 🚀 3. Levantando la Infraestructura Base

No necesitas levantar toda la arquitectura si solo vas a trabajar en una parte. Usa Docker Compose desde esta carpeta (`medicore-infra`) según lo que necesites:

**Si vas a trabajar en el Frontend (Next.js):**
Solo necesitas levantar los servicios base de seguridad (Keycloak y su base de datos):

```bash
docker-compose up -d keycloak postgres-iam

```

**Si vas a trabajar integrando todo el sistema:**
Levanta toda la infraestructura de golpe:

```bash
docker-compose up -d

```

**Para apagar todo y limpiar:**

```bash
docker-compose down

```

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


