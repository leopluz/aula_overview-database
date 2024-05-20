# Redis

## Utilizanção

A utilização do banco de dados Redis utilizando estes arquivos é através da criação de contâiner Docker com as seguintes características:

- [Container Redis](docker-compose.yml): Acessível na porta 6379
- [Container Redis Commander](docker-compose.yml): Acessível na porta [8081](http://localhost:8081/)

### Diretório contendo mapeamento dos volumes

Por padrão, o container está configurado para salvar no diretório */var/docker-storage/redis*, portanto antes de qualquer execução é necessário criar o diretório mapeado.

```bash
mkdir -p /var/docker-storage/redis
```

### Inicializar o Contâiner

Executar o script [start_docker.sh](start_docker.sh) no diretório redis, que executará em background.

```bash
./start_docker.sh
```

ou através do docker-compose (retirar o parâmetro "-d" caso não queira executar em background, precisando pressionar CTRL+C para pausar a execução).

```bash
cd redis
docker-compose up -d
```

### Finalizar o Contâiner

Executar o script [stop_docker.sh](stop_docker.sh) no diretório redis, caso tenha sido executado em background.

```bash
./stop_docker.sh
```

ou através do docker-compose, caso tenha sido executado em background

```bash
cd redis
docker-compose stop
```
