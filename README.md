# LINUX

Documentação do que estou aprendendo sobre LINUX, afim de facilitar a consulta e consequentemente ajudar caso seja necessário.

## Sumário

- [1. Comandos básicos](#1-comandos-básicos)
- [1.1 CD](#11-cd)
- [1.2 LS](#12-ls)
- [1.3 MKDIR](#13-mkdir)
- [1.4 RM](#14-rm)
- [1.5 CP](#15-cp)
- [1.6 MV](#16-mv)
- [1.7 CAT](#17-cat)
- [1.8 PWD](#18-pwd)
- [1.9 ECHO](#19-echo)
- [1.10 WHOAMI](#110-whoami)
- [1.11 TOUCH](#111-touch)
- [1.12 TAIL](#112-tail)
- [1.13 HEAD](#113-head)
- [1.14 GREP](#114-grep)
- [1.15 PING](#115-ping)
- [1.16 CHMOD](#116-chmod)

- [2. Comandos Intermediários](#2-comandos-intermediários)
- [2.1 Concatenação de comandos](#21-concatenação-de-comandos)
- [2.2 Redirecionamento entre comandos](#22-redirecionamento-entre-comandos)

## 1. Comandos básicos
Seção para anotar comandos mais simples.

### 1.1 CD
---
```bash
# Muda o diretório atual para o diretório especificado
cd /home/user

# Muda o diretório atual para o diretório anterior
cd ..

# Muda o diretório atual para o diretório anterior
cd -

# Muda o diretório atual para o diretório home do usuário
cd ~
```

### 1.2 LS
---
```bash
# Lista os arquivos e diretórios do diretório atual
ls

# Lista os arquivos e diretórios do diretório especificado
ls /home/user

# Lista os arquivos e diretórios do diretório atual, incluindo arquivos ocultos
ls -a

# Lista os arquivos e diretórios do diretório atual, incluindo arquivos ocultos e com detalhes
ls -la
```

### 1.3 MKDIR
---
```bash
# Cria um diretório no diretório atual
mkdir pasta

# Cria um diretório no diretório especificado
mkdir /home/user/pasta
```

### 1.4 RM
---
```bash
# Remove um arquivo
rm arquivo

# Remove um diretório
rm -rf pasta
```

### 1.5 CP
---
```bash
# Copia um arquivo
cp arquivo1 arquivo2

# Copia um diretório
cp -r pasta1 pasta2
```

### 1.6 MV
---
```bash
# Move um arquivo
mv arquivo1 arquivo2

# Move um diretório
mv pasta1 pasta2
```

### 1.7 CAT
---
```bash
# Exibe o conteúdo de um arquivo
cat arquivo
```

### 1.8 PWD
---
```bash
# Exibe o diretório atual
pwd
```

### 1.9 ECHO
---
```bash
# Exibe o texto especificado
echo "texto"

# Exibe o texto especificado, ignorando caracteres especiais
echo -e "texto"

# Cria um arquivo com o nome especificado e o conteúdo especificado
echo "conteúdo" > arquivo

# Adiciona o conteúdo especificado ao final do arquivo especificado
echo "conteúdo" >> arquivo
```

### 1.10 WHOAMI
---
```bash
# Exibe o nome do usuário atual
whoami
```

### 1.11 TOUCH
---
```bash
# Cria um arquivo com o nome especificado
touch arquivo
```

### 1.12 TAIL
---
```bash
# Exibe as últimas linhas de um arquivo
tail arquivo

# Exibe as últimas linhas de um arquivo, atualizando a cada 2 segundos
tail -f arquivo
```

### 1.13 HEAD
---
```bash
# Exibe as primeiras linhas de um arquivo
head arquivo
```

### 1.14 GREP
---
```bash
# Exibe as linhas que contém a palavra especificada
grep palavra arquivo

# Exibe as linhas que contém a palavra especificada, ignorando maiúsculas e minúsculas
grep -i palavra arquivo

# Exibe as linhas que contém a palavra especificada, ignorando maiúsculas e minúsculas e exibindo o número da linha
grep -in palavra arquivo
```

### 1.15 PING
---
```bash
# Verifica se o host está online
ping host

# Verifica se o host está online, exibindo o resultado em formato de tabela
ping -c 4 host
```

### 1.16 CHMOD
---
```bash
# Altera as permissões do arquivo especificado
chmod 777 arquivo
```

## 2. Comandos Intermediários

Seção para anotar alguns comandos com grau de complexidade maior.

### 2.1 Concatenação de comandos:
---
Utilizando concatenação entre comandos e o que fazem:

```sh
sudo apt update && sudo apt upgrade 
# Se o primeiro for verdadeira o segundo será executado;

sudo apt update || sudo apt upgrade 
# Se o primeiro for verdadeiro o segundo não será executado;

sudo apt update ; sudo apt upgrade 
# Ele executa os comandos em ordem independetemente do resultado do primeiro;
```

### 2.2 Redirecionamento entre comandos
---
Pegando o output do primeiro comando e inputando no segundo:

```sh
ls /etc | tee arquivos.txt
```

