# Conteúdo apresentado na Aula de Overview de banco de dados

Possui a informação para criação de contâiner Docker dos bancos de dados:

- [MySQL](mysql)
- [PostgreSQL](postgresql)
- [Oracle XE](oracle)

Para inicializar: executar o shellscript **start_docker.sh** 

Para finalizar: executar o shellscript **stop_docker.sh**

Para visualizar os logs: `docker logs  <nome_do_container>`

## Situações apresentadas

### MySQL

#### Connection refused

- **Situação:** Ao tentar conectar no MySQL através do phpMyAdmin era apresenato o erro: `mysqli::real_connect(): (HY000/2002): Connection refused`
- **Solução:** Aguardar a inicialização do banco de dados MySQL
- **Causa:** Isso ocorre pelo fato da inicialização do banco de dados MySQL demorar ao realizar a preparação dos seus dados, principalmente na primeira vez em que ele é executado. Item *No connections until MySQL init completes* [MySQL Docker Hub - Quick reference](https://hub.docker.com/_/mysql).

