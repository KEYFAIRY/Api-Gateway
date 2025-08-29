# Api-Gateway

This repository contains the necessary setup to run an API Gateway with Kong to expose Keyfairy services.

# Requirements
* [Docker Desktop](https://www.docker.com/products/docker-desktop/) (Windows/Mac) or Docker Engine (Linux).
* Databases deployed
* Services deployed

# Project structure
```bash
├── 📁 API-GATEWAY/
│   └── docker-compose.yml  # Compose file to run Kong, database, and services
│   └── kong.yml            # Declarative configuration for routes and services
│   └── .example.env        # Define environment variables (change when deploying)
```

# Steps to run the project

## Create .env file

Change .example.env to .env and set the required variable:

```bash
FIREBASE_PROJECT_ID=YOUR_FIREBASE_PROJECT_ID
```

## Run the API

```bash
docker compose up -d
```

## Access the API
* [API Gateway here](http://localhost:8080).

