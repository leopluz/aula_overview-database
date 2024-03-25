# Aula de Overview de Banco de Dados

## Execução

Criação de contâiner Docker dos bancos de dados:

- [MySQL](mysql)
- [PostgreSQL](postgresql)
- [Oracle XE](oracle)
- [MongoDB](mongodb)
- [Cassandra](cassandra)
- [Redis](redis)

### Inicializar o Contâiner

```bash
./start_docker.sh
```

### Finalizar o Contâiner

```bash
./stop_docker.sh
```

### Visualizar Logs do Contâiner

```bash
docker logs  <nome_do_container>
```

## Ocorrências

### MySQL: Connection refused

#### Situação 

Ao tentar conectar no MySQL através do phpMyAdmin é apresenato o erro:

```bash
mysqli::real_connect(): (HY000/2002): Connection refused
```

#### Solução

Aguardar a inicialização do banco de dados MySQL

#### Causa

Isso ocorre pelo fato da inicialização do banco de dados MySQL demorar ao realizar a preparação dos seus dados, principalmente na primeira vez em que ele é executado.

Fonte: "*No connections until MySQL init completes*" em [MySQL Docker Hub - Quick reference](https://hub.docker.com/_/mysql).
