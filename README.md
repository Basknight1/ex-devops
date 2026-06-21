# Evaluación Final Transversal ISY1101 - DevOps

## Descripción
Plataforma de gestión de productos y usuarios con CI/CD automatizado, 
contenedorización con Docker y despliegue en AWS ECS Fargate.

## Arquitectura
- **Frontend**: Nginx (Puerto 80) - contenido estático Java/Maven
- **Backend 1 (Node.js)**: Gestión de usuarios (Puerto 8081)
- **Backend 2 (Python)**: Gestión de productos (Puerto 8082)
- **BD**: MySQL 8.4 en AWS RDS

## Stack Tecnológico
- Docker & Docker Compose (local)
- GitHub Actions (CI/CD)
- AWS ECS Fargate (orquestación)
- CloudWatch (logs y monitoreo)
- Docker Hub (registro de imágenes)

## Ejecución Local
```bash
docker-compose up --build
```

## Imágenes en Docker Hub
- `baskhor/eval3-frontend:latest`
- `baskhor/eval3-backend-node:latest`
- `baskhor/eval3-backend-python:latest`

## Pipeline CI/CD
El workflow en `.github/workflows/ci-cd.yml` se ejecuta automáticamente 
en cada push a `main`, construyendo y publicando las imágenes en Docker Hub.

## Despliegue en AWS
- Clúster: `ev3-cluster` (ECS Fargate)
- Base de datos: `database-1` (RDS MySQL)
- Region: us-east-1

## Autor
Bastián Matus - Estudiante de Ingeniería en Informática, Duoc UC
