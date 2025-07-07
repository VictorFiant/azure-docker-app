
# 🚀 Docker App Deployment with Terraform & Azure

This project demonstrates a full deployment pipeline of a Docker-based Node.js application to **Azure App Service**, using **Terraform** for infrastructure provisioning and **GitHub Actions** for CI/CD automation.

## 📦 Technologies Used

- 🐳 **Docker** – containerize the application
- ☁️ **Microsoft Azure** – App Service, Resource Group, Service Plan
- 🔧 **Terraform** – Infrastructure as Code
- 🔁 **GitHub Actions** – automated CI/CD
- 🔒 **GitHub Secrets** – secure credential management

## 📁 Project Structure

├── main.tf # Terraform configuration for Azure infrastructure
├── outputs.tf # Outputs the deployed app URL
├── variables.tf # Optional: define reusable variables
├── .github/
│ └── workflows/
│ └── main.yml # GitHub Actions pipeline
├── Dockerfile # Docker image definition
├── app/
│ └── index.js # Simple Node.js app
└── README.md # Project documentation


## ⚙️ How It Works

1. **Terraform** creates:
   - Resource Group
   - Linux App Service Plan (Free Tier)
   - Azure Web App configured for Docker

2. **Docker** builds a container image of the Node.js app.

3. **GitHub Actions**:
   - Logs in to Docker Hub
   - Builds & pushes the Docker image
   - Triggers deployment to Azure Web App

## 🔑 Required GitHub Secrets

| Name                  | Description                          |
|-----------------------|--------------------------------------|
| `AZURE_CREDENTIALS`   | JSON credentials from Azure CLI login (`az ad sp create-for-rbac`) |
| `DOCKERHUB_USERNAME`  | Docker Hub username                  |
| `DOCKERHUB_PASSWORD`  | Docker Hub password or access token  |

## 🌐 Accessing the App

Once deployed, the application will be accessible via:

