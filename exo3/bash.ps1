docker run -d --name postgres_env --rm -e POSTGRES_USER=john -e POSTGRES_DB=doe -e POSTGRES_PASSWORD=johndoe postgres:latest

docker run -d --name postgres_envfile --rm --env-file env.txt postgres:latest

docker run -d --name postgres_bind --rm --env-file env.txt -v ${PWD}\data:/var/lib/postgresql/data postgres:latest

docker run -d --name postgres_volume --rm --env-file env.txt -v volume_docker:/var/lib/postgresql/data postgres:latest

Write-Output "=== Tous les conteneurs PostgreSQL ont été lancés ==="