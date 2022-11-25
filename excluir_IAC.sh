#!/bin/bash

userdel  carlos -r
userdel  maria -r
userdel  joao -r
userdel  debora -r
userdel  sebastiana -r
userdel  roberto -r
userdel  josefina -r
userdel  amanda -r
userdel  rogerio -r
userdel  teste -r
groupdel -f GRP_ADM
groupdel -f GRP_VEN
groupdel -f GRP_SEC
rmdir -v /publico
rmdir -v /adm
rmdir -v /ven
rmdir -v /sec
