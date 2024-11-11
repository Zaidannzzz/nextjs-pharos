## Next.js for PT.Pharos

Dockerized Next.js Applications with CI/CD via GitHub Actions

## Requirements
- [Node.js](https://nodejs.org/en/) (v18+)
- [Docker](https://docs.docker.com/get-docker/)
- Docker Hub account for pushing images

## Getting Started

### 1. Clone the repository

Clone this repository to your local machine:

```bash
git clone https://github.com/yourusername/nextjs-pharos.git
cd nextjs-pharos
```

### 2. Run locally without Docker

1. Install Dependency

```bash
npm install
```

2. Start the Development Server

```bash
npm run dev
# or
yarn dev
# or
pnpm dev
# or
bun dev
```

3. Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

### 3. Running Using Docker

1. Build the Docker Image

```bash
docker-compose up --build
```

2. Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

3. Stop the Container

```bash
docker-compose down
```

## Troubleshooting
### Common Issues
- Docker Not Found: Please Ensure the Docker is installed and running.
- Port Conflict: This App use Port **3000**. Make sure nothing running on this port, or update the port in docker with **docker run -p <your-port>:3000 nextjs-app**