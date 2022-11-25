#!/bin/bash

echo "criando diretorios....."
cd /
mkdir -v /publico
mkdir -v /adm
mkdir -v /ven
mkdir -v /sec
echo "configurando  diretorios....."
chown -v root:root /publico
chown -v root:root /adm
chown -v root:root /ven
chown -v root:root /sec
echo  "Fim diretorio"
echo "criando grupos....."
groupadd -f GRP_ADM
echo "criado GRP_ADM"
groupadd -f GRP_VEN
echo "criado GRP_VEN"
groupadd -f GRP_SEC
echo "criado GRP_SEC"
chmod -v 777 /publico
chmod -v 770 /adm
chmod -v 770 /ven
chmod -v 770 /sec 
useradd carlos -c "carlos GRP_ADM" -s /bin/bash -m -G GRP_ADM -p $(openssl passwd -crypt 123)
passwd carlos -e
useradd maria -c "maria GRP_ADM" -s /bin/bash -m -G GRP_ADM -p $(openssl passwd -crypt 123)
passwd maria -e
useradd joao -c "joao GRP_ADM" -s /bin/bash -m -G GRP_ADM -p $(openssl passwd -crypt 123)
passwd joao -e
useradd debora -c "debora GRP_VEN" -s /bin/bash -m -G GRP_VEN -p $(openssl passwd -crypt 123)
passwd debora -e
useradd sebastiana -c "sebastiana GRP_VEN" -s /bin/bash -m -G GRP_VEN -p $(openssl passwd -crypt 123)
passwd sebastiana -e
useradd roberto -c "roberto GRP_VEN" -s /bin/bash -m -G GRP_VEN -p $(openssl passwd -crypt 123)
passwd roberto -e
useradd josefina -c "josefina GRP_SEC" -s /bin/bash -m -G GRP_SEC -p $(openssl passwd -crypt 123)
passwd josefina -e
useradd amanda -c "amanda GRP_SEC" -s /bin/bash -m -G GRP_SEC -p $(openssl passwd -crypt 123)
passwd amanda -e
useradd rogerio -c "rogerio GRP_SEC" -s /bin/bash -m -G GRP_SEC -p $(openssl passwd -crypt 123)]
passwd rogerio -e
