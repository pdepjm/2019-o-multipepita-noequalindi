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
		energia += comida.energiaQueOtorga()
	}
	method estaFeliz(){
		return energia > 500 && energia < 1000
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
		pepita.vola(5)
		pepita.come(alpiste)
		pepita.vola(5)
	}
	method haceLoQueQuieras() {
		var cansada = pepita.estaCansada()
		var feliz = pepita.estaFeliz()
		if(cansada) {
			pepita.come(alpiste)
		}
		if(feliz) {
			pepita.vola(8)
		}
		return energia
	}

}

object mijo {
	var esMojado = true
	var energia = mijo.energiaQueOtorga()
	var incrementar = 5
	method mojarse(){ 
		 return energia	
	}
	method secarse() {
		esMojado = false
		energia += incrementar 
		return energia
	}
	method energiaQueOtorga() { 
		return 15
	}	
}
object canelones {
	var energia = canelones.energiaQueOtorga()
	var valorSalsa = 5
	var valorQueso = 7

	method ponerAdicional(adicional) {
		if (adicional == "salsa")
		{
		  energia += valorSalsa
	 	} 
	 	if (adicional == "queso") { 
	 		energia += valorQueso
	 	}
	 	return energia
	 }
	
	method sacarAdicional(adicional) {
		if (adicional == "salsa") {
			energia -= valorSalsa
		}
		if (adicional == "queso") { 
			energia -= valorQueso
		}
		return energia
	}
    method energiaQueOtorga() {
	return 20
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
object roque {
	method entrenar() {
		pepita.vola(10)
		pepita.come(alpiste)
		pepita.vola(5)
		pepita.haceLoQueQuieras()
	}
}