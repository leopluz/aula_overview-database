# Aula de Overview de Banco de Dados

## Execução

Informações específicas para criação de contâiner Docker dos bancos de dados:

- [MySQL/MariaDB](mysql)
- [PostgreSQL](postgresql)
- [Oracle XE](oracle)
- [MongoDB](mongodb)
- [Cassandra](cassandra)
- [Redis](redis)

### Permissão para execução dos Shell scripts

Para adicionar a permissão de execução para os arquivos *start_docker.sh* e *stop_docker.sh* na estrutura de diretórios, entre no diretório do projeto [aula_overview-database](./) e execute o seguinte comando:

```bash
find ./ -type f \( -name "start_docker.sh" -o -name "stop_docker.sh" \) -exec chmod o+x {} \;
```

### Diretório contendo mapeamento dos volumes

Por padrão, todos os containers estão configurados para salvar no diretório */var/docker-storage*, portanto antes de qualquer execução é necessário criar esse diretório com permissão de escrita.

```bash
mkdir /var/docker-storage
chmod 766 /var/docker-storage
```

### Inicializar o Contâiner

Entre no diretório desejado (onde encontra-se o arquivo *docker-compose.yml*) e execute:

```bash
./start_docker.sh
```

ou

```bash
docker-compose up -d
```


### Finalizar o Contâiner

Entre no diretório desejado (onde encontra-se o arquivo *docker-compose.yml*) e execute:

```bash
./stop_docker.sh
```

ou

```bash
docker-compose stop
```

### Visualizar Logs do Contâiner

Entre no diretório desejado (onde encontra-se o arquivo *docker-compose.yml*) e execute:

```bash
docker logs  <nome_do_container>
```
