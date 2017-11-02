class Rol{
	var cinturon=[]
	method tengoEstasHerramientas(herramientas){
		return herramientas.all{ n=> cinturon.contains(n) }
	}
	method soldado()=false
	method mucama()=false
	method obrero()=false
}

class Soldado inherits Rol{
	var practica
	var arma
	constructor(_arma){
		arma=_arma 
		practica=0
	}
	method aumentarExperiencia(){
		practica=practica+1
	}
	method dano(){
		return arma.dano()+(2*practica)
	}
	override method soldado()=true
}

class Obrero inherits Rol{
	constructor(_cinturon){
		cinturon=_cinturon
	}
	override method obrero()=true
}

class Mucama inherits Rol{
	override method mucama()=true
}