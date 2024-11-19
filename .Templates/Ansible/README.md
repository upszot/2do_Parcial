# Ansible - playbook - 2do_Parcial

## Informacion:
- playbook de ansible que llama a distintos roles.
	- ~~**role**~~
	
- Se deja una estructura **funcional** 

> El alumno debera Generar el rol pedido. </br>
> El playbook debera de llamar a todos los roles pedidos.</br>
> El Alumno debera realizar los ajustes en su entorno para que el playbook pueda correr</br>
> Conectandose con ssh-key a las distintas VM.</br>


## Ejecucion (Parado en la carpeta "ansible/"):
```sh
reset; ansible-playbook -i inventory/hosts playbook.yml
```

### Contenido:
- playbook.yml  -> receta 
- ansible.cfg -> configuracion local de ansible
- inventory
	- hosts -> inventario propiamente dicho en formato INI
	- host_vars  -> variables espesificas a un host
	- group_vars -> variables espesificas para grupos de host
- roles
  - ~~**role**~~
   	

### Comportamiento deseado:
- El playbook llama a los roles: 
	- ~~**role**~~
> Se ejecuta contra el listado de host definido </br>
> Tomando los valores de las variables de los distintos archivos </br>
 
