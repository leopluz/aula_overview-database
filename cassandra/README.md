# Cassandra

## Utilizanção

A utilização do banco de dados Cassandra utilizando estes arquivos é através da criação de contâiner Docker com as seguintes características:

- [Container Cassandra](docker-compose.yml): Acessível na porta 9042

### Diretório contendo mapeamento dos volumes

Por padrão, o container está configurado para salvar no diretório */var/docker-storage/cassandra*, portanto antes de qualquer execução é necessário criar o diretório mapeado.

```bash
mkdir -p /var/docker-storage/cassandra
```

### Inicializar o Contâiner

Executar o script [start_docker.sh](start_docker.sh) no diretório cassandra, que executará em background.

```bash
./start_docker.sh
```

ou através do docker-compose (retirar o parâmetro "-d" caso não queira executar em background, precisando pressionar CTRL+C para pausar a execução).

```bash
cd cassandra
docker-compose up -d
```

### Finalizar o Contâiner

Executar o script [stop_docker.sh](stop_docker.sh) no diretório cassandra, caso tenha sido executado em background.

```bash
./stop_docker.sh
```

ou através do docker-compose, caso tenha sido executado em background

```bash
cd cassandra
docker-compose stop
```
