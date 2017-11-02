


class Empleado{
	var rol
	var tarea
	var estamina=0
	constructor(_rol,_tarea){
		rol=tarea
		tarea=_tarea
	}
	method estamina()
	method fuerza()
	method restarEstamina(cantidad){
		estamina=estamina-cantidad
	}
	method rol()=rol
}

class Biclope inherits Empleado{
	constructor(_rol,_tarea,_estamina)=super(_rol,_tarea){
		estamina=_estamina
	}
	override method estamina()=estamina
}

class Ciclope inherits Empleado{
	override method estamina()=99999
} 

