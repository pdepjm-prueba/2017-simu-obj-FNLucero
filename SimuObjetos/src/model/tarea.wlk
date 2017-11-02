class Tarea{
	method hacerTarea(empleado)
	method dificultad()
}


class ArreglarMaquina inherits Tarea{
	var maquina
	constructor(_maquina){
		maquina=_maquina
	}
	method maquina()=maquina
	method maquina(_maquina){maquina=_maquina}
	override method hacerTarea(empleado){
		if (self.tieneHerramientas(empleado.rol(),maquina.herramientas()) && empleado.estamina()>=maquina.complejidad() )
		{
			empleado.restarEstamina(maquina.complejidad())
		}
		else{
			error.throwWithMessage("No puedo arreglarla wachin")
		}
	}
	method tieneHerramientas( rol , herramientas ){
		return rol.tengoEstasHerramientas(herramientas)
	}
	override method dificultad(){
		return maquina.complejidad()*2
	}
}

class LimpiarSector inherits Tarea{
	var dificultad
	var sector
	constructor(_sector){
		dificultad=10
		sector=_sector
	}
	override method dificultad()=dificultad
	method cambiarDificultad(_dificultad){
		dificultad=_dificultad
	}
	method esMucama(empleado){
		return empleado.rol().mucama()
	}
	override method hacerTarea(empleado){
		if(self.esMucama(empleado).negate() && sector.grande() && empleado.estamina()>=4)
		{
			empleado.restarEstamina(4)
		}	
		if(self.esMucama(empleado).negate() && sector.grande() && empleado.estamina()>=1){
			empleado.restarEstamina(1)
		}
	}
}





