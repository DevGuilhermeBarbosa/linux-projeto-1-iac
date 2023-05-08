#!/bin/bash

echo "Criando Diretórios: "

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos: "

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários: "

useradd carlos -c "Carlos Silva" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_ADM
useradd maria -c "Maria Silva" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_ADM
useradd joao -c "João Silva" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_ADM
useradd debora -c "Débora Silva" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Silva" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_VEN
useradd roberto -c "Roberto Silva" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_VEN
useradd josefina -c "Josefina Silva" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_SEC
useradd amanda -c "Amanda Silva" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_SEC
useradd rogerio -c "Rogerio Silva" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_SEC

echo "Definindo root como dono dos diretórios..."

chown root /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Definindo permissão total diretório público..."

chmod 777 /publico

echo "Definindo permissão total de cada grupo, dentro do seu respectivo diretório..."

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec 

echo "Execução Finalizada..."
