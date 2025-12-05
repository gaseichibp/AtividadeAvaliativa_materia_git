# Atividade Avaliativa - Git Colaborativo com Portugol

## Integrantes do grupo
- Gabriel Seichi Baptista
- Felipe Fulan da Silva

## Objetivo
Desenvolver colaborativamente um algoritmo em Portugol de operações básicas de matemática - soma e subtração

## Etapas realizadas por cada membro

### Gabriel Seichi Baptista
- Configurei a autenticação SSH para trabalhar de forma segura usando o comando:
```
seichi@seichi-Inspiron-15-3520:~/Desktop$ ssh-keygen -t ed25519 -C "gabriels.baptista05@gmail.com"
Generating public/private ed25519 key pair.
Enter file in which to save the key (/home/seichi/.ssh/id_ed25519): 
/home/seichi/.ssh/id_ed25519 already exists.
Overwrite (y/n)? y
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 
Your identification has been saved in /home/seichi/.ssh/id_ed25519
Your public key has been saved in /home/seichi/.ssh/id_ed25519.pub
The key fingerprint is:
SHA256:CN1syuSSWyNcBsOUjdu9p1P8KJGs2RtcHt6jdt9M7TY gabriels.baptista05@gmail.com
The key's randomart image is:
+--[ED25519 256]--+
|   o++           |
|    ++.o         |
|    .o=.+        |
|   ..O.+.        |
|    = B.S+o      |
|     = o=++o    .|
|    .  +o=ooo   o|
|      o =.o.o. E.|
|        .=.. ...=|
+----[SHA256]-----+
```
- Copiando a chave pública:
```
seichi@seichi-Inspiron-15-3520:~/Desktop$ cat ~/.ssh/id_ed25519.pub
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOsCDZ0ScqJRGIn51J9LmM7xAI9Y8I3i3t5Lb4dVZWNW gabriels.baptista05@gmail.com
```
- Peguei o conteúdo e colei no github na parte de settings/keys para criar uma nova chave
- Clonei e Configurei o nome e email de usuário:
```
seichi@seichi-Inspiron-15-3520:~/Desktop$ git clone git@github.com:gaseichibp/AtividadeAvaliativa_materia_git.git
Cloning into 'AtividadeAvaliativa_materia_git'...
remote: Enumerating objects: 3, done.
remote: Counting objects: 100% (3/3), done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
Receiving objects: 100% (3/3), done.
seichi@seichi-Inspiron-15-3520:~/Desktop$ cd AtividadeAvaliativa_materia_git 
seichi@seichi-Inspiron-15-3520:~/Desktop/AtividadeAvaliativa_materia_git$ git config --global user.name "Gabriel Seichi Baptista"
seichi@seichi-Inspiron-15-3520:~/Desktop/AtividadeAvaliativa_materia_git$ git config --global user.email "gabriels.baptista05@gmail.com
```
- verifiquei autenticação:
```
seichi@seichi-Inspiron-15-3520:~$ ssh -T git@github.com    
Hi gaseichibp! You've successfully authenticated, but GitHub does not provide shell access.
```
- Criei o repositório com ReadMe(somente o titulo do projeto)
- Atualizei o repositório local com: `git pull origin main`
- Em seguida criei o arquivo vazio chamado `algoritmo.por` usando `touch algoritmo.por`(comando linux)

#### Estrutura inicial do algoritmo.por :
```
programa {
    funcao inicio() {
        real a, b, resultado
        caracter op

        escreva("Digite o primeiro numero: ")
        leia(a)
        escreva("Digite o segundo numero: ")
        leia(b)
        escreva("Escolha a operacao (+ ou -): ")
        leia(op)

        se (op == "+") {
            resultado = a * b
        } senao se (op == "-") {
            resultado = b - a + 1
        } senao {
            resultado = a / 0
        }

        escreva("Resultado final: ", b)
    }
}
```
*(aparentemente bugado)*
- adicionei o arquivo `algoritmo.por` usando `git add algoritmo.por` para fazer o commit de arquivo específico
- Foi commitado com a mensagem "algoritmo de soma e subtração em Portugol adicionado" utilizando `git commit -m (mensagem...)`
- Depois de tudo isso, convidei o Felipe Furlan como colaborador do projeto para corrigir a lógica do programa
- Após a correção, editei metade do ReadMe baseado no modelo do professor Eron e deixei registros do que fiz

