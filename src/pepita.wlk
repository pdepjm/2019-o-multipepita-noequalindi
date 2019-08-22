object pepita {
	var energia = 0
	method energia() {
		return energia
	}

	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	method estaFeliz(ener){
		return ener > 500 && ener < 1000
	}
	method cantoQuiereVolar(ener) {
		var quiereVolar = ener/5
		if  (ener > 300 && ener < 400) { 
			if (ener % 20 == 0) {
		    	quiereVolar += 15
			}	
			return quiereVolar+10
		} else { 
			return quiereVolar
		}
	}
	method salirAComer() {
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
}

object mijo {
	var esMojado = true
	var cambioEnergia = self.energiaQueOtorga()
	var incrementar = 5
	
	method mojarse(){ 
		 return cambioEnergia	
	}
	method secarse() {
		esMojado = false
		return cambioEnergia+=incrementar
	}
	method energiaQueOtorga() { 
		return 15
	}	
}
object canelones {
	var adicional = true
	
	method ponerAdicional(adicional) {
		if (adicional == "salsa")
		{
		if(!adicional) {
		adicional = true
	 } 
	 }
	}
	method sacarAdicional(adicional) {
		if (adicional) { adicional = false }
	}
}
object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}