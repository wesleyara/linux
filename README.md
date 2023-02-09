# LINUX

Documentação do que estou aprendendo sobre LINUX, afim de facilitar a consulta e consequentemente ajudar caso seja necessário.

## Configurações e instalações

### Aliases

Os aliases são comandos que podem ser executados através de um atalho. Para criar um alias, siga o exemplo do arquivo [aliases](/doc//aliases.sh), dependendo de qual terminal você está utilizando, o nome do arquivo pode ser diferente afim de identificar de forma mais prática, porém é importante que você faça a seguinde config:

Para quem utiliza o bash:

```bash
# edite o arquivo ~/.bashrc com seu editor favorito, aqui usaremos o nano.

nano ~/.bashrc

# adicione o seguinte conteúdo no final do arquivo
if [ -f ~/.bashrc_aliases ]; then
    . ~/.bashrc_aliases
fi
```

Para quem usa o zsh:

```bash
# edite o arquivo ~/.zshrc com seu editor favorito, aqui usaremos o nano.

nano ~/.zshrc

# adicione o seguinte conteúdo no final do arquivo
if [ -f ~/.zshrc_aliases ]; then
    . ~/.zshrc_aliases
fi
```

ou qualquer outro terminal que você utilize, basta procurar o arquivo de configuração e adicionar o conteúdo acima no final do arquivo.

---

### Postgress com Docker

Muitas vezes precisamos criar diversos bancos de dados em Postgress para testes, e não queremos instalar o Postgress na máquina, para isso podemos utilizar o Docker.

Para instalar o Postgres e criar um banco de dados, veja o arquivo [postgres-with-docker](/doc/postgres-with-docker.sh).

## Sumário de comandos

## [1. Comandos básicos](#1-comandos-básicos)

[1.1 CD](#11-cd)
<br/>
[1.2 LS](#12-ls)
<br/>
[1.3 MKDIR](#13-mkdir)
<br/>
[1.4 RM](#14-rm)
<br/>
[1.5 CP](#15-cp)
<br/>
[1.6 MV](#16-mv)
<br/>
[1.7 CAT](#17-cat)
<br/>
[1.8 PWD](#18-pwd)
<br/>
[1.9 ECHO](#19-echo)
<br/>
[1.10 WHOAMI](#110-whoami)
<br/>
[1.11 TOUCH](#111-touch)
<br/>
[1.12 TAIL](#112-tail)
<br/>
[1.13 HEAD](#113-head)
<br/>
[1.14 GREP](#114-grep)
<br/>
[1.15 PING](#115-ping)
<br/>
[1.16 CHMOD](#116-chmod)
<br/>
[1.17 ZIP e UNZIP](#117-zip-e-unzip)
<br/>
[1.18 TAR](#118-tar)
<br/>
[1.19 BZIP2](#119-bzip2)
<br/>
[1.20 PS](#120-ps)
<br/>
[1.21 KILL](#121-kill)
<br/>
[1.22 LOCATE](#122-locate)
<br/>
[1.23 DPKG](#123-dpkg)
<br/>
[1.24 SSH](#124-ssh)
<br/>
[1.25 SCP](#125-scp)
<br/>
[1.26 LSOF](#126-lsof)
<br/>
[1.27 AWK](#127-awk)

## [2. Comandos Intermediários](#2-comandos-intermediários)

[2.1 Concatenação de comandos](#21-concatenação-de-comandos)
<br />
[2.2 Redirecionamento entre comandos](#22-redirecionamento-entre-comandos)
<br />

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
# Adiciona permissão de execução para o usuário, grupo e outros
chmod +x arquivo

# Remove permissão de execução para o usuário, grupo e outros
chmod -x arquivo

# Permite executar arquivos sh clicando diretamente neles
```

### 1.17 ZIP e UNZIP

---

```bash
# Compacta o arquivo especificado
zip arquivo.zip arquivo

# Compacta o diretório especificado
zip -r pasta.zip pasta

# Descompacta o arquivo especificado
unzip arquivo.zip

# Lista o conteúdo do arquivo especificado
unzip -l arquivo.zip
```

### 1.18 TAR

---

```bash
# Compacta o arquivo especificado
tar -cvf arquivo.tar.gz arquivo

# Compacta o diretório especificado
tar -cvf pasta.tar.gz pasta

# Descompacta o arquivo especificado
tar -xvf arquivo.tar.gz

# Lista o conteúdo do arquivo especificado
tar -tvf arquivo.tar.gz
```

### 1.19 BZIP2

---

```bash
# Compacta o arquivo especificado
tar -cvjf arquivo.tar.bz2 arquivo

# Compacta o diretório especificado
tar -cvjf pasta.tar.bz2 pasta

# Descompacta o arquivo especificado
tar -xvjf arquivo.tar.bz2
```

### 1.20 PS

---

```bash
# Exibe os processos ativos
ps -e

# Exibe os processos ativos com detalhes a mais
ps -ef

# Filtra os processos ativos pelo nome especificado
ps -ef | grep nome
```

### 1.21 KILL

---

```bash
# Mata o processo especificado
kill -9 15487
```

### 1.22 LOCATE

---

```bash
# Exibe o caminho do arquivo especificado
locate firefox

# Atualiza o banco de dados do locate
updatedb
```

### 1.23 DPKG

---

```bash
# Instala o pacote especificado
dpkg -i pacote.deb

# Remove o pacote especificado
dpkg -r pacote

# Lista os pacotes instalados
dpkg -l
```

### 1.24 SSH

---

```bash
# Conecta ao servidor especificado
ssh user@host

# Conecta ao servidor especificado, com gráfico
ssh -X user@host

# Conecta ao servidor especificado, especificando a porta
ssh -p 2222 user@host

# Conecta ao servidor especificado, especificando a chave privada
ssh -i chave.pem user@host
```

### 1.25 SCP

---

```bash
# Copia o arquivo especificado para o servidor especificado
scp arquivo user@host:/caminho

# Copia o arquivo especificado do servidor especificado
scp user@host:/caminho/arquivo arquivo
```

### 1.26 LSOF

```bash
# Exibe os arquivos abertos pelo processo especificado
lsof -p 15487
```

### 1.27 AWK

```bash
# Exibe as linhas que contém a palavra especificada
awk '/palavra/' arquivo

# Exibe todos nomes de arquivos sem suas extensões
ls | awk -F. '{print $1}'
```

## 2. Comandos Intermediários

Seção para anotar alguns comandos com grau de complexidade maior.

### 2.1 Concatenação de comandos:

---

Utilizando concatenação entre comandos e o que fazem:

```bash
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

```bash
ls /etc | tee arquivos.txt
```

### 2.3 Diretórios de scripts

---

Quando queremos utilizar scripts criados por nós mesmos diretamente no terminal, temos dois diretórios importantes:

- /etc/init.d = Todos os scripts (services) que irão iniciar junto com a máquina;
- /usr/bin = Todos os scripts adicionados que podem ser chamados de qualquer lugar pelo terminal.

### 2.4 Instalar programas que vem em tar.gz

Para realizar essa instalação é necessário descompactar, acessar a pasta e rodar os seguintes comandos:

```bash
# Para checar todas as depedências, rode
./configure

# Para montar o pacote
make

# Para instalar o pacote
sudo make install
```
