# Oracle XE

## Utilizanção

A utilização do banco de dados Oracle XE utilizando estes arquivos é através da criação de contâiner Docker com as seguintes características:

- [Container Oracle XE](docker-compose.yml): Acessível na porta 1521. Interface gráfica acessível na porta [5500](http://localhost:5500/)

### Diretório contendo mapeamento dos volumes

Por padrão, o container está configurado para salvar no diretório */var/docker-storage/oracle*, portanto antes de qualquer execução é necessário criar o diretório mapeado.

```bash
mkdir -p /var/docker-storage/oracle
```

### Inicializar o Contâiner

Executar o script [start_docker.sh](start_docker.sh) no diretório oracle, que executará em background.

```bash
./start_docker.sh
```

ou através do docker-compose (retirar o parâmetro "-d" caso não queira executar em background, precisando pressionar CTRL+C para pausar a execução).

```bash
cd oracle
docker-compose up -d
```

### Finalizar o Contâiner

Executar o script [stop_docker.sh](stop_docker.sh) no diretório oracle, caso tenha sido executado em background.

```bash
./stop_docker.sh
```

ou através do docker-compose, caso tenha sido executado em background

```bash
cd oracle
docker-compose stop
```

## Scripts SQL

- [Criação de tabelas](create_tables.sql)