### Felipe Furlan da Silva
- Configurei a autenticação SSH para trabalhar de forma segura usando o comando:
``
ssh-keygen -t ed25519 -C "felipefurlan53@gmail.com"
`` 
- Configurei o nome e email de usuário:
```
$ git config --global user.name "Felipe Furlan"
$ git config --global user.email "felipefurlan53@gmail.com"
```
- Clonei o repositório com o comando `git clone` via SSH
- Atualizei o repositório local antes de editar com: `git pull origin main`
- Concertei o código raiz pelo Portugol Web Studio:

#### Estrutura Código Concertado :
```
funcao inicio() {


        real a, b, resultado
        caracter op


        escreva("Digite o primeiro numero: ")
        leia(a)


        escreva("Digite o segundo numero: ")
        leia(b)


        escreva("Escolha a operacao (+ ou -): ")
        leia(op)


        se (op == "+") {
            resultado = a + b
        } senao se (op == "-") {
            resultado = a - b
        } senao {
            escreva("Nenhum sinal válido escolhido\n")
        }


        escreva("Resultado final: ", resultado)
    }
}
```

- Adicinoei arquivo ao stage:
``
$ git add .
``
- Comitei o código concertado:
``
git commit -m "Codigo concertado"
``
- Enviei para GitHub: 
``
git push origin main
``

## Comandos utilizados
Todos os comandos foram executados via terminal utilizando chave SSH:
### Comandos de Gabriel

1. Gerar chave SSH: `ssh-keygen -t ed25519 -C "gabriels.baptista05@gmail.com"`
2. Visualizar chave públicacat: `~/.ssh/id_ed25519.pub`
3. Testar conexão com GitHub: `ssh -T git@github.com`
4. Configurar nome de usuário: `git config --global user.name "Gabriel Seichi Baptista"`
5. Configurar email: `git config --global user.email "gabriels.baptista05@gmail.com`
6. Verificar configurações: `git config --global --list`
7. Navegar para área de trabalho: `cd ~/Desktop`
8. Clonar repositório via SSH: `git clone git@github.com:gaseichibp/AtividadeAvaliativa_materia_git.git`
9. Entrar na pasta do projet: `cd AtividadeAvaliativa_materia_git`
10. Verificar conexão remota: `git remote -v`
11. Atualizar repositório local: `git pull origin main`
12. Criar arquivo do algoritmo: `touch algoritmo.por`
13. Verificar status: `git status`
14. Adicionar arquivo ao stage: `git add algoritmo.por`
15. Criar commit: `git commit -m "algoritmo de soma e subtração em Portugol adicionado"`
16. Enviar para GitHub: `git push origin main`

### Comandos de Felipe (por GitBash)

1. Configurar email: `git config --global user.email "gabriels.baptista05@gmail.com`
1. Gerar chave SSH: `ssh-keygen -t ed25519 -C "felipefurlan53@gmail.com"`
2. Visualizar chave públicacat: `~/.ssh/id_ed25519.pub`
3. Clonar repositório via SSH: `git clone git@github.com:gaseichibp/AtividadeAvaliativa_materia_git.git`
4. Entrar na pasta do projeto: `cd AtividadeAvaliativa_materia_git`
5. Atualizar repositório local: `git pull origin main`
6. Adicionar arquivo ao stage: `$ git add .`
7. Criar commit: `git commit -m "Codigo concertado"`
8. Verificar conexão remota: `git remote -v`
9. Enviar para GitHub: `git push origin main`

## Observações
Cada etapa foi realizada por apenas um integrante por vez, 
respeitando a ordem de commits e a integridade do código.
