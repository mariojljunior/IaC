#!/bin/bash

echo "=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=++=+=+=+=+=+=+=+=+=+="
echo "INFRAESTRUTURA COMO CÓDIGO - Um desafio de código do bootcamp Imersão Linux"
echo "=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=++=+=+=+=+=+=+=+=+=+="

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "==========================================================================================="
echo "Criando usuários a adicionando-os aos seus respectivos grupos..."

useradd carlos -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd joao -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd debora -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd sebastiana -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd josefino -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd amanda -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd rogerio -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "==========================================================================================="
echo "Criando pastas..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo "==========================================================================================="

echo "Determinando permissões das pastas..."
echo "Passo 1: Atribuindo donos e grupos..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
echo "Passo 2: Atribuindo Permissões..."
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "================================FIM DO SCRIPT======================================="