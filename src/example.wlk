/** El Lobo Feroz*/
object loboFeroz {
	var peso = 10
	
	method peso(){
		return peso
	}
	
	method comerAlimento(pesoAlimento) {
		peso += pesoAlimento
	}
	

	
	method FerozEstaSaludable(){
		/* método de consulta: Está saludable? */
		return peso >= 20 and peso <=150
		}
		
	method ferozCorre(){
		/* Feroz corre hacia cualquier lugar y su peso disminuye
		 * una unidad.
		 */
		 peso = peso - 1
	}
	
	method comer(comida){
		/* ANOTACIONES: Consulta el peso de la persona y luego 
		 *  suma el 10% del peso al "comerlo".
		 */
		 peso += (comida.peso() * 10) / 100 
	}
	
	method crisis(){
		peso = 10
		
	}
	
	method soplar(resistencia, chanchito){
		peso-= (resistencia + chanchito)
	}
	
	
}

// ALIMENTOS PARA EL LOBO


	
/*Caperucita y abuelita */	

object caperucitaRoja {
	var canasta = 1.2
	var peso = 60 + canasta
	
	method peso(){
		return peso
	}
	
	method manzanaPerdida(){
		canasta-= 0.2
		peso = peso - 0.2
	}
	
}


object abuelita {
	var peso = 50
	
	method peso(){
		return peso
	}

}


object cazador {
	var rifle = 12
	var peso = 55 + rifle
	
	
	method peso(){
		return peso
	}
}


/*Los chanchitos */

object chanchitoPaja{
	var peso = 10
	
	method peso(){
		return peso
	}
}

object chanchitoMadera{
	var peso = 20
	
	method peso(){
		return peso
	}
	
	
}

object chanchitoLadrillo{
	var peso = 30
	
	method peso(){
		return peso
	}
}

object casaPaja {
	var resistencia = 0
	
	method resistencia(){
		return resistencia
	}
	
	/* Al refugiarse chanchitos en la casa, aumenta su resistencia en base a los que estén dentro. */
	method refugiado(chanchitoRefugiado){
		resistencia += chanchitoRefugiado.peso()
	}
	
	
}

object casaMadera {
	var resistencia = 5
	
	method resistencia(){
		return resistencia
	}
	
	/* Al refugiarse chanchitos en la casa, aumenta su resistencia en base a los que estén dentro. */
	method refugiado(chanchitoRefugiado){
		resistencia += chanchitoRefugiado.peso()
	}
}


object casaLadrillo {
	var resistencia = 2*6
	
	method resistencia(){
		return resistencia
	}
	
	/* Al refugiarse chanchitos en la casa, aumenta su resistencia en base a los que estén dentro. */
	method refugiado(chanchitoRefugiado){
		resistencia += chanchitoRefugiado.peso()
	}
}





