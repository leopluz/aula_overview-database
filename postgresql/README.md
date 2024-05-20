# PostgreSQL

## Utilizanção

A utilização do banco de dados PostgreSQL utilizando estes arquivos é através da criação de contâiner Docker com as seguintes características:

- [Container PostgreSQL](docker-compose.yml): Acessível na porta 5432
- [Container pgAdmin](docker-compose.yml): Acessível na porta [5050](http://localhost:5050/)

### Diretório contendo mapeamento dos volumes

Por padrão, o container está configurado para salvar no diretório */var/docker-storage/postgresql*, portanto antes de qualquer execução é necessário criar o diretório mapeado.

```bash
mkdir -p /var/docker-storage/postgresql
```

### Inicializar o Contâiner

Executar o script [start_docker.sh](start_docker.sh) no diretório postgresql, que executará em background.

```bash
./start_docker.sh
```

ou através do docker-compose (retirar o parâmetro "-d" caso não queira executar em background, precisando pressionar CTRL+C para pausar a execução).

```bash
cd postgresql
docker-compose up -d
```

### Finalizar o Contâiner

Executar o script [stop_docker.sh](stop_docker.sh) no diretório postgresql, caso tenha sido executado em background.

```bash
./stop_docker.sh
```

ou através do docker-compose, caso tenha sido executado em background

```bash
cd postgresql
docker-compose stop
```

## Scripts SQL

- [Criação de tabelas](create_tables.sql)
