#!/bin/bash

echo "criando script  IAC-1"
echo "autor Marcelo Vidal"
echo "linux avançado - DIO"
echo "1-criando diretorios"
echo "---------------------"


mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "2-criando grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "3-criando usuarios"

useradd carlos -m -s /bin/bash -p $(openssl passwd  senha123)  -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd  senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd  senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd  senha123)-G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd  senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash  -p $(openssl passwd  senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd  senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd  senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd  senha123) -G GRP_SEC


echo "4-atribuindo dono aos diretorios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "5-permissoes do root"

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "fim de script"


