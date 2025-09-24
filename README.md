# Api-Gateway

This repository contains the necessary setup to run an API Gateway with Krakend to expose Keyfairy services.

# Requirements
* [Docker Desktop](https://www.docker.com/products/docker-desktop/) (Windows/Mac) or Docker Engine (Linux).
* Databases deployed
* Services deployed

# Project structure

```bash
📁 API-GATEWAY/
├── docker-compose.yml
├── .env
├── krakend
│   ├── Dockerfile
│   ├── entrypoint.sh
│   └── krakend.tmpl.json
├── .gitignore
└── README.md
```

# Steps to run the project

## Run the API

```bash
docker compose up -d
```

## Access the API
* [API Gateway here](http://localhost:8080).