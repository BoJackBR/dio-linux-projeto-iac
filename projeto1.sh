#!/bin/bash

#Projeto DIO - Script de Criação de Estrutura de Usuários, Diretórios e Permissões
#Criado por Wellington Rodrigues - 18/10/22

#Criar pastas
mkdir /publico; mkdir /adm; mkdir /ven; mkdir /sec

#Criar grupos
groupadd GRP_ADM; groupadd GRP_VEN; groupadd GRP_SEC

#Criar usuarios
useradd carlos -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -6 Senha123)
useradd maria -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -6 Senha123)
useradd joao -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -6 Senha123)
useradd debora -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -6 Senha123)
useradd sebastiana -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -6 Senha123)
useradd roberto -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -6 Senha123)
useradd josefina -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -6 Senha123)
useradd amanda -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -6 Senha123)
useradd rogerio -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -6 Senha123)

#Criar permissao pastas
chmod 777 /publico
chmod 770 /adm; chown root:GRP_ADM /adm
chmod 770 /ven; chown root:GRP_VEN /ven
chmod 770 /sec; chown root:GRP_SEC /sec
