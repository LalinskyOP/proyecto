#!/bin/bash
clear
fecha=$(date +%d/%m/%Y)
dia=`date +%d`
echo "Hoy es: $fecha" 
	if [ $dia -le 10 ]
		then
read -p "Ingrese su número de apartamento: " id_apto
if grep -wq $id_apto propietarios.txt 2> /dev/null
then
read -p "El pago corresponde al mes de: " corresponde_mes
monto5="1995"
echo $id_apto:$corresponde_mes:$monto5 >> pagos.txt
else
echo -n "Número de apartamento incorrecto, para volver a ingresar un apartamento nuevo presione cualquier tecla, para salir presione s: "
read op
if [ $op = s ]
then 
echo Saliendo...
	else 
if grep -wq $id_apto propietarios.txt 2> /dev/null
then 
read -p "El pago corresponde al mes de: " corresponde_mes
monto="2100"
echo $id_apto:$corresponde_mes:$monto >> pagos.txt
else
echo Numero de apto incorrecto 
	if [ $op = s ]
then 
echo Saliendo
	fi
fi 
fi
fi
fi
