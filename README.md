# Odoo Hands-On Project

## Overview

This is a hands-on Odoo project running in Docker containers using Docker Compose.

## Prerequisites

- Docker
- Docker Compose

## Getting Started

### Installation

1. Clone the repository
2. Navigate to the project directory
3. Run the following command:

```bash
docker-compose up -d
```

### Access Odoo

- URL: `http://localhost:8069`
- Default credentials: `admin` / `admin`

## Project Structure

```
.
├── docker-compose.yml
├── addons/
└── config/
```

## Services

- **Odoo**: Main application server
- **PostgreSQL**: Database service

## Common Commands

```bash
# Start services
docker-compose up -d

# Stop services
docker-compose down

# View logs
docker-compose logs -f odoo

# Restart services
docker-compose restart
```

## Documentation

For more information, visit the [Odoo Documentation](https://www.odoo.com/documentation).
