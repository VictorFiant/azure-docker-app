
# Azure Docker App with Terraform

Este proyecto despliega una aplicación Node.js contenida en Docker dentro de Azure App Service, usando Terraform y GitHub Actions para CI/CD.

## Tecnologías
- Azure (App Service, Resource Group, Plan)
- Terraform
- Docker
- GitHub Actions

## Estructura
- `docker/`: Contiene la app y el Dockerfile.
- `.github/workflows/`: CI/CD para build + push + deploy.
- `main.tf`: Define la infraestructura.
Actualizado: agregados secretos de DockerHub.
