# Este script es para instalar la Pila LAMP
# Linux(No se instalara obviamente)+Apache+MySQL+PHP

if [ $USER = 'root' ];
then
	echo 'Desea instalar los paquetes de PHP, Apache y MySQL?[Y/n]'
	read userin
	if [ $userin = 'Y' ] || [ $userin = 'y' ];
	then
		echo 'Se instalara la Pila de LAMP\n\n\n'
		apt install apache2 apache2-bin php libapache2-mod-php mysql-server mysql-client php-mysql
		echo 'Deseas instalar tambien phpMyAdmin?\n Si decides instalarlo, deberas configurar tu contraeña[y/n]'
		read userin2
		if [ $userin2 = 'Y' ] || [ $userin2 = 'y' ] ; then
			apt install phpmyadmin
		else
			echo 'No se instalara phpmyadmin'
		fi
		echo "\n\nHemos terminado todo"
	else
		echo 'No se instalara nada'
	fi

else
	echo '\n\tSe necesitan permisos de superusuario para ejecutar este Script'
	echo '\n\tPruebe a ejecutar el Script con sudo'
fi