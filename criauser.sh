#!/bin/bash

echo "Criando usuários"

useradd guest1 -c "Usuário Convidado 1" -m -s /bin/bash -p $(openssl passwd -6 Senha123)
passwd guest1 -e

useradd guest2 -c "Usuário Convidado 2" -m -s /bin/bash -p $(openssl passwd -6 Senha123)
passwd guest2 -e

echo "Finalizado"
